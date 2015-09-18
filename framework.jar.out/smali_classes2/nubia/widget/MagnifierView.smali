.class Lnubia/widget/MagnifierView;
.super Landroid/view/View;
.source "MagnifierView.java"


# static fields
.field static final PADDING_LEFT:I = 0xb

.field static final PADDING_TOP:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mClipPath:Landroid/graphics/Path;

.field private mDstRect:Landroid/graphics/Rect;

.field private mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

.field private mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mX:I

.field private mY:I

.field private sHeight:I

.field private sRadius:I

.field private sScale:F

.field private sWidth:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lnubia/widget/MagnifierView;->sScale:F

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/widget/MagnifierView;->initDrawable(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lnubia/widget/MagnifierView;->initRect()V

    .line 41
    iput-object p1, p0, Lnubia/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    .line 42
    return-void
.end method

.method private drawSnapshot(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 80
    .local v0, "saveCount":I
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 81
    iget v1, p0, Lnubia/widget/MagnifierView;->sScale:F

    iget v2, p0, Lnubia/widget/MagnifierView;->sScale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 82
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    invoke-direct {p0}, Lnubia/widget/MagnifierView;->getSnapView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 86
    .end local v0    # "saveCount":I
    :cond_0
    return-void
.end method

.method private getSnapView()Landroid/view/View;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    .line 110
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 111
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 112
    check-cast v0, Landroid/view/View;

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_0
    return-object v0
.end method

.method private initDrawable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "resource":Landroid/content/res/Resources;
    const v1, 0x30200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    const v1, 0x30200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lnubia/widget/MagnifierView;->sHeight:I

    .line 51
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lnubia/widget/MagnifierView;->sWidth:I

    .line 52
    return-void
.end method

.method private initRect()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lnubia/widget/MagnifierView;->sWidth:I

    iget v2, p0, Lnubia/widget/MagnifierView;->sHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    .line 58
    iget v0, p0, Lnubia/widget/MagnifierView;->sWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xb

    iput v0, p0, Lnubia/widget/MagnifierView;->sRadius:I

    .line 59
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    iget v1, p0, Lnubia/widget/MagnifierView;->sRadius:I

    add-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    iget v2, p0, Lnubia/widget/MagnifierView;->sRadius:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lnubia/widget/MagnifierView;->sRadius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 70
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 71
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-direct {p0, p1}, Lnubia/widget/MagnifierView;->drawSnapshot(Landroid/graphics/Canvas;)V

    .line 73
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 74
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 65
    iget v0, p0, Lnubia/widget/MagnifierView;->sWidth:I

    iget v1, p0, Lnubia/widget/MagnifierView;->sHeight:I

    invoke-virtual {p0, v0, v1}, Lnubia/widget/MagnifierView;->setMeasuredDimension(II)V

    .line 66
    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 89
    iput p1, p0, Lnubia/widget/MagnifierView;->mX:I

    .line 90
    iput p2, p0, Lnubia/widget/MagnifierView;->mY:I

    .line 91
    iget v0, p0, Lnubia/widget/MagnifierView;->mX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnubia/widget/MagnifierView;->setX(F)V

    .line 92
    iget v0, p0, Lnubia/widget/MagnifierView;->mY:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnubia/widget/MagnifierView;->setY(F)V

    .line 93
    invoke-virtual {p0}, Lnubia/widget/MagnifierView;->invalidate()V

    .line 94
    return-void
.end method

.method public setShowRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 105
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 106
    return-void
.end method

.method public viewHeight()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lnubia/widget/MagnifierView;->sHeight:I

    return v0
.end method

.method public viewWidth()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lnubia/widget/MagnifierView;->sWidth:I

    return v0
.end method
