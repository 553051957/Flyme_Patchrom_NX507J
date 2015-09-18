.class public final Lcom/android/internal/policy/impl/FeatureFunctionManager;
.super Ljava/lang/Object;
.source "FeatureFunctionManager.java"


# instance fields
.field private mBreathingLightCtrl:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

.field private final mContext:Landroid/content/Context;

.field final mDispatchingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

.field private mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

.field private final mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

.field final mQueueingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;",
            ">;"
        }
    .end annotation
.end field

.field final mSettingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/ISettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

.field private mVolleyGestureCtrl:Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 52
    iput-object p3, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FeatureFunctionManager;->init()V

    .line 54
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    .line 58
    new-instance v5, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    .line 60
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v5, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    .line 64
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v5, Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    invoke-direct {v5}, Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    .line 69
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v5, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v5, v6}, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;-><init>(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mBreathingLightCtrl:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    .line 75
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mBreathingLightCtrl:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v3, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;

    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v3, v5, v6}, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 80
    .local v3, "mTouchHomeLightCtrl":Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v5, "1"

    const-string v6, "persist.sys.singlehand"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    new-instance v5, Lcom/android/internal/policy/impl/SingleUICtrl;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/policy/impl/SingleUICtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    .line 87
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    new-instance v4, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    .line 96
    .local v4, "touchGestureFuncsCtrl":Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v5, Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mVolleyGestureCtrl:Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;

    .line 100
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mVolleyGestureCtrl:Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/tp/easy_wakeup_gesture"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "gestureFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    new-instance v0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v6}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    .line 107
    .local v0, "doubleClickScreenCtrl":Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v0    # "doubleClickScreenCtrl":Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;
    :cond_1
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    move-result-object v1

    .line 114
    .local v1, "edgeTipsDialogHelper":Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v5, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v1    # "edgeTipsDialogHelper":Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;
    :cond_2
    return-void
.end method


# virtual methods
.method public interceptFreeSnapshot()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->doFreeSnapshot()Z

    move-result v0

    return v0
.end method

.method public isSystemReady()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    return v0
.end method

.method updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "sys.perf.activate"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/FeatureFunctionManager;->mVolleyGestureCtrl:Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/internal/policy/impl/VolleyGestureCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
