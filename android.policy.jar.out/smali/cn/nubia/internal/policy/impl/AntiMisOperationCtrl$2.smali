.class Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$2;
.super Landroid/database/ContentObserver;
.source "AntiMisOperationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 112
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$2;->this$0:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 115
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$2;->this$0:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    # invokes: Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->isPocketModeEnable()Z
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->access$100(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;)Z

    move-result v1

    .line 116
    .local v1, "pocketEnabled":Z
    if-nez v1, :cond_1

    .line 117
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$2;->this$0:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    # invokes: Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->stopScreenSaverService()V
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->access$200(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$2;->this$0:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    # getter for: Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->access$300(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_palmrejection"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 122
    .local v0, "avoidMistouchEnable":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 123
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl$2;->this$0:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    # invokes: Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->startScreenSaverService()V
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->access$400(Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;)V

    goto :goto_0

    .end local v0    # "avoidMistouchEnable":Z
    :cond_2
    move v0, v2

    .line 119
    goto :goto_1
.end method
