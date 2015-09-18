.class public Lnubia/widget/NubiaDialog;
.super Ljava/lang/Object;
.source "NubiaDialog.java"

# interfaces
.implements Lnubia/widget/IDialog;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDecorViewTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lnubia/widget/NubiaDialog;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3080047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnubia/widget/NubiaDialog;->mDecorViewTopPadding:I

    .line 22
    return-void
.end method


# virtual methods
.method public createDialogEnterAnimation(Lcom/android/internal/app/AlertController;)V
    .locals 1
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->createNubiaAnimation(I)V

    .line 58
    return-void
.end method

.method public createDialogExitAnimation(Lcom/android/internal/app/AlertController;)V
    .locals 1
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->createNubiaAnimation(I)V

    .line 78
    return-void
.end method

.method public getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "styleId"    # I
    .param p3, "defaultId"    # I

    .prologue
    .line 67
    const v0, 0x3020139

    return v0
.end method

.method public isResetDialogButtonStyle()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public resetAlertDialogLayout()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 10
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    const/4 v9, 0x0

    .line 31
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 32
    .local v2, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 34
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 36
    .local v5, "width":I
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 37
    .local v1, "height":I
    if-ge v5, v1, :cond_1

    move v3, v5

    .line 39
    .local v3, "min":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 40
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 41
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 43
    iget v7, p0, Lnubia/widget/NubiaDialog;->mDecorViewTopPadding:I

    invoke-virtual {v0, v9, v7, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    :cond_0
    const/4 v7, -0x2

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 46
    const/16 v7, 0x51

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 47
    invoke-virtual {p1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    return-void

    .end local v0    # "decorView":Landroid/view/View;
    .end local v3    # "min":I
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    move v3, v1

    .line 37
    goto :goto_0
.end method

.method public setBlankViewOnClickEvent()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;
    .param p2, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 52
    invoke-virtual {p1, p2}, Lcom/android/internal/app/AlertController;->setNubiaCanceledOnTouchOutside(Ljava/lang/Boolean;)V

    .line 53
    return-void
.end method

.method public setExitAnimation(Landroid/app/Activity;II)V
    .locals 0
    .param p1, "actv"    # Landroid/app/Activity;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I

    .prologue
    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 73
    return-void
.end method
