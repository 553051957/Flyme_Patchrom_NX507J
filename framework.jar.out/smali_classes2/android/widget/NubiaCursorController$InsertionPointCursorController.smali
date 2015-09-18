.class public Landroid/widget/NubiaCursorController$InsertionPointCursorController;
.super Landroid/widget/NubiaCursorController;
.source "NubiaCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

.field private mCoords:[I

.field private final mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

.field private mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

.field private mPreviousDownTime:J

.field mShowOnOneShot:Z

.field private mTextOffset:I


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 3
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 646
    invoke-direct {p0, p1, p2}, Landroid/widget/NubiaCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    .line 637
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    .line 641
    iput-boolean v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 647
    const v1, 0x3030025

    invoke-virtual {p0, v1}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->createFloatPanelViewController(I)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    .line 648
    const v1, 0x3030024

    invoke-virtual {p0, v1}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->createFloatPanelViewController(I)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    .line 649
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p0, v1, v2, p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/NubiaCursorController;)Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 651
    new-instance v0, Landroid/widget/NubiaCursorController$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController$1;-><init>(Landroid/widget/NubiaCursorController$InsertionPointCursorController;)V

    .line 659
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d0050

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 661
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d0052

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 663
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d0054

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 665
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d0056

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 667
    return-void
.end method

.method static synthetic access$300(Landroid/widget/NubiaCursorController$InsertionPointCursorController;)Landroid/widget/NubiaCursorController$FloatPanelViewController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NubiaCursorController$InsertionPointCursorController;

    .prologue
    .line 635
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    return-object v0
.end method

.method private showInsertionPanel()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 671
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->invisible()V

    .line 672
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v0

    iget v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController;->setMinMaxOffset(I)V

    .line 673
    return-void
.end method


# virtual methods
.method public computePanelPosition([I)V
    .locals 1
    .param p1, "outPositon"    # [I

    .prologue
    .line 681
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0, p1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 682
    return-void
.end method

.method public computePanelPositionOnBottom()I
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 687
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public computePanelPositionOnEndTop()I
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 697
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public computePanelXPosition()I
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 692
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getClipboardPanel()Landroid/widget/NubiaCursorController$FloatPanelViewController;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 702
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 703
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    .line 704
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 807
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 808
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 810
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onDetached()V

    .line 811
    :cond_0
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/NubiaCursorController$NubiaHandleView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "handleView"    # Landroid/widget/NubiaCursorController$NubiaHandleView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 713
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 735
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 715
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    goto :goto_0

    .line 718
    :pswitch_1
    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 719
    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 720
    :cond_1
    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onHandleMoved()V

    goto :goto_0

    .line 723
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPreviousDownTime:J

    sub-long v0, v2, v4

    .line 724
    .local v0, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 726
    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 728
    :cond_2
    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->needInsertPanel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    invoke-direct {p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->showInsertionPanel()V

    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 748
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 741
    :pswitch_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->hide()V

    goto :goto_0

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 752
    const/4 v9, 0x4

    new-array v0, v9, [I

    fill-array-data v0, :array_0

    .line 755
    .local v0, "btnIds":[I
    const/4 v9, 0x3

    new-array v4, v9, [I

    fill-array-data v4, :array_1

    .line 757
    .local v4, "splitIds":[I
    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9, v0}, Landroid/widget/Editor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v6

    .line 758
    .local v6, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v9, v0, v4, v6}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 759
    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v9}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 760
    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v9}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 761
    const/4 v3, 0x1

    .line 762
    .local v3, "isShowing":Z
    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 763
    .local v5, "start":I
    iget v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    if-eq v5, v9, :cond_0

    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-gtz v9, :cond_2

    :cond_0
    move v1, v8

    .line 765
    .local v1, "isShowHandle":Z
    :goto_0
    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->getMagnifierController()Lnubia/widget/TextMagnifierController;

    move-result-object v9

    invoke-virtual {v9}, Lnubia/widget/TextMagnifierController;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_3

    move v2, v8

    .line 767
    .local v2, "isShowMagnifier":Z
    :goto_1
    iput v5, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 768
    iget-object v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v7}, Landroid/widget/NubiaCursorController$NubiaHandleView;->show()V

    .line 769
    if-eqz v1, :cond_1

    .line 770
    if-nez v2, :cond_1

    .line 771
    iget-object v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->needInsertPanel()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v7, :cond_4

    .line 772
    invoke-direct {p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->showInsertionPanel()V

    .line 776
    :goto_2
    iget-boolean v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    if-eqz v7, :cond_1

    .line 777
    const/4 v3, 0x0

    .line 780
    :cond_1
    iput-boolean v3, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mShowOnOneShot:Z

    .line 781
    return-void

    .end local v1    # "isShowHandle":Z
    .end local v2    # "isShowMagnifier":Z
    :cond_2
    move v1, v7

    .line 763
    goto :goto_0

    .restart local v1    # "isShowHandle":Z
    :cond_3
    move v2, v7

    .line 765
    goto :goto_1

    .line 774
    .restart local v2    # "isShowMagnifier":Z
    :cond_4
    iget-object v7, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v7}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    goto :goto_2

    .line 752
    :array_0
    .array-data 4
        0x30d0050
        0x30d0052
        0x30d0054
        0x30d0056
    .end array-data

    .line 755
    :array_1
    .array-data 4
        0x30d0051
        0x30d0053
        0x30d0055
    .end array-data
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    .line 786
    iget v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    if-gez v0, :cond_0

    .line 787
    const-string v0, "NubiaCursorController"

    const-string v1, "Update cursor controller position called with no cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->hide()V

    .line 803
    :goto_0
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 794
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 797
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 799
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 801
    :cond_2
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mHandleView:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget v1, p0, Landroid/widget/NubiaCursorController$InsertionPointCursorController;->mTextOffset:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method