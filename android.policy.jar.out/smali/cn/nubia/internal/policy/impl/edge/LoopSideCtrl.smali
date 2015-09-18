.class public Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "LoopSideCtrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoopSideCtrl"


# instance fields
.field private final LOOP_SWITCH_OFF:I

.field private final LOOP_SWITCH_ON:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 18
    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->LOOP_SWITCH_OFF:I

    .line 19
    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->LOOP_SWITCH_ON:I

    .line 24
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeGestureListener;)V

    .line 27
    return-void
.end method

.method private clearRecentTask()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.auto_test.clear"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "paly_animation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 77
    return-void
.end method

.method private doLoopGesture()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->getGestureSwitchState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 55
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->showLoopGestureGuideIfNeed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->clearRecentTask()V

    .line 59
    :cond_0
    return-void
.end method

.method private getGestureSwitchState()I
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "nubia_edge_move_loop"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private showLoopGestureGuideIfNeed()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->showTipsDialog(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->getCurrentRunAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "currentApp":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->isSystemUIApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->isSetupWizardApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->isCurrentFreeSnapshot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method handleEdgeGesture(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 49
    const-string v0, "LoopSideCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not listen this type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 46
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;->doLoopGesture()V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
