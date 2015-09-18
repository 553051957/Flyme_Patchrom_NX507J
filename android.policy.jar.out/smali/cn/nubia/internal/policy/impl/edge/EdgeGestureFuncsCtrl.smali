.class public Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;
.super Ljava/lang/Object;
.source "EdgeGestureFuncsCtrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeGestureFuncsCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoubleSideCtrl:Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;

.field private mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

.field private mHoldAndHoldCtrl:Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

.field private mHoldAndTapCtrl:Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;

.field private mHoldCornerCtrl:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

.field private mLastEdgeTpState:I

.field private mLoopSideCtrl:Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSingleSideCtrl:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mLastEdgeTpState:I

    .line 148
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 36
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 38
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/edgegesture/EdgeGestureManager;->getDefaultManager(Landroid/content/Context;)Lcn/nubia/edgegesture/EdgeGestureManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    .line 40
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSingleSideCtrl:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    .line 41
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mDoubleSideCtrl:Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;

    .line 42
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mHoldAndHoldCtrl:Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

    .line 43
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mHoldCornerCtrl:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    .line 44
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mLoopSideCtrl:Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;

    .line 45
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->isNeedListenerHoldAndTap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mHoldAndTapCtrl:Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;

    .line 49
    :cond_0
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeIncomplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->updateEdgeTpState()V

    .line 51
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->registerSettingsObserver()V

    .line 53
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->updateEdgeTpState()V

    return-void
.end method

.method private isNeedListenerHoldAndTap()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "hand_hold_and_click"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isNeedUserEdgeTP()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "off"

    const-string v4, "nubia_edge_left_move_switch"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    const-string v3, "off"

    const-string v4, "nubia_edge_right_move_switch"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const-string v3, "nubia_edge_double_side_move"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_0

    .line 83
    const-string v3, "nubia_edge_move_loop"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_0

    .line 87
    const-string v3, "nubia_edge_hold_hold"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_0

    .line 91
    const-string v3, "off"

    const-string v4, "nubia_edge_hold_tap"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const-string v3, "nubia_edge_hold_four_corner"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    .line 98
    goto :goto_0
.end method

.method private registerSettingsObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 117
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "nubia_edge_left_move_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    const-string v1, "nubia_edge_right_move_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 127
    const-string v1, "nubia_edge_double_side_move"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 131
    const-string v1, "nubia_edge_move_loop"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 135
    const-string v1, "nubia_edge_hold_hold"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    const-string v1, "nubia_edge_hold_tap"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 143
    const-string v1, "nubia_edge_hold_four_corner"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 146
    return-void
.end method

.method private updateEdgeTpState()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->isNeedUserEdgeTP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->writeEdgeTpState(I)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->writeEdgeTpState(I)V

    goto :goto_0
.end method

.method private writeEdgeTpState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    .line 102
    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mLastEdgeTpState:I

    if-eq v4, p1, :cond_0

    .line 103
    iput p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mLastEdgeTpState:I

    .line 104
    const-string v4, "echo %s > /data/tp/c_zone\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mLastEdgeTpState:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "cmd":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "sh"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 107
    .local v2, "exeCmd":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 108
    .local v3, "os":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "exeCmd":Ljava/lang/Process;
    .end local v3    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v0    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
