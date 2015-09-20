.class Landroid/widget/Editor$OptionWrapper;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionWrapper"
.end annotation


# instance fields
.field private final kSelectionModeOffset:I

.field private mClipRectF:Landroid/graphics/RectF;

.field private mDismissTime:J

.field private mPopup:Lcom/meizu/widget/OptionPopupWindow;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVisibleBeforeTouch:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 4

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor$OptionWrapper;->mVisibleBeforeTouch:Z

    invoke-virtual {p1}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .local v0, "density":F
    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$OptionWrapper;->kSelectionModeOffset:I

    return-void
.end method

.method private update(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "target"    # Landroid/graphics/Rect;

    .prologue
    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/widget/Editor$OptionWrapper;->kSelectionModeOffset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v2}, Lcom/meizu/widget/OptionPopupWindow;->showOptions(Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public hide()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVisibleBeforeTouch()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor$OptionWrapper;->mVisibleBeforeTouch:Z

    return v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->mzGetPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    return-void
.end method

.method public onEditorTouchDown()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    iget-wide v4, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    iput-boolean v2, p0, Landroid/widget/Editor$OptionWrapper;->mVisibleBeforeTouch:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    sub-long v0, v4, v6

    .local v0, "diff":J
    const-wide/16 v4, 0x20

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Landroid/widget/Editor$OptionWrapper;->mVisibleBeforeTouch:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/Editor$OptionWrapper;->mDismissTime:J

    goto :goto_0
.end method

.method public show()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v2}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->mzGetPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v1}, Landroid/widget/Editor;->getActiveBound(Landroid/graphics/Rect;Z)V

    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/widget/Editor$OptionWrapper;->update(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "cb"    # Landroid/view/ActionMode$Callback;

    .prologue
    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-nez v1, :cond_0

    new-instance v1, Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/widget/OptionPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v1, p0}, Lcom/meizu/widget/OptionPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v1, v0, p1}, Lcom/meizu/widget/OptionPopupWindow;->startPopupActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1
.end method

.method public updatePosition(IIZZ)V
    .locals 3
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor;->getActiveBound(Landroid/graphics/Rect;Z)V

    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/widget/Editor$OptionWrapper;->update(Landroid/graphics/Rect;)Z

    return-void
.end method
