.class public Lnubia/widget/NubiaMorePopup;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaMorePopup$MyAdapter;,
        Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;,
        Lnubia/widget/NubiaMorePopup$OnClickListener;
    }
.end annotation


# static fields
.field private static final ENTER_DELAY_TIME:J = 0xc8L

.field private static final ENTER_PART_DURATION_TIME:J = 0x96L

.field private static final ENTER_TOTAL_DURATION_TIME:J = 0xfaL

.field private static final EXIT_DELAY_TIME:J = 0x32L

.field private static final EXIT_PART_DURATION_TIME:J = 0x64L

.field private static final EXIT_TOTAL_DURATION_TIME:J = 0xc8L


# instance fields
.field private mAdapter:Lnubia/widget/NubiaMorePopup$MyAdapter;

.field private mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

.field private mBottomDivider:Landroid/view/View;

.field private mBottomImageView:Landroid/widget/ImageView;

.field private mBottomMarginView:Landroid/view/View;

.field private mBottomView:Landroid/widget/LinearLayout;

.field private mContainer:Lnubia/widget/MorePopupRelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownList:Landroid/widget/ListView;

.field private mEntryAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExitAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFastOutLinearIn:Landroid/animation/TimeInterpolator;

.field final mHandler:Landroid/os/Handler;

.field private mIsOnTop:Z

.field private mItemEnabled:[Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLastClickTime:J

.field private mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

.field private mMockStatusBarView:Landroid/view/View;

.field private mMoreImageView:Landroid/widget/ImageView;

.field private mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

.field private mParams:[I

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupPanel:Landroid/widget/LinearLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTopDivider:Landroid/view/View;

.field private mTopImageView:Landroid/widget/ImageView;

.field private mTopMarginView:Landroid/view/View;

.field private mTopView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lnubia/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0, v0}, Lnubia/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnubia/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v3, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    .line 64
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    .line 65
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lnubia/widget/NubiaMorePopup$1;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaMorePopup$1;-><init>(Lnubia/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lnubia/widget/NubiaMorePopup$2;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaMorePopup$2;-><init>(Lnubia/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    .line 92
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnubia/widget/NubiaMorePopup;->mLastClickTime:J

    .line 94
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    .line 95
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 97
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 98
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 99
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 100
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    .line 102
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    .line 104
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setNubiaMorePopup(Z)V

    .line 105
    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    .line 106
    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaMorePopup;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 35
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->startEntryAnimation()V

    return-void
.end method

.method static synthetic access$100(Lnubia/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 35
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lnubia/widget/NubiaMorePopup;)[Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 35
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    return-object v0
.end method

.method static synthetic access$300(Lnubia/widget/NubiaMorePopup;)Lnubia/widget/NubiaMorePopup$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 35
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lnubia/widget/NubiaMorePopup;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 35
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 382
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 383
    .local v0, "img":Landroid/widget/ImageView;
    const v1, 0x30200e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    const v1, 0x30200dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 385
    return-object v0
.end method

.method private createBottomView(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x3080039

    const/4 v10, 0x1

    const v9, 0x308003b

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 343
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 344
    .local v6, "textView":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 345
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 348
    .local v5, "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 349
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 356
    .local v0, "bottomPara":Landroid/widget/LinearLayout$LayoutParams;
    const v7, 0x3080067

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 358
    const v7, 0x308003d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 361
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 362
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 363
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 365
    :cond_0
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    new-instance v1, Landroid/widget/TextView;

    const/4 v7, 0x0

    const v8, 0x1010360

    invoke-direct {v1, p1, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 369
    .local v1, "more":Landroid/widget/TextView;
    const v7, 0x30c002b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 372
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 375
    .local v2, "morePara":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 376
    const v7, 0x3080069

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 378
    invoke-virtual {v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    return-void
.end method

.method private createContainer()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/widget/NubiaMorePopup;->createTopView(Landroid/content/Context;)V

    .line 209
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/widget/NubiaMorePopup;->createBottomView(Landroid/content/Context;)V

    .line 210
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->createListView()V

    .line 211
    return-void
.end method

.method private createContentView()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lnubia/widget/NubiaMorePopup;->getPopupWindowInfo(Landroid/view/View;I)Z

    move-result v1

    iput-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 172
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 173
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->initView()V

    .line 174
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->createContainer()V

    .line 175
    iget-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->createPopupWindow(Z)V

    .line 180
    :goto_0
    iget-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    .line 181
    .local v0, "gravity":I
    :goto_1
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v0}, Lnubia/widget/MorePopupRelativeLayout;->setGravity(I)V

    .line 182
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 183
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, p0}, Lnubia/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lnubia/widget/NubiaMorePopup;)V

    .line 184
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 185
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, p0}, Lnubia/widget/MorePopupRelativeLayout;->setNubiaMorePopup(Lnubia/widget/NubiaMorePopup;)V

    .line 186
    return-void

    .line 177
    .end local v0    # "gravity":I
    :cond_0
    iget-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    goto :goto_0

    .line 180
    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method private createListView()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Lnubia/widget/NubiaMorePopup$MyAdapter;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v1, v2}, Lnubia/widget/NubiaMorePopup$MyAdapter;-><init>(Lnubia/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mAdapter:Lnubia/widget/NubiaMorePopup$MyAdapter;

    .line 190
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mAdapter:Lnubia/widget/NubiaMorePopup$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    new-instance v1, Lnubia/widget/NubiaMorePopup$3;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaMorePopup$3;-><init>(Lnubia/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 205
    :cond_0
    return-void
.end method

.method private createPopupWindow(Z)V
    .locals 5
    .param p1, "onTop"    # Z

    .prologue
    const/4 v4, -0x1

    .line 240
    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    .line 241
    new-instance v1, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;-><init>(Lnubia/widget/NubiaMorePopup;Landroid/content/Context;)V

    .line 244
    .local v1, "container":Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 248
    .local v0, "backPara":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 265
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v3, v0}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v1, v3, v2}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 268
    return-void

    .line 254
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x308006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    .restart local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 260
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x308006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private createTopView(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x308003b

    const v6, 0x3080039

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 312
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 313
    .local v3, "textView":Landroid/widget/LinearLayout;
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 315
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->isPortrait()Z

    move-result v5

    if-nez v5, :cond_1

    .line 316
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 319
    .local v2, "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 326
    :goto_0
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 333
    .local v4, "topPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 334
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 337
    :cond_0
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    return-void

    .line 321
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "textPara":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "topPara":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x308006a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x3080003

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 324
    .restart local v2    # "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private delayAnimation()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method

.method private getInitHeight()I
    .locals 4

    .prologue
    .line 437
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 438
    const/4 v0, 0x0

    .line 447
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 441
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "height":I
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private getPopupWindowInfo(Landroid/view/View;I)Z
    .locals 13
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    const/4 v9, 0x1

    .line 389
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 390
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 391
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 392
    .local v1, "bottomEdge":I
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 394
    .local v8, "topEdge":I
    const/4 v10, 0x2

    new-array v0, v10, [I

    .line 395
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 396
    iget-object v10, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 398
    aget v10, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    sub-int v10, v1, v10

    sub-int v3, v10, p2

    .line 401
    .local v3, "distanceToBottom":I
    if-gez v3, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 403
    .local v6, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    .line 404
    .local v7, "scrollY":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, p2

    invoke-direct {v5, v6, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 406
    .local v5, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v5, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 407
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 410
    .end local v5    # "r":Landroid/graphics/Rect;
    .end local v6    # "scrollX":I
    .end local v7    # "scrollY":I
    :cond_0
    aget v10, v0, v9

    sub-int/2addr v10, v8

    add-int v4, v10, p2

    .line 411
    .local v4, "distanceToTop":I
    if-le v4, v3, :cond_1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private initItemsState([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    .line 648
    array-length v1, p1

    new-array v1, v1, [Z

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    .line 649
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 650
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 215
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x303000e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnubia/widget/MorePopupRelativeLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    .line 217
    const v1, 0x303000f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnubia/widget/MorePopupRelativeLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    .line 219
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d002d

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 221
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0030

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    .line 223
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0035

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    .line 225
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0032

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopMarginView:Landroid/view/View;

    .line 227
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0034

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomMarginView:Landroid/view/View;

    .line 229
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0033

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 231
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d002f

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    .line 233
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d0036

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    .line 235
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Lnubia/widget/MorePopupRelativeLayout;

    const v2, 0x30d002e

    invoke-virtual {v1, v2}, Lnubia/widget/MorePopupRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    .line 237
    return-void
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 420
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 421
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 424
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v5, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 426
    .local v1, "childMeasureWidth":I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 427
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 433
    .local v0, "childMeasureHeight":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 434
    return-void

    .line 430
    .end local v0    # "childMeasureHeight":I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childMeasureHeight":I
    goto :goto_0
.end method

.method private prepapreEnterAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 452
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    invoke-virtual {v0, v1}, Lnubia/widget/MorePopupRelativeLayout;->setAlpha(F)V

    .line 453
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 454
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 455
    return-void
.end method

.method private setViewBackgroundColor(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 303
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 307
    :cond_0
    return-void
.end method

.method private startEntryAnimation()V
    .locals 12

    .prologue
    .line 458
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 511
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->getInitHeight()I

    move-result v3

    .line 467
    .local v3, "height":I
    :goto_1
    iget-boolean v7, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v7, :cond_2

    .line 468
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    int-to-float v11, v3

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 470
    .local v6, "totalTranslate":Landroid/animation/Animator;
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 478
    .local v2, "contentTranslate":Landroid/animation/Animator;
    :goto_2
    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 479
    new-instance v7, Lnubia/widget/NubiaMorePopup$4;

    invoke-direct {v7, p0}, Lnubia/widget/NubiaMorePopup$4;-><init>(Lnubia/widget/NubiaMorePopup;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 485
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 486
    const-wide/16 v8, 0x96

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 488
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 490
    .local v0, "backgroudAlpha":Landroid/animation/Animator;
    const-wide/16 v8, 0x96

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 492
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 494
    .local v1, "contentAlpha":Landroid/animation/Animator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 495
    const-wide/16 v8, 0x96

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 497
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    const-string v8, "rotation"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_3

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 499
    .local v5, "iconRotate":Landroid/animation/Animator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 500
    const-wide/16 v8, 0x96

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 502
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_4

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 504
    .local v4, "iconAlpha":Landroid/animation/Animator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 505
    const-wide/16 v8, 0x96

    invoke-virtual {v4, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 507
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    const/4 v9, 0x3

    aput-object v1, v8, v9

    const/4 v9, 0x4

    aput-object v5, v8, v9

    const/4 v9, 0x5

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 509
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 510
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mEntryAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 462
    .end local v0    # "backgroudAlpha":Landroid/animation/Animator;
    .end local v1    # "contentAlpha":Landroid/animation/Animator;
    .end local v2    # "contentTranslate":Landroid/animation/Animator;
    .end local v3    # "height":I
    .end local v4    # "iconAlpha":Landroid/animation/Animator;
    .end local v5    # "iconRotate":Landroid/animation/Animator;
    .end local v6    # "totalTranslate":Landroid/animation/Animator;
    :cond_1
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    goto/16 :goto_1

    .line 473
    .restart local v3    # "height":I
    :cond_2
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    neg-int v11, v3

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 475
    .restart local v6    # "totalTranslate":Landroid/animation/Animator;
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_5

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "contentTranslate":Landroid/animation/Animator;
    goto/16 :goto_2

    .line 470
    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data

    .line 488
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 492
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 497
    :array_3
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 502
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 475
    :array_5
    .array-data 4
        -0x3e100000    # -30.0f
        0x0
    .end array-data
.end method

.method private updatePopupWindow(Z)V
    .locals 4
    .param p1, "onTop"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 271
    if-eqz p1, :cond_0

    .line 272
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopMarginView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    .line 279
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :goto_0
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 300
    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopMarginView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "flag":I
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 292
    :cond_1
    invoke-static {v0}, Lnubia/util/UiUtils;->isFullScreenWindow(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lnubia/util/UiUtils;->isImmersedStatusBar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->setViewBackgroundColor(Landroid/view/View;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 160
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 161
    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 162
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 110
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    .line 111
    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "isEnabled"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    aput-boolean p2, v0, p1

    .line 140
    return-void
.end method

.method public setItems(ILnubia/widget/NubiaMorePopup$OnClickListener;)V
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Lnubia/widget/NubiaMorePopup$OnClickListener;

    .prologue
    .line 135
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnubia/widget/NubiaMorePopup;->setItems([Ljava/lang/CharSequence;Lnubia/widget/NubiaMorePopup$OnClickListener;)V

    .line 136
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;Lnubia/widget/NubiaMorePopup$OnClickListener;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Lnubia/widget/NubiaMorePopup$OnClickListener;

    .prologue
    .line 129
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    .line 130
    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->initItemsState([Ljava/lang/CharSequence;)V

    .line 131
    iput-object p2, p0, Lnubia/widget/NubiaMorePopup;->mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

    .line 132
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-virtual {p0}, Lnubia/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->createContentView()V

    .line 152
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    iget-boolean v0, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    :goto_1
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 154
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->prepapreEnterAnim()V

    .line 155
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->delayAnimation()V

    goto :goto_0

    .line 152
    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method public startExitAnimation(Landroid/widget/PopupWindow;)V
    .locals 11
    .param p1, "popup"    # Landroid/widget/PopupWindow;

    .prologue
    .line 514
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 560
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-boolean v6, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v6, :cond_1

    .line 520
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v7, "translationY"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 522
    .local v5, "totalTranslate":Landroid/animation/Animator;
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v7, "translationY"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 530
    .local v2, "contentTranslate":Landroid/animation/Animator;
    :goto_1
    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 531
    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 532
    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 534
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Lnubia/widget/MorePopupRelativeLayout;

    const-string v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 536
    .local v0, "backgroudAlpha":Landroid/animation/Animator;
    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 538
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 540
    .local v1, "contentAlpha":Landroid/animation/Animator;
    const-wide/16 v6, 0x64

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 542
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    const-string v7, "rotation"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 544
    .local v4, "iconRotate":Landroid/animation/Animator;
    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 546
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    const-string v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 548
    .local v3, "iconAlpha":Landroid/animation/Animator;
    const-wide/16 v6, 0x64

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 550
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const/4 v8, 0x4

    aput-object v4, v7, v8

    const/4 v8, 0x5

    aput-object v3, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 552
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 553
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lnubia/widget/NubiaMorePopup$5;

    invoke-direct {v7, p0, p1}, Lnubia/widget/NubiaMorePopup$5;-><init>(Lnubia/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 559
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 525
    .end local v0    # "backgroudAlpha":Landroid/animation/Animator;
    .end local v1    # "contentAlpha":Landroid/animation/Animator;
    .end local v2    # "contentTranslate":Landroid/animation/Animator;
    .end local v3    # "iconAlpha":Landroid/animation/Animator;
    .end local v4    # "iconRotate":Landroid/animation/Animator;
    .end local v5    # "totalTranslate":Landroid/animation/Animator;
    :cond_1
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v7, "translationY"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 527
    .restart local v5    # "totalTranslate":Landroid/animation/Animator;
    iget-object v6, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v7, "translationY"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "contentTranslate":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 522
    nop

    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
    .end array-data

    .line 534
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 538
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 542
    :array_3
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    .line 546
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 527
    :array_5
    .array-data 4
        0x0
        -0x3e100000    # -30.0f
    .end array-data
.end method
