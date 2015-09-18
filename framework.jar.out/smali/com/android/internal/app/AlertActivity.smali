.class public abstract Lcom/android/internal/app/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertActivity$FlymeInjector;
    }
.end annotation

# instance fields
.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mFirst:Z

.field private mNubiaDialog:Lnubia/widget/IDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 75
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 125
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 129
    const-class v3, Landroid/app/Dialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 133
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 135
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 137
    return v2

    .end local v0    # "isFullScreen":Z
    :cond_0
    move v0, v2

    .line 133
    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-interface {v0, v1}, Lnubia/widget/IDialog;->createDialogExitAnimation(Lcom/android/internal/app/AlertController;)V

    .line 108
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    invoke-static {p0}, Lcom/android/internal/app/AlertActivity$FlymeInjector;->onAlertContentChanged(Lcom/android/internal/app/AlertActivity;)V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    .line 65
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 67
    invoke-static {p0}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/widget/NubiaDialog;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaDialog;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertActivity;->mFirst:Z

    .line 71
    return-void

    .line 67
    :cond_0
    new-instance v0, Lnubia/widget/ProtoDialog;

    invoke-direct {v0, p0}, Lnubia/widget/ProtoDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    iget-boolean v0, p0, Lcom/android/internal/app/AlertActivity;->mFirst:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-interface {v0, v1}, Lnubia/widget/IDialog;->createDialogEnterAnimation(Lcom/android/internal/app/AlertController;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertActivity;->mFirst:Z

    .line 90
    return-void
.end method

.method public realFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 115
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v0, p0, v1, v1}, Lnubia/widget/IDialog;->setExitAnimation(Landroid/app/Activity;II)V

    .line 116
    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnubia/widget/IDialog;->setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V

    .line 103
    return-void
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity$FlymeInjector;->applyMeizuStyle(Lcom/android/internal/app/AlertActivity;)V

    return-void
.end method
