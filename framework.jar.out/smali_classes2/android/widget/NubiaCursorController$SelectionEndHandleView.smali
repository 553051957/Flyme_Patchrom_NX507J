.class Landroid/widget/NubiaCursorController$SelectionEndHandleView;
.super Landroid/widget/NubiaCursorController$NubiaHandleView;
.source "NubiaCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NubiaCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "editor"    # Landroid/widget/Editor;
    .param p3, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1197
    iput-object p1, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->this$0:Landroid/widget/NubiaCursorController;

    .line 1198
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/NubiaCursorController$NubiaHandleView;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1199
    return-void
.end method


# virtual methods
.method protected getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .param p1, "outLocation"    # [I

    .prologue
    .line 1208
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1209
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mContainerY:I

    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mLineHeight:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 1211
    return-void
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 1215
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1220
    iget-object v5, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1221
    .local v4, "markWidth":I
    iget-object v5, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1222
    .local v0, "dHeight":I
    iget-object v5, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v2, v5, 0x2

    .line 1223
    .local v2, "markLeft":I
    add-int v3, v2, v4

    .line 1224
    .local v3, "markRight":I
    iget v5, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mBottom:I

    int-to-float v5, v5

    int-to-float v6, v0

    iget v7, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mRatio:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 1225
    .local v1, "markBottom":I
    iget-object v5, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1226
    iget-object v5, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1228
    iget-object v5, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v3

    add-int v7, v1, v0

    invoke-virtual {v5, v3, v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1231
    iget-object v5, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1232
    return-void
.end method

.method protected updateContainerSize()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1236
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 1237
    .local v1, "lineheight":I
    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mLineHeight:I

    if-ne v2, v1, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1239
    :cond_0
    iput v1, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mLineHeight:I

    .line 1240
    int-to-float v2, v1

    iget v3, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mMarkHeightMatchHandleHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1241
    .local v0, "lineRatio":F
    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mMinHandleRatio:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mRatio:F

    .line 1242
    iget v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mRatio:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 1243
    iput v4, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mRatio:F

    .line 1244
    :cond_1
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mMarkHeightMatchHandleHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mRatio:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1246
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mMarkHeightMatchHandleHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mRatio:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1249
    iput v1, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mHandleTypeOffset:I

    .line 1250
    const v2, -0x41666666    # -0.3f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTouchOffsetY:F

    .line 1251
    const v2, 0x3f333333    # 0.7f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1256
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1258
    .local v0, "offset":I
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1259
    .local v1, "selectionStart":I
    if-gt v0, v1, :cond_0

    .line 1260
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1263
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 1264
    return-void
.end method

.method protected updatePositionXY(IZ)V
    .locals 11
    .param p1, "offset"    # I
    .param p2, "hasPositionChanged"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1273
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1274
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1275
    .local v1, "line":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mHotspotX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mPositionX:I

    .line 1276
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mPositionY:I

    .line 1277
    iget v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mPositionX:I

    iget-object v7, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mPositionX:I

    .line 1278
    iget v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mPositionY:I

    iget-object v7, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mPositionY:I

    .line 1279
    if-eqz p2, :cond_2

    .line 1280
    new-array v2, v10, [I

    .line 1281
    .local v2, "location":[I
    iget-object v4, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    .line 1282
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 1283
    .local v5, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 1284
    check-cast v4, Landroid/view/View;

    .line 1285
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_0

    .line 1287
    :cond_0
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1289
    new-array v3, v10, [I

    .line 1290
    .local v3, "locationViewParent":[I
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1292
    if-eqz v5, :cond_1

    .line 1293
    aget v6, v2, v8

    aget v7, v3, v8

    sub-int/2addr v6, v7

    aput v6, v2, v8

    .line 1294
    aget v6, v2, v9

    aget v7, v3, v9

    sub-int/2addr v6, v7

    aput v6, v2, v9

    .line 1297
    :cond_1
    aget v6, v2, v8

    iget v7, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mPositionX:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mContainerX:I

    .line 1298
    aget v6, v2, v9

    iget v7, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mPositionY:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mContainerY:I

    .line 1300
    .end local v2    # "location":[I
    .end local v3    # "locationViewParent":[I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewParent":Landroid/view/ViewParent;
    :cond_2
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1267
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/Editor;->setTextSelectionWrap(II)V

    .line 1268
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionEndHandleView;->updateDrawable()V

    .line 1269
    return-void
.end method