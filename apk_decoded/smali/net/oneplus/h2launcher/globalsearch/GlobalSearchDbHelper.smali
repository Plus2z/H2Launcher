.class public Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GlobalSearchDbHelper.java"


# static fields
.field public static final APP_TABLE_NAME:Ljava/lang/String; = "global_search_apps"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field public static final CONTACT_TABLE_NAME:Ljava/lang/String; = "global_search_contacts"

.field private static final DATABASE_NAME:Ljava/lang/String; = "search_history.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final HISTORY_TIME:Ljava/lang/String; = "history_time"

.field public static final LAUNCH_COUNT:Ljava/lang/String; = "launch_count"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PHOTO_THUMBNAIL_URI:Ljava/lang/String; = "photo_thumbnail_uri"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v0, "search_history.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 27
    const-string v0, "CREATE TABLE global_search_apps (_id INTEGER PRIMARY KEY AUTOINCREMENT, component_name CHAR, package_name CHAR, launch_count INTEGER, history_time INTEGER);"

    .line 28
    .local v0, "APP_TABLE":Ljava/lang/String;
    const-string v1, "CREATE TABLE global_search_contacts (_id INTEGER, display_name CHAR, photo_thumbnail_uri CHAR, launch_count INTEGER, history_time INTEGER);"

    .line 29
    .local v1, "CONTACT_TABLE":Ljava/lang/String;
    const-string v2, "CREATE TABLE global_search_apps (_id INTEGER PRIMARY KEY AUTOINCREMENT, component_name CHAR, package_name CHAR, launch_count INTEGER, history_time INTEGER);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    const-string v2, "CREATE TABLE global_search_contacts (_id INTEGER, display_name CHAR, photo_thumbnail_uri CHAR, launch_count INTEGER, history_time INTEGER);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 35
    const-string v0, "DROP TABLE IF EXISTS global_search_apps"

    .line 36
    .local v0, "DROP_APP_TABLE":Ljava/lang/String;
    const-string v1, "DROP TABLE IF EXISTS global_search_contacts"

    .line 37
    .local v1, "DROP_CONTACT_TABLE":Ljava/lang/String;
    const-string v2, "DROP TABLE IF EXISTS global_search_apps"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string v2, "DROP TABLE IF EXISTS global_search_contacts"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    return-void
.end method
