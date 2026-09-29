.class public Lnet/oneplus/h2launcher/quickpage/NotePanel;
.super Lnet/oneplus/h2launcher/quickpage/QuickPageItem;
.source "NotePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/NotePanel$NoteClickListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mClickListener:Lnet/oneplus/h2launcher/quickpage/NotePanel$NoteClickListener;

.field private mContentScrolls:Z

.field private mContext:Landroid/content/Context;

.field private mDatePickerDialog:Landroid/app/Dialog;

.field private mDialog:Landroid/app/Dialog;

.field private final mDoneButton:Landroid/widget/Button;

.field private final mEditText:Landroid/widget/EditText;

.field private mHasAddedReminder:Z

.field private mHasCalendarPermission:Z

.field private mMaxHeight:I

.field private mNoteContainer:Landroid/widget/RelativeLayout;

.field private mNoteField:Landroid/widget/TextView;

.field private mNoteFieldContainer:Landroid/widget/ScrollView;

.field private mNoteText:Ljava/lang/String;

.field private mOriginalHeight:I

.field private mParentView:Landroid/widget/RelativeLayout;

.field private mReminderButton:Landroid/widget/TextView;

.field private final mReminderButtonInputField:Landroid/widget/Button;

.field private mReminderIcon:Landroid/widget/TextView;

.field private mReminderId:J

.field private mReminderTime:J

.field private mSize:I

.field private mTimePickerDialog:Landroid/app/Dialog;

.field private mTimeStamp:Landroid/widget/TextView;

.field private mWaitingForPermission:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJJIIZ)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "note"    # Ljava/lang/String;
    .param p3, "reminderTime"    # J
    .param p5, "reminderId"    # J
    .param p7, "modified"    # J
    .param p9, "size"    # I
    .param p10, "id"    # I
    .param p11, "fromDb"    # Z

    .prologue
    .line 92
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;-><init>()V

    .line 54
    const-class v5, Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->LOG_TAG:Ljava/lang/String;

    .line 83
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderId:J

    .line 93
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    .line 94
    move/from16 v0, p10

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mId:I

    .line 95
    move/from16 v0, p9

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mSize:I

    .line 96
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderId:J

    .line 98
    if-eqz p2, :cond_2

    .line 99
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteText:Ljava/lang/String;

    .line 100
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-lez v5, :cond_1

    .line 101
    iput-wide p3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderTime:J

    .line 102
    const/4 v5, 0x1

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mHasAddedReminder:Z

    .line 112
    :goto_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    const v6, 0x7f04007a

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mParentView:Landroid/widget/RelativeLayout;

    .line 114
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mParentView:Landroid/widget/RelativeLayout;

    const v6, 0x7f110165

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteContainer:Landroid/widget/RelativeLayout;

    .line 116
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteContainer:Landroid/widget/RelativeLayout;

    const v6, 0x7f110166

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimeStamp:Landroid/widget/TextView;

    .line 117
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimeStamp:Landroid/widget/TextView;

    move-wide/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteContainer:Landroid/widget/RelativeLayout;

    const v6, 0x7f110163

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderButton:Landroid/widget/TextView;

    .line 120
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderButton:Landroid/widget/TextView;

    new-instance v6, Lnet/oneplus/h2launcher/quickpage/NotePanel$1;

    invoke-direct {v6, p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$1;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteContainer:Landroid/widget/RelativeLayout;

    const v6, 0x7f110167

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderIcon:Landroid/widget/TextView;

    .line 138
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteContainer:Landroid/widget/RelativeLayout;

    const v6, 0x7f110168

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteFieldContainer:Landroid/widget/ScrollView;

    .line 139
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteFieldContainer:Landroid/widget/ScrollView;

    const v6, 0x7f110169

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteField:Landroid/widget/TextView;

    .line 140
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteField:Landroid/widget/TextView;

    const v6, 0x7f0b0086

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(I)V

    .line 142
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    const v6, 0x7f040079

    const/4 v7, 0x0

    .line 143
    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 144
    .local v3, "mInputFieldLayout":Landroid/widget/LinearLayout;
    const v5, 0x7f110163

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderButtonInputField:Landroid/widget/Button;

    .line 145
    const v5, 0x7f110162

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mEditText:Landroid/widget/EditText;

    .line 146
    const v5, 0x7f110164

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDoneButton:Landroid/widget/Button;

    .line 147
    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    const v7, 0x7f0a02a4

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDialog:Landroid/app/Dialog;

    .line 148
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDialog:Landroid/app/Dialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 149
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDialog:Landroid/app/Dialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 150
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 151
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDialog:Landroid/app/Dialog;

    new-instance v6, Lnet/oneplus/h2launcher/quickpage/NotePanel$2;

    invoke-direct {v6, p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$2;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 164
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    check-cast v4, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 166
    .local v4, "mQuickPage":Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    invoke-direct {v2, p0, v4}, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V

    .line 248
    .local v2, "clickListener":Landroid/view/View$OnClickListener;
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteField:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimeStamp:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderButton:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderIcon:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 255
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteField:Landroid/widget/TextView;

    const/4 v6, 0x2

    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 255
    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 257
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteField:Landroid/widget/TextView;

    const/4 v6, 0x0

    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00cd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 259
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteField:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteField:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteContainer:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimeStamp:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderButton:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :cond_0
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteField:Landroid/widget/TextView;

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00ff

    .line 268
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mMaxHeight:I

    .line 269
    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mSize:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContentScrolls:Z

    .line 271
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->updateReminderVisibility()V

    .line 272
    return-void

    .line 104
    .end local v2    # "clickListener":Landroid/view/View$OnClickListener;
    .end local v3    # "mInputFieldLayout":Landroid/widget/LinearLayout;
    .end local v4    # "mQuickPage":Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    :cond_1
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderTime:J

    .line 105
    const/4 v5, 0x0

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mHasAddedReminder:Z

    goto/16 :goto_0

    .line 108
    :cond_2
    const-string v5, ""

    iput-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteText:Ljava/lang/String;

    .line 109
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderTime:J

    goto/16 :goto_0

    .line 269
    .restart local v2    # "clickListener":Landroid/view/View$OnClickListener;
    .restart local v3    # "mInputFieldLayout":Landroid/widget/LinearLayout;
    .restart local v4    # "mQuickPage":Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mHasCalendarPermission:Z

    return v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mHasCalendarPermission:Z

    return p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderButtonInputField:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J
    .locals 2
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lnet/oneplus/h2launcher/quickpage/NotePanel;J)J
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/quickpage/NotePanel;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$1502(Lnet/oneplus/h2launcher/quickpage/NotePanel;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mSize:I

    return p1
.end method

.method static synthetic access$1602(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContentScrolls:Z

    return p1
.end method

.method static synthetic access$1700(Lnet/oneplus/h2launcher/quickpage/NotePanel;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mOriginalHeight:I

    return v0
.end method

.method static synthetic access$1702(Lnet/oneplus/h2launcher/quickpage/NotePanel;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mOriginalHeight:I

    return p1
.end method

.method static synthetic access$1800(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteFieldContainer:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1900(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimePickerDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1902(Lnet/oneplus/h2launcher/quickpage/NotePanel;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 52
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimePickerDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->showDateSelectionDialog(Z)V

    return-void
.end method

.method static synthetic access$2000(Lnet/oneplus/h2launcher/quickpage/NotePanel;Ljava/util/Calendar;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # Ljava/util/Calendar;
    .param p2, "x2"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->addReminder(Ljava/util/Calendar;Z)V

    return-void
.end method

.method static synthetic access$302(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mWaitingForPermission:Z

    return p1
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mHasAddedReminder:Z

    return v0
.end method

.method static synthetic access$502(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mHasAddedReminder:Z

    return p1
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J
    .locals 2
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderId:J

    return-wide v0
.end method

.method static synthetic access$602(Lnet/oneplus/h2launcher/quickpage/NotePanel;J)J
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderId:J

    return-wide p1
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/quickpage/NotePanel;J)V
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;
    .param p1, "x1"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->cancelReminder(J)V

    return-void
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteField:Landroid/widget/TextView;

    return-object v0
.end method

.method private addReminder(Ljava/util/Calendar;Z)V
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "isNewMemo"    # Z

    .prologue
    .line 545
    if-eqz p2, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderTime:J

    .line 549
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v1

    new-instance v2, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    invoke-direct {v2, p0, p1, v0, p2}, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;Ljava/util/Calendar;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 654
    return-void

    .line 545
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteText:Ljava/lang/String;

    goto :goto_0
.end method

.method private cancelReminder(J)V
    .locals 3
    .param p1, "eventId"    # J

    .prologue
    .line 657
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;

    invoke-direct {v1, p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;J)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 675
    return-void
.end method

.method private getFormattedTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 485
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showDateSelectionDialog(Z)V
    .locals 14
    .param p1, "isNewMemo"    # Z

    .prologue
    .line 490
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 491
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 492
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 494
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 495
    .local v2, "c":Ljava/util/Calendar;
    new-instance v6, Lnet/oneplus/h2launcher/quickpage/NotePanel$6;

    invoke-direct {v6, p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$6;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;)V

    .line 501
    .local v6, "listener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v5, Lnet/oneplus/h2launcher/quickpage/NotePanel$7;

    invoke-direct {v5, p0, v4}, Lnet/oneplus/h2launcher/quickpage/NotePanel$7;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;Landroid/view/inputmethod/InputMethodManager;)V

    .line 508
    .local v5, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v7, Landroid/app/DatePickerDialog;

    iget-object v8, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    const v9, 0x7f0a02a5

    new-instance v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;Ljava/util/Calendar;ZLandroid/view/inputmethod/InputMethodManager;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v1, 0x1

    .line 538
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object v10, v0

    invoke-direct/range {v7 .. v13}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v7, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDatePickerDialog:Landroid/app/Dialog;

    .line 539
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDatePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 540
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDatePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 541
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDatePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 542
    return-void
.end method

.method private verifyItemSize()V
    .locals 3

    .prologue
    .line 426
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 427
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$4;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 448
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mId:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mOriginalHeight:I

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getParent()Landroid/view/View;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mParentView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method getReminderId()J
    .locals 2

    .prologue
    .line 682
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderId:J

    return-wide v0
.end method

.method getReminderTime()J
    .locals 2

    .prologue
    .line 678
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderTime:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mSize:I

    return v0
.end method

.method public getStandardHeight(I)I
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 339
    return p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x4

    return v0
.end method

.method public hasScrollableContent()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContentScrolls:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onContainerVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 378
    return-void
.end method

.method public onItemResizeFinished()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mSize:I

    .line 366
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->verifyItemSize()V

    .line 367
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->notifyItemSizeChanged()V

    .line 368
    return-void
.end method

.method public onItemResizeProgress(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 360
    return-void
.end method

.method public onItemViewAttached()V
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 345
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 346
    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 347
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 348
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 353
    :goto_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->verifyItemSize()V

    .line 355
    :cond_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method public onNewIntent()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mWaitingForPermission:Z

    .line 404
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDatePickerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDatePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDatePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 407
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimePickerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 410
    :cond_2
    return-void
.end method

.method public onPermissionsChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mHasCalendarPermission:Z

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_CALENDAR"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mWaitingForPermission:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->showDateSelectionDialog(Z)V

    .line 386
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mWaitingForPermission:Z

    .line 388
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 385
    goto :goto_0
.end method

.method public onRemove()V
    .locals 5

    .prologue
    .line 392
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->LOG_TAG:Ljava/lang/String;

    const-string v1, "NotePanel removed, content:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteText:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mHasAddedReminder:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 394
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderId:J

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->cancelReminder(J)V

    .line 396
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 414
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 415
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDatePickerDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mDatePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 419
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimePickerDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mTimePickerDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 423
    :cond_1
    return-void
.end method

.method public onUiComponentChanged()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method updateReminderVisibility()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 451
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mHasAddedReminder:Z

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderIcon:Landroid/widget/TextView;

    new-instance v3, Lnet/oneplus/h2launcher/quickpage/NotePanel$5;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$5;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 471
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderTime:J

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/high16 v6, 0x80000

    .line 471
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 474
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, "time":Ljava/lang/String;
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    .end local v7    # "time":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderButton:Landroid/widget/TextView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mNoteText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mReminderIcon:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
