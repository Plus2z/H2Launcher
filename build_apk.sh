#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

# 确定 Java、Apktool 与签名工具
JAVA_BIN="$DIR/tools/jdk/bin/java"
APKTOOL_JAR="$DIR/tools/apktool.jar"
SIGNER_JAR="$DIR/tools/uber-apk-signer.jar"
FRAME_PATH="$DIR/tools/framework"

if [ ! -f "$JAVA_BIN" ]; then
    if command -v java >/dev/null 2>&1; then
        JAVA_BIN="java"
    else
        echo "错误: 未找到 Java 运行环境，请检查 tools/jdk 目录"
        exit 1
    fi
fi

# 计算目标版本号
TARGET_VER="$1"
if [ -z "$TARGET_VER" ]; then
    # 查找本地已有的最新版本
    LATEST_APK=$(ls -v H2Launcher_1.6.1-android16-preview-r*.apk 2>/dev/null | tail -n 1 || true)
    if [ -n "$LATEST_APK" ]; then
        # 提取当前版本号，如 r1.1 -> 1.1
        CUR_VER=$(echo "$LATEST_APK" | sed -n 's/.*-r\([0-9.]*\)\.apk/\1/p')
        if [ -n "$CUR_VER" ]; then
            # 自动递增 0.1
            NEXT_VER=$(python3 -c "import decimal; v = decimal.Decimal('$CUR_VER') + decimal.Decimal('0.1'); print(f'{v:.1f}' if v % 1 != 0 else f'{v:.1f}')")
            TARGET_VER="r${NEXT_VER}"
        else
            TARGET_VER="r1.1"
        fi
    else
        TARGET_VER="r1.0"
    fi
else
    # 如果用户指定了版本号，确保带 'r' 前缀（大小写保持一致）
    if [[ ! "$TARGET_VER" =~ ^[rR] ]]; then
        TARGET_VER="r${TARGET_VER}"
    fi
fi

OUTPUT_NAME="H2Launcher_1.6.1-android16-preview-${TARGET_VER}.apk"
TEMP_APK="H2Launcher_build_tmp.apk"

echo "=========================================================="
echo " 氢桌面 (H2Launcher) 自动化打包工具"
echo " 目标版本: ${TARGET_VER}"
echo " 输出文件名: ${OUTPUT_NAME}"
echo "=========================================================="

mkdir -p "$FRAME_PATH"

echo "➔ 正在使用 Apktool 编译 smali 与资源..."
"$JAVA_BIN" -jar "$APKTOOL_JAR" b apk_decoded -o "$TEMP_APK" --frame-path "$FRAME_PATH"

echo "➔ 正在进行 zipalign 对齐与 v1/v2/v3 签名..."
"$JAVA_BIN" -jar "$SIGNER_JAR" -a "$TEMP_APK" --allowResign -o ./

# 找到签名生成的文件并重命名
mv -f H2Launcher_build_tmp-aligned-debugSigned.apk "$OUTPUT_NAME"
if [ -f H2Launcher_build_tmp-aligned-debugSigned.apk.idsig ]; then
    mv -f H2Launcher_build_tmp-aligned-debugSigned.apk.idsig "${OUTPUT_NAME}.idsig"
fi
rm -f "$TEMP_APK"

echo "=========================================================="
echo "✓ 构建成功: ${OUTPUT_NAME}"
ls -lh "$OUTPUT_NAME"
echo "=========================================================="

# 检查是否有 ADB 设备连接，若有则提示是否安装
ADB_BIN="$DIR/platform-tools/adb"
if [ -f "$ADB_BIN" ]; then
    DEV_COUNT=$(HOME="$DIR" "$ADB_BIN" devices 2>/dev/null | grep -c "device$" || true)
    if [ "$DEV_COUNT" -gt 0 ]; then
        echo "检测到已连接的 ADB 设备，如需安装请执行："
        echo "  HOME=\"$DIR\" ./platform-tools/adb install -r -d \"$OUTPUT_NAME\""
    fi
fi
