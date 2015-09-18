.class Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;
.super Ljava/lang/Object;
.source "PowerAndVolumeScreenshotCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
.implements Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
.implements Lcom/android/internal/policy/impl/ISettingListener;


# static fields
.field private static final POWER_VOLUME_SCREENSHOT:Ljava/lang/String; = "power_volume_screenshot"

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "FreeSnapshotCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mLastVolumeDownKeyTime:J

.field mLastVolumeUpKeyTime:J

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private mScreenshotEnable:Z

.field private final mScreenshotForLog:Ljava/lang/Runnable;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 4
    .param p1, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$1;-><init>(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl$2;-><init>(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    .line 167
    iput-wide v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mLastVolumeDownKeyTime:J

    .line 168
    iput-wide v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mLastVolumeUpKeyTime:J

    .line 58
    iput-object p2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method private cancelPendingScreenshotForLog()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method private closeOriginScreenshot()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setScreenshotChordEnabled(Z)V

    .line 65
    return-void
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    .line 128
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 131
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 134
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotChordAction()V

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private interceptScreenshotLog()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    .line 142
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 145
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 147
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->cancelPendingScreenshotForLog()V

    .line 149
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .end local v0    # "now":J
    :cond_0
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 174
    .local v2, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 175
    .local v1, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 179
    .local v0, "down":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-eqz v3, :cond_8

    and-int/lit16 v3, v1, 0x400

    if-nez v3, :cond_8

    .line 180
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-nez v3, :cond_2

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 182
    .local v4, "now":J
    iget-wide v10, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    const-wide/16 v12, 0x12c

    add-long v8, v10, v12

    .line 185
    .local v8, "timeoutTime":J
    iget-wide v10, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    iget-wide v12, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mLastVolumeDownKeyTime:J

    sub-long v6, v10, v12

    .line 186
    .local v6, "time":J
    iget-wide v10, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    iput-wide v10, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mLastVolumeDownKeyTime:J

    .line 187
    const-wide/16 v10, 0x384

    cmp-long v3, v6, v10

    if-gez v3, :cond_1

    .line 188
    const-wide/16 v10, 0x0

    .line 225
    .end local v4    # "now":J
    .end local v6    # "time":J
    .end local v8    # "timeoutTime":J
    :goto_1
    return-wide v10

    .line 175
    .end local v0    # "down":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    .restart local v0    # "down":Z
    .restart local v4    # "now":J
    .restart local v6    # "time":J
    .restart local v8    # "timeoutTime":J
    :cond_1
    cmp-long v3, v4, v8

    if-gez v3, :cond_2

    .line 192
    sub-long v10, v8, v4

    goto :goto_1

    .line 195
    .end local v4    # "now":J
    .end local v6    # "time":J
    .end local v8    # "timeoutTime":J
    :cond_2
    const/16 v3, 0x19

    if-ne v2, v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v3, :cond_4

    .line 197
    if-nez v0, :cond_3

    .line 198
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 200
    :cond_3
    const-wide/16 v10, -0x1

    goto :goto_1

    .line 202
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-nez v3, :cond_6

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 204
    .restart local v4    # "now":J
    iget-wide v10, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    const-wide/16 v12, 0x12c

    add-long v8, v10, v12

    .line 207
    .restart local v8    # "timeoutTime":J
    iget-wide v10, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    iget-wide v12, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mLastVolumeUpKeyTime:J

    sub-long v6, v10, v12

    .line 208
    .restart local v6    # "time":J
    iget-wide v10, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    iput-wide v10, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mLastVolumeUpKeyTime:J

    .line 209
    const-wide/16 v10, 0x384

    cmp-long v3, v6, v10

    if-gez v3, :cond_5

    .line 210
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 213
    :cond_5
    cmp-long v3, v4, v8

    if-gez v3, :cond_6

    .line 214
    sub-long v10, v8, v4

    goto :goto_1

    .line 217
    .end local v4    # "now":J
    .end local v6    # "time":J
    .end local v8    # "timeoutTime":J
    :cond_6
    const/16 v3, 0x18

    if-ne v2, v3, :cond_8

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    if-eqz v3, :cond_8

    .line 219
    if-nez v0, :cond_7

    .line 220
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 222
    :cond_7
    const-wide/16 v10, -0x1

    goto :goto_1

    .line 225
    :cond_8
    const-wide/high16 v10, -0x8000000000000000L

    goto :goto_1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    if-nez v4, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-wide v6

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 71
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 72
    .local v0, "down":Z
    :goto_1
    const/16 v4, 0x19

    if-ne v1, v4, :cond_4

    .line 73
    if-eqz v0, :cond_3

    .line 74
    if-eqz p3, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_0

    .line 76
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    .line 77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTime:J

    .line 78
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->interceptScreenshotChord()V

    goto :goto_0

    .end local v0    # "down":Z
    :cond_2
    move v0, v3

    .line 71
    goto :goto_1

    .line 82
    .restart local v0    # "down":Z
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeDownKeyTriggered:Z

    goto :goto_0

    .line 84
    :cond_4
    const/16 v4, 0x18

    if-ne v1, v4, :cond_6

    .line 85
    if-eqz v0, :cond_5

    .line 86
    if-eqz p3, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_0

    .line 88
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    .line 89
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTime:J

    .line 90
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 91
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->interceptScreenshotLog()V

    goto :goto_0

    .line 94
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mVolumeUpKeyTriggered:Z

    goto :goto_0

    .line 96
    :cond_6
    const/16 v4, 0x1a

    if-ne v1, v4, :cond_0

    .line 97
    if-eqz v0, :cond_7

    .line 98
    if-eqz p3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    .line 100
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    .line 101
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPowerKeyTime:J

    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->interceptScreenshotChord()V

    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->interceptScreenshotLog()V

    goto :goto_0

    .line 106
    :cond_7
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mPowerKeyTriggered:Z

    goto :goto_0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->closeOriginScreenshot()V

    .line 116
    const-string v0, "power_volume_screenshot"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 119
    return-void
.end method

.method public updateSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_volume_screenshot"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;->mScreenshotEnable:Z

    .line 125
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
