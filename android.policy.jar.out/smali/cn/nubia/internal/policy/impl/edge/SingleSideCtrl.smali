.class public Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "SingleSideCtrl.java"


# static fields
.field private static final MAX_TASKS:I = 0x15

.field private static final TAG:Ljava/lang/String; = "SingleSideCtrl"


# instance fields
.field private final APP_SEPARATOR:Ljava/lang/String;

.field private final COMPONENT_SEPARATOR:Ljava/lang/String;

.field private final SWITCH_APP:Ljava/lang/String;

.field private final SWITCH_OFF:Ljava/lang/String;

.field mActivityStackReceiver:Landroid/content/BroadcastReceiver;

.field private mChangeBySwitch:Z

.field private mCurrentAppIndex:I

.field private mNeedUpdate:Z

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 34
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 35
    iput-boolean v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    .line 36
    iput-boolean v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    .line 38
    const-string v1, "off"

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->SWITCH_OFF:Ljava/lang/String;

    .line 39
    const-string v1, "switch_app"

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->SWITCH_APP:Ljava/lang/String;

    .line 40
    const-string v1, ";"

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->APP_SEPARATOR:Ljava/lang/String;

    .line 41
    const-string v1, ","

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->COMPONENT_SEPARATOR:Ljava/lang/String;

    .line 383
    new-instance v1, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;)V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityStackReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 48
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    .line 51
    iput-boolean v5, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityStackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    new-array v2, v8, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeGestureListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    return p1
.end method

.method private canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 267
    const/4 v0, 0x1

    .line 269
    .local v0, "canBeAdd":Z
    if-eqz p1, :cond_1

    .line 270
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSystemUIApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 277
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSetupWizardApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    const/4 v0, 0x0

    .line 281
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private checkComponentNameValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doGestureFunction(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isUp"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    if-eqz p1, :cond_1

    .line 135
    const-string v0, "switch_app"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, v2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doSwitchApp(Z)V

    .line 147
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0, v2, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->luncherPresetApp(ZLjava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    const-string v0, "switch_app"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doSwitchApp(Z)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0, v1, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->luncherPresetApp(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private doLeftSideSlid(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 98
    const-string v1, "nubia_edge_left_move_switch"

    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getGestureSwitch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "switchState":Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->showLeftGuideIfNeed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 102
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZLjava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    if-ne p1, v2, :cond_0

    .line 104
    invoke-direct {p0, v2, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private doRightSideSlid(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 116
    const-string v1, "nubia_edge_right_move_switch"

    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getGestureSwitch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "switchState":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->showRightGuideIfNeed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 120
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZLjava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 122
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private getGestureSwitch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 379
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private lunacherAppInternal(Ljava/lang/String;Landroid/app/ActivityOptions;)V
    .locals 8
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    const-string v4, "SingleSideCtrl"

    const-string v5, "lunacherAppInternal: app is empty !"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    .line 340
    :cond_0
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "component":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 342
    :cond_1
    const-string v4, "SingleSideCtrl"

    const-string v5, "lunacherAppInternal: app\'s component is invalid !"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_2
    aget-object v4, v0, v6

    aget-object v5, v0, v7

    invoke-direct {p0, v4, v5}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->checkComponentNameValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v0, v6

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getCurrentRunAppPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    :cond_3
    const-string v4, "SingleSideCtrl"

    const-string v5, "lunacherAppInternal: app\'s component is empty or current run !"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const v4, 0x10304000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 358
    aget-object v4, v0, v6

    aget-object v5, v0, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    :try_start_0
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 365
    .local v2, "el":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private luncherPresetApp(ZLjava/lang/String;)V
    .locals 5
    .param p1, "isUp"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    :cond_0
    const-string v2, "SingleSideCtrl"

    const-string v3, "luncherPresetApp: presetapp is empty or keyguard locked!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "apps":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 315
    :cond_2
    const-string v2, "SingleSideCtrl"

    const-string v3, "luncherPresetApp: presetapp is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_3
    if-eqz p1, :cond_4

    .line 320
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v3, 0x3040002

    const v4, 0x3040003

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 323
    .local v1, "opts":Landroid/app/ActivityOptions;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {p0, v2, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->lunacherAppInternal(Ljava/lang/String;Landroid/app/ActivityOptions;)V

    goto :goto_0

    .line 327
    .end local v1    # "opts":Landroid/app/ActivityOptions;
    :cond_4
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v3, 0x3040006

    const v4, 0x3040007

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 330
    .restart local v1    # "opts":Landroid/app/ActivityOptions;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {p0, v2, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->lunacherAppInternal(Ljava/lang/String;Landroid/app/ActivityOptions;)V

    goto :goto_0
.end method

.method private showLeftGuideIfNeed()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->showTipsDialog(I)Z

    move-result v0

    return v0
.end method

.method private showRightGuideIfNeed()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->showTipsDialog(I)Z

    move-result v0

    return v0
.end method

.method private skipHomeAppIfNeed(Z)V
    .locals 5
    .param p1, "isUp"    # Z

    .prologue
    .line 207
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 209
    .local v1, "newTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isHomeApplication(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 215
    .local v0, "length":I
    if-eqz p1, :cond_2

    .line 216
    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 217
    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_0

    .line 218
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_0

    .line 221
    :cond_2
    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 222
    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    if-gez v3, :cond_0

    .line 223
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_0
.end method

.method private switchNextOrPreviousApp(Z)V
    .locals 5
    .param p1, "isUp"    # Z

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-boolean v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    if-eqz v2, :cond_0

    .line 173
    iput-boolean v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    .line 174
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 175
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->updateRecentAppSwitchList()V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getCurrentRunApp()Landroid/content/ComponentName;

    move-result-object v0

    .line 178
    .local v0, "currentRunApp":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 179
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 184
    .local v1, "length":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 187
    if-eqz p1, :cond_4

    .line 188
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_3

    .line 189
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 201
    :goto_1
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->skipHomeAppIfNeed(Z)V

    .line 203
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->switchToNewApp(Z)V

    goto :goto_0

    .line 191
    :cond_3
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_1

    .line 194
    :cond_4
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    if-nez v2, :cond_5

    .line 195
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_1

    .line 197
    :cond_5
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_1
.end method

.method private switchToNewApp(Z)V
    .locals 8
    .param p1, "isUp"    # Z

    .prologue
    const/4 v7, 0x1

    .line 230
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 232
    .local v1, "newTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v2, 0x0

    .line 236
    .local v2, "opts":Landroid/app/ActivityOptions;
    if-eqz p1, :cond_1

    .line 238
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const/high16 v4, 0x3040000

    const v5, 0x3040005

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 252
    :goto_1
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v3, :cond_2

    .line 253
    iget-object v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    const v3, 0x10104000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 263
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_2
    iput-boolean v7, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    goto :goto_0

    .line 243
    :cond_1
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v4, 0x3040004

    const v5, 0x3040001

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_1

    .line 260
    :cond_2
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityManager:Landroid/app/ActivityManager;

    iget v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method private updateRecentAppSwitchList()V
    .locals 7

    .prologue
    .line 285
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 286
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 288
    :cond_0
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    .line 291
    .local v3, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 305
    :cond_1
    return-void

    .line 293
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 294
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 295
    .local v2, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v2, :cond_4

    .line 293
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_4
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    .line 299
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 300
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getCurrentRunAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "currentApp":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSystemUIApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSetupWizardApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isCurrentFreeSnapshot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 77
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method doSwitchApp(Z)V
    .locals 1
    .param p1, "isUp"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->switchNextOrPreviousApp(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method getCurrentRunApp()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 162
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 163
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 164
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 167
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method handleEdgeGesture(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 93
    const-string v0, "SingleSideCtrl"

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

    .line 95
    :goto_0
    return-void

    .line 86
    :pswitch_0
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doLeftSideSlid(I)V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doRightSideSlid(I)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
