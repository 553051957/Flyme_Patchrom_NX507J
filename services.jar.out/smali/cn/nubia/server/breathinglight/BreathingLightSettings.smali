.class public Lcn/nubia/server/breathinglight/BreathingLightSettings;
.super Ljava/lang/Object;
.source "BreathingLightSettings.java"


# static fields
.field private static final BRIGHTNESS_AUTO:I = 0x1

.field private static final BRIGHTNESS_MANUAL:I = 0x0

.field private static final DEFAULT_LIGHT_BRIGHTNESS:I = 0xa

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final LED_LIGHT_BRIGHTNESS:Ljava/lang/String; = "led_light_brightness"

.field private static final LED_LIGHT_BRIGHTNESS_MODE:Ljava/lang/String; = "led_light_brightness_mode"

.field private static final LED_LIGHT_CHARGE_ENABLE:Ljava/lang/String; = "led_light_charge_enable"

.field private static final LED_LIGHT_TOUCH_ENABLE:Ljava/lang/String; = "led_light_touch_enable"

.field private static final NOTIFICATION_ENABLE:Ljava/lang/String; = "notificationsettings"

.field private static final SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final TAG:Ljava/lang/String; = "BreathingLightSettings"


# instance fields
.field private final mBreathLightBrightness:[I

.field private mBrightnessMode:I

.field private mContext:Landroid/content/Context;

.field private mLastObservedLuxTime:J

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorLux:[F

.field private mNotificationLightEnable:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSingleUiModeEnable:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;-><init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 224
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    .line 227
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    .line 249
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;-><init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 65
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 68
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 70
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensor:Landroid/hardware/Sensor;

    .line 72
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->registerSettingsObserver()V

    .line 73
    return-void

    .line 224
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x7
        0xa
        0xf
        0x14
        0x23
        0x32
    .end array-data

    .line 227
    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x42480000    # 50.0f
        0x42c80000    # 100.0f
        0x43c80000    # 400.0f
        0x44610000    # 900.0f
        0x44fa0000    # 2000.0f
        0x459c4000    # 5000.0f
    .end array-data
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->brightnessModeChange()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->manualBrightnessChange()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->notificationSettingsChange()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->singleUiModeChange()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/breathinglight/BreathingLightSettings;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 17
    iget-wide v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcn/nubia/server/breathinglight/BreathingLightSettings;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcn/nubia/server/breathinglight/BreathingLightSettings;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->getCurrentBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/breathinglight/BreathingLightSettings;F)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # F

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->getBrightnessByLux(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/breathinglight/BreathingLightSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    return-void
.end method

.method private brightnessModeChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 173
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "led_light_brightness_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 175
    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v2, :cond_0

    .line 176
    invoke-direct {p0, v3}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    .line 177
    const-string v2, "led_light_brightness"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 179
    .local v0, "brightness":I
    invoke-direct {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    .line 183
    .end local v0    # "brightness":I
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    goto :goto_0
.end method

.method private enableAutoBrightness(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    .line 206
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private getBrightnessByLux(F)I
    .locals 4
    .param p1, "lux"    # F

    .prologue
    .line 233
    const/16 v0, 0xa

    .line 235
    .local v0, "brightness":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 236
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v0, v2, v3

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 239
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    aget v2, v2, v1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    aget v0, v2, v1

    .line 241
    goto :goto_0

    .line 238
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getCurrentBrightness()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightBrightness()I

    move-result v0

    return v0
.end method

.method private initSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 102
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "led_light_brightness_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 104
    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v2, :cond_0

    .line 105
    const-string v2, "led_light_brightness"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "brightness":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v2, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightBrightness(I)V

    .line 112
    .end local v0    # "brightness":I
    :goto_0
    const-string v2, "notificationsettings"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    .line 114
    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    .line 115
    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    invoke-direct {p0, v2}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->processSingleUiMode(I)V

    .line 116
    return-void

    .line 109
    :cond_0
    invoke-direct {p0, v5}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    goto :goto_0
.end method

.method private manualBrightnessChange()V
    .locals 4

    .prologue
    .line 195
    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 197
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "led_light_brightness"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, "brightness":I
    invoke-direct {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    .line 201
    .end local v0    # "brightness":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private notificationSettingsChange()V
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "notificationsettings"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    .line 145
    return-void
.end method

.method private processSingleUiMode(I)V
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0
.end method

.method private registerSettingsObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 76
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 78
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "led_light_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    const-string v1, "led_light_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 86
    const-string v1, "notificationsettings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    const-string v1, "single_ui_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 93
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightBrightness(I)V

    .line 219
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 221
    return-void
.end method

.method private singleUiModeChange()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    .line 154
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    invoke-direct {p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->processSingleUiMode(I)V

    .line 155
    return-void
.end method


# virtual methods
.method public handleBootCompeleted()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->initSettings()V

    .line 97
    return-void
.end method

.method public isBreathingLightTouchEnable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 131
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 133
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "led_light_touch_enable"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "enable":I
    if-ne v0, v2, :cond_0

    .line 137
    .end local v0    # "enable":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return v2

    .restart local v0    # "enable":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v2, v3

    .line 134
    goto :goto_0

    .line 136
    .end local v0    # "enable":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const-string v2, "BreathingLightSettings"

    const-string v4, "isBreathingLightTouchEnable: mContext is null!! "

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 137
    goto :goto_0
.end method

.method public isChargeSwitchEnable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 119
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 120
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "led_light_charge_enable"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "enable":I
    if-ne v0, v2, :cond_0

    .line 126
    .end local v0    # "enable":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return v2

    .restart local v0    # "enable":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v2, v3

    .line 123
    goto :goto_0

    .line 125
    .end local v0    # "enable":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const-string v2, "BreathingLightSettings"

    const-string v4, "isChargeSwitchEnable: mContext is null!! "

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 126
    goto :goto_0
.end method

.method public isNotificationEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 148
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleUiModeEnable()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAutoBrightnessState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 186
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "led_light_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 189
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    .line 192
    :cond_0
    return-void
.end method
