.class public abstract Lnubia/fancydrawable/FancyDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "FancyDrawable.java"

# interfaces
.implements Lnubia/fancydrawable/FancyDrawableListener;


# instance fields
.field protected mAvailableHeight:I

.field protected mAvailableWidth:I

.field protected mHandler:Landroid/os/Handler;

.field protected mID:Ljava/lang/String;

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 12
    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 13
    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/Canvas;

    .prologue
    .line 23
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 33
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 65
    sub-int v0, p3, p1

    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 66
    sub-int v0, p4, p2

    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 67
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 38
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 49
    iput-object p1, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-virtual {p0}, Lnubia/fancydrawable/FancyDrawable;->startToRun()V

    .line 51
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 45
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    .line 46
    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 78
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicWidth:I

    .line 79
    iput p2, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicHeight:I

    .line 80
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 41
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    .line 42
    return-void
.end method

.method public startToRun()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "nubia.fancydrawable.FancyDrawable"

    return-object v0
.end method
