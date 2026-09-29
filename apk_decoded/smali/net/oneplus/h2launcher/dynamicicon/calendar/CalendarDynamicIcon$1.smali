.class Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon$1;
.super Ljava/lang/Object;
.source "CalendarDynamicIcon.java"

# interfaces
.implements Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->generateAnimationDrawable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;

    .prologue
    .line 89
    iput-object p1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "fromDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "endDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 97
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;

    invoke-static {v0, p1, p2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->access$000(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method public onAnimationDone(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "fromDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "endDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 92
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon$1;->this$0:Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;

    invoke-static {v0, p1, p2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->access$000(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method
