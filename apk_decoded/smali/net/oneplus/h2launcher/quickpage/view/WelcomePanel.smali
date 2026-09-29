.class public Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;
.super Landroid/widget/RelativeLayout;
.source "WelcomePanel.java"

# interfaces
.implements Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final loadingDurationMax:I = 0x7530

.field private static final loadingDurationMin:I = 0x320


# instance fields
.field private mClearLoadingRunnable:Ljava/lang/Runnable;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHasWeatherData:Z

.field private mIsLoading:Z

.field private mLoadingHandler:Landroid/os/Handler;

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mWeatherContainer:Landroid/view/ViewGroup;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherInfoView:Landroid/view/ViewGroup;

.field private mWeatherLocation:Landroid/widget/TextView;

.field private mWeatherStat:Landroid/widget/TextView;

.field private mWeatherTemp:Landroid/widget/TextView;

.field private mWelcomeTitle:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 36
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 36
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mHasWeatherData:Z

    return p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 36
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->hasWeatherLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 36
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->getCurrentWeather()V

    return-void
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->animateLoading(Z)V

    return-void
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 36
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->renewLoadingIfNeed()V

    return-void
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 36
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 36
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherStat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 36
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherTemp:Landroid/widget/TextView;

    return-object v0
.end method

.method private animateLoading(Z)V
    .locals 7
    .param p1, "isNetworkConnected"    # Z

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 257
    if-nez p1, :cond_2

    .line 258
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->hasWeatherLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 264
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherIcon:Landroid/widget/ImageView;

    const v2, 0x7f020120

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherStat:Landroid/widget/TextView;

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 266
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherLocation:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherTemp:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 276
    .local v0, "rotate":Landroid/view/animation/RotateAnimation;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    .line 276
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 278
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 279
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 280
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$7;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$7;-><init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 297
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 305
    :goto_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200d8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherStat:Landroid/widget/TextView;

    const v2, 0x7f0b00c5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherLocation:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherTemp:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 302
    :cond_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mLoadingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mClearLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private getCurrentWeather()V
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->isWeatherEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->isNetworkConnected()Z

    move-result v1

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->animateLoading(Z)V

    .line 200
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    .line 201
    .local v0, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWeatherProvider()Lnet/oneplus/h2launcher/WeatherProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/WeatherProvider;->getCurrentWeatherInformation(Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V

    .line 205
    .end local v0    # "launcher":Lnet/oneplus/h2launcher/Launcher;
    :cond_0
    return-void
.end method

.method private hasWeatherLoaded()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mHasWeatherData:Z

    return v0
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    .line 243
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 244
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 248
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWeatherEnabled()Z
    .locals 3

    .prologue
    .line 236
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 237
    .local v0, "context":Landroid/content/Context;
    const-string v2, "net.oneplus.weather"

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 239
    .local v1, "isWeatherInstalled":Z
    if-eqz v1, :cond_0

    invoke-static {v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isWeatherEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private renewLoadingIfNeed()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->getCurrentWeather()V

    .line 316
    :cond_0
    return-void
.end method


# virtual methods
.method public configurePanel(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Z)V
    .locals 2
    .param p1, "parent"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    .param p2, "weatherEnabled"    # Z

    .prologue
    .line 133
    if-eqz p2, :cond_0

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->toggleWeatherUpdate(Z)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->getWeatherContainer()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$4;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$4;-><init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->getWeatherContainer()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$5;

    invoke-direct {v1, p0, p2, p1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$5;-><init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;ZLnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$6;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$6;-><init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    return-void
.end method

.method public getWeatherContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getWelcomeTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWelcomeTitle:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    return-object v0
.end method

.method public launchWeatherAp(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->isWeatherEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    :goto_0
    return v2

    .line 212
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "net.oneplus.weather"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 216
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "net.oneplus.weather"

    const-string v4, "net.oneplus.weather.app.MainActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v1, "weatherComponentName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 222
    .end local v1    # "weatherComponentName":Landroid/content/ComponentName;
    :cond_1
    invoke-static {p1, v0, v2}, Lnet/oneplus/h2launcher/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 224
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 74
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mContext:Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mHasWeatherData:Z

    .line 77
    const v0, 0x7f1101f2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherContainer:Landroid/view/ViewGroup;

    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherContainer:Landroid/view/ViewGroup;

    const v1, 0x7f1101f5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherIcon:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherContainer:Landroid/view/ViewGroup;

    const v1, 0x7f1101f3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWelcomeTitle:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    .line 80
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherContainer:Landroid/view/ViewGroup;

    const v1, 0x7f1101f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherTemp:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherContainer:Landroid/view/ViewGroup;

    const v1, 0x7f1101f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherStat:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherContainer:Landroid/view/ViewGroup;

    const v1, 0x7f1101f8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherLocation:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherContainer:Landroid/view/ViewGroup;

    const v1, 0x7f1101f4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherInfoView:Landroid/view/ViewGroup;

    .line 85
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 87
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWelcomeTitle:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->getWelcomeTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$2;-><init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mLoadingHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$3;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$3;-><init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mClearLoadingRunnable:Ljava/lang/Runnable;

    .line 130
    return-void
.end method

.method public onWeatherUpdated(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .locals 4
    .param p1, "data"    # Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 323
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mLoadingHandler:Landroid/os/Handler;

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;

    invoke-direct {v1, p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;-><init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void
.end method

.method public toggleWeatherUpdate(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 169
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v1

    .line 170
    .local v1, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-nez v1, :cond_0

    .line 171
    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->TAG:Ljava/lang/String;

    const-string v3, "cannot get Launcher instance, is it destroyed?"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 175
    :cond_0
    if-eqz p1, :cond_1

    .line 176
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherInfoView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 177
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->isNetworkConnected()Z

    move-result v2

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->animateLoading(Z)V

    .line 178
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWeatherProvider()Lnet/oneplus/h2launcher/WeatherProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lnet/oneplus/h2launcher/WeatherProvider;->subscribeCallback(Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V

    .line 179
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 182
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWeatherInfoView:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWeatherProvider()Lnet/oneplus/h2launcher/WeatherProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lnet/oneplus/h2launcher/WeatherProvider;->unsubscribeCallback(Lnet/oneplus/h2launcher/WeatherProvider$IWeatherCallback;)V

    .line 185
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->TAG:Ljava/lang/String;

    const-string v3, "the network receiver had not yet been registered."

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateTitleTextSize()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->mWelcomeTitle:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->updateTextSize()V

    .line 194
    return-void
.end method
