.class Landroid/support/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mTransition:Landroid/support/transition/Transition;

.field mValues:Landroid/support/transition/TransitionValues;

.field mView:Landroid/view/View;

.field mWindowId:Landroid/support/transition/WindowIdImpl;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/Transition;Landroid/support/transition/WindowIdImpl;Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transition"    # Landroid/support/transition/Transition;
    .param p4, "windowId"    # Landroid/support/transition/WindowIdImpl;
    .param p5, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 2055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2056
    iput-object p1, p0, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 2057
    iput-object p2, p0, Landroid/support/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 2058
    iput-object p5, p0, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    .line 2059
    iput-object p4, p0, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    .line 2060
    iput-object p3, p0, Landroid/support/transition/Transition$AnimationInfo;->mTransition:Landroid/support/transition/Transition;

    .line 2061
    return-void
.end method
