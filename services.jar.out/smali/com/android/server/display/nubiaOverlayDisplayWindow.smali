.class final Lcom/android/server/display/nubiaOverlayDisplayWindow;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;,
        Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;,
        Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FIELD_MULTI_WINDOW:Ljava/lang/String; = "ss_multi_window_enabled"

.field static final FIELD_SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final FIELD_SINGLE_UI_MODE_SENSOR_SWITCH:Ljava/lang/String; = "single_ui_mode_sensor_switch"

.field private static KEY_MENU_AND_HOME_POS:Ljava/lang/String; = null

.field private static final NUBIA_OVERLAY_DISPLAY_CLOSE_MODE:Ljava/lang/String; = "single_ui_close_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES:Ljava/lang/String; = "nubia_overlay_display_devices"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES_MERMORY:Ljava/lang/String; = "nubia_overlay_display_devices_mermory"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_STATUS:Ljava/lang/String; = "single_ui_status"

.field private static final TAG:Ljava/lang/String; = "NubiaOverlayDisplayWindow"

.field private static mWindowVisible:Z


# instance fields
.field private final BW:I

.field private final DISABLE_MOVE_AND_RESIZE:Z

.field private final RESET_DELAY:J

.field private final STOP_REFRESH_DELAY:J

.field private final TW:I

.field private final WINDOW_ALPHA:F

.field private downTime:J

.field isLongClick:Z

.field private mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

.field private mClickRunnable:Ljava/lang/Runnable;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCloseSFRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mGravity:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHigherBarBackground:Landroid/view/ViewGroup;

.field private mHigherBarCenter:Landroid/view/ViewGroup;

.field private mHigherBarHeight:I

.field private mHigherBarLeft:Landroid/view/ViewGroup;

.field private mHigherBarRight:Landroid/view/ViewGroup;

.field mHigherBarVisible:Z

.field private mHigherCenterButton:Landroid/widget/ImageView;

.field private mHigherCenterHalo:Landroid/widget/ImageView;

.field private mHigherCenterRound:Landroid/widget/ImageView;

.field private mHigherLeftButton:Landroid/widget/ImageView;

.field private mHigherRightButton:Landroid/widget/ImageView;

.field private mIsRightHand:Z

.field private mIsSFRefreshing:Z

.field private final mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

.field private mLogicalHeight:I

.field private mLogicalWidth:I

.field private mLowerBarHeight:I

.field private mLowerCenterButton:Landroid/widget/ImageView;

.field private mLowerLeftButton:Landroid/widget/ImageView;

.field private mLowerRightButton:Landroid/widget/ImageView;

.field private mMaxWidthVitrualScreen:I

.field private mMinWidthVitrualScreen:I

.field private mMovingHintHeight:I

.field private mMovingHintLower:Landroid/view/View;

.field private mMovingHintPosOffset:I

.field private mMovingHintUpper:Landroid/view/View;

.field private mMovingMask:Landroid/view/ViewGroup;

.field private mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

.field private mOnSystemHomeKeyTouched:Landroid/view/View$OnTouchListener;

.field private mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

.field private mOnSystemLeftKeyTouched:Landroid/view/View$OnTouchListener;

.field private mOnSystemRightKeyTouched:Landroid/view/View$OnTouchListener;

.field private mRotated:I

.field private mSFHandler:Landroid/os/Handler;

.field private mScaleX:F

.field private mScaleY:F

.field private mScreenBackGround:Landroid/view/View;

.field private mScreenWithBar:Landroid/view/ViewGroup;

.field private mSizeBar:Landroid/view/ViewGroup;

.field private mSizeSlideBar:Landroid/view/ViewGroup;

.field private mSizeSlideBarRail:Landroid/view/View;

.field private mSizeSlideBarThumb:Landroid/view/View;

.field private mSizeSlideBarThumbHalo:Landroid/view/View;

.field private mSizerButton:Landroid/widget/ImageView;

.field private mSizerMask:Landroid/view/ViewGroup;

.field private mSlideBarThumbHeight:I

.field private mSlideBarWidth:I

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVitrualScreen:Landroid/view/ViewGroup;

.field private mWidth:I

.field private mWindowContentBg:Landroid/view/View;

.field private mWindowContentNew:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowParams2:Landroid/view/WindowManager$LayoutParams;

.field private mX:I

.field private mY:I

.field private onBarClickListener:Landroid/view/View$OnClickListener;

.field private onBarLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onBarTouchListener:Landroid/view/View$OnTouchListener;

.field private onMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private onSlideBarTouch:Landroid/view/View$OnTouchListener;

.field private onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private final rate:F

.field private upTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 619
    const-string v0, "persist.sys.key.menu2back"

    sput-object v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIIILjava/lang/String;DLcom/android/server/display/nubiaOverlayDisplayWindow$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "gravity"    # I
    .param p9, "leftOrRight"    # Ljava/lang/String;
    .param p10, "rate"    # D
    .param p12, "listener"    # Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->WINDOW_ALPHA:F

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->DISABLE_MOVE_AND_RESIZE:Z

    .line 163
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I

    .line 229
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->RESET_DELAY:J

    .line 620
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    .line 621
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->upTime:J

    .line 689
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->BW:I

    .line 690
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->TW:I

    .line 734
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 770
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    .line 924
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    .line 926
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;

    .line 944
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->STOP_REFRESH_DELAY:J

    .line 945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsSFRefreshing:Z

    .line 946
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    .line 947
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$4;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    .line 984
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isLongClick:Z

    .line 1013
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1043
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 1127
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 1296
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 1370
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$10;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$10;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onSlideBarTouch:Landroid/view/View$OnTouchListener;

    .line 1698
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$14;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$14;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemLeftKeyTouched:Landroid/view/View$OnTouchListener;

    .line 1725
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$15;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$15;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemRightKeyTouched:Landroid/view/View$OnTouchListener;

    .line 1752
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$16;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$16;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemHomeKeyTouched:Landroid/view/View$OnTouchListener;

    .line 1768
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    .line 235
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    .line 236
    iput p3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mX:I

    .line 237
    iput p4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    .line 238
    double-to-float v0, p10

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    .line 239
    iput p6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    .line 240
    iput p5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    .line 241
    iput p8, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mGravity:I

    .line 242
    iput-object p12, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    .line 244
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 246
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 248
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 249
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    .line 251
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    .line 252
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    .line 254
    const-string v0, "right"

    invoke-virtual {p9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    .line 260
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->createWindow()V

    .line 261
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    goto :goto_0
.end method

.method private ResetMovingHintAccordingToScreen()V
    .locals 5

    .prologue
    .line 1281
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 1284
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 1286
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 1287
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintPosOffset:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1288
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 1289
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintPosOffset:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1290
    return-void
.end method

.method private ResetSlideBarAccordingToScreen()V
    .locals 7

    .prologue
    .line 1231
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1232
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 1238
    .local v2, "x":F
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1240
    .local v0, "currentHeight":I
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    mul-int/lit8 v4, v4, 0x10

    div-int/lit8 v4, v4, 0x9

    sub-int/2addr v4, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1242
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v0

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    mul-int/lit8 v6, v6, 0x10

    div-int/lit8 v6, v6, 0x9

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1252
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarRail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1255
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    mul-int/lit8 v4, v4, 0x10

    div-int/lit8 v4, v4, 0x9

    sub-int v4, v0, v4

    int-to-float v1, v4

    .line 1256
    .local v1, "thumbPosVerse":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    .line 1257
    const/4 v1, 0x0

    .line 1258
    :cond_0
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1259
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    sub-float v3, v4, v5

    .line 1262
    .local v3, "y":F
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 1263
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setY(F)V

    .line 1265
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 1267
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1268
    return-void

    .line 1235
    .end local v0    # "currentHeight":I
    .end local v1    # "thumbPosVerse":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    .restart local v2    # "x":F
    goto/16 :goto_0

    .line 1250
    .restart local v0    # "currentHeight":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    div-int/lit8 v5, v5, 0x9

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideScreenHigherBarAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/nubiaOverlayDisplayWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->changeSurfaceFlingerRefreshOptions(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showScreenHigherBarAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->relayout()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showMovingHint()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showHaloAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showMovingStartAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetSizerMask()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .param p1, "x1"    # F

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideHaloAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 132
    sput-boolean p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    return-wide v0
.end method

.method static synthetic access$5502(Lcom/android/server/display/nubiaOverlayDisplayWindow;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .param p1, "x1"    # J

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/DisplayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->changeSide()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    return-void
.end method

.method private adjustSlideBarBlockPosition(F)V
    .locals 3
    .param p1, "deltaY"    # F

    .prologue
    const/4 v2, 0x0

    .line 1420
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    add-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 1432
    :cond_0
    return-void
.end method

.method private changeSide()V
    .locals 2

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    .line 903
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    .line 905
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    .line 906
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    .line 912
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    const v1, 0x3020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 914
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    const v1, 0x302012a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 916
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 917
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->changeSideAnimation()V

    .line 919
    return-void

    .line 902
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    .line 909
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    .line 910
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method private changeSideAnimation()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1638
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1639
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    const-string v2, "translationX"

    new-array v3, v3, [F

    aput v6, v3, v7

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1645
    .local v0, "oaVScreen":Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1646
    new-instance v1, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;

    invoke-direct {v1, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1676
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1677
    return-void

    .line 1642
    .end local v0    # "oaVScreen":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    const-string v2, "translationX"

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v7

    aput v6, v3, v8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "oaVScreen":Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

.method private declared-synchronized changeSurfaceFlingerRefreshOptions(Z)V
    .locals 6
    .param p1, "doRefreshing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 956
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsSFRefreshing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :try_start_1
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 959
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 961
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 962
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 963
    .local v2, "showUpdates":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "showUpdates":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 956
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 967
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private createShowAnimation()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    .line 283
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showEnterAnimation()V

    .line 284
    return-void
.end method

.method private createWindow()V
    .locals 13

    .prologue
    const/16 v12, 0x7ea

    const/4 v11, 0x1

    const v10, 0x3f7d70a4    # 0.99f

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 367
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 369
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 370
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x303002b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    .line 373
    const v4, 0x303002c

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    .line 377
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 378
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x308005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    .line 380
    const v4, 0x308005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    .line 383
    const v4, 0x308005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarWidth:I

    .line 385
    const v4, 0x3080060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    .line 388
    const v4, 0x308005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    .line 390
    const v4, 0x308005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    .line 393
    const v4, 0x3080061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintPosOffset:I

    .line 395
    const v4, 0x3080062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintHeight:I

    .line 398
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->legalizeInitSizeAndPos()V

    .line 401
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0061

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    .line 403
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v7, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v6, 0x5a

    invoke-static {v4, v5, v6}, Lnubia/util/BlurUtil;->clipWallpaper(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 406
    .local v0, "backgroundBlured":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 407
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d006d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    .line 413
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 414
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 416
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0062

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    .line 418
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 419
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 422
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 423
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 429
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 431
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0067

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    .line 433
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 435
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 437
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d006b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    .line 439
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 441
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 443
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0065

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    .line 445
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 447
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 449
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0068

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;

    .line 451
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0069

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;

    .line 453
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d006a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;

    .line 455
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 456
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0066

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    .line 458
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 460
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d006c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    .line 462
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 465
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    .line 466
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    .line 467
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    .line 473
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    const v5, 0x3020135

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    const v5, 0x302012a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0077

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    .line 480
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0076

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    .line 483
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0063

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    .line 485
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 487
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d006f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 490
    .local v2, "lowerBar":Landroid/view/View;
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d007a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    .line 492
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d007c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    .line 494
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 496
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onSlideBarTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 497
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d007d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;

    .line 499
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d007b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarRail:Landroid/view/View;

    .line 501
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarRail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 504
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0078

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    .line 506
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0079

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    .line 509
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V

    .line 510
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    .line 511
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V

    .line 512
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetSizerMask()V

    .line 515
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVibrator:Landroid/os/Vibrator;

    .line 518
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    if-ge v4, v5, :cond_4

    .line 519
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleX:F

    .line 520
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleY:F

    .line 527
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0071

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    .line 529
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0075

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    .line 531
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0073

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    .line 534
    const-string v4, "nubia"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 535
    const-string v4, "zte"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 536
    const-string v4, "TAG"

    const-string v5, "single ui load zte resources"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_2
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    const v5, 0x302012c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    const v5, 0x302012e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    const v5, 0x302012e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemLeftKeyTouched:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 550
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 551
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemRightKeyTouched:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 552
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 553
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemHomeKeyTouched:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 554
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 556
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d006e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/TextureView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 558
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v9}, Landroid/view/TextureView;->setPivotX(F)V

    .line 559
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v9}, Landroid/view/TextureView;->setPivotY(F)V

    .line 560
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 561
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 562
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v11}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 564
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 566
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 568
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 569
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 570
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 571
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 572
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 573
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 575
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    .line 577
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 578
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 579
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 580
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 581
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 582
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 585
    new-instance v4, Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    .line 587
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    invoke-virtual {v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;->observe()V

    .line 590
    new-instance v4, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    .line 592
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    invoke-virtual {v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->observe()V

    .line 593
    return-void

    .line 469
    .end local v2    # "lowerBar":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    .line 470
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    .line 471
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 522
    .restart local v2    # "lowerBar":Landroid/view/View;
    :cond_4
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleX:F

    .line 523
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleY:F

    goto/16 :goto_1

    .line 538
    :cond_5
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "single ui was started by unknown brand = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private hideHaloAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v2, 0x3dcccccd    # 0.1f

    .line 1688
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1691
    .local v0, "halo":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1692
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1693
    return-void
.end method

.method private hideScreenHigherBarAnimation()V
    .locals 4

    .prologue
    .line 1630
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1632
    .local v0, "oaHigherBar":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1633
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1634
    return-void

    .line 1630
    nop

    :array_0
    .array-data 4
        0x3e851eb8    # 0.26f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private isRightHand()Z
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    return v0
.end method

.method private legalizeInitSizeAndPos()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 598
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    if-gt v0, v1, :cond_0

    .line 599
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    .line 600
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    .line 602
    :cond_0
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    if-lt v0, v1, :cond_1

    .line 603
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    .line 604
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    .line 607
    :cond_1
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mX:I

    if-gtz v0, :cond_2

    .line 608
    iput v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mX:I

    .line 609
    :cond_2
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mX:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 610
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mX:I

    .line 611
    :cond_3
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    if-gtz v0, :cond_4

    .line 612
    iput v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    .line 613
    :cond_4
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_5

    .line 615
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    .line 617
    :cond_5
    return-void
.end method

.method private declared-synchronized needSingleLayerRefreshHere()V
    .locals 4

    .prologue
    .line 972
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsSFRefreshing:Z

    if-nez v0, :cond_0

    .line 973
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->changeSurfaceFlingerRefreshOptions(Z)V

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 976
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    monitor-exit p0

    return-void

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private relayout()V
    .locals 3

    .prologue
    .line 760
    sget-boolean v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v0, :cond_0

    .line 761
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateWindowParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    :cond_0
    return-void
.end method

.method private resetMovingMask()V
    .locals 3

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1496
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1497
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1498
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1500
    return-void
.end method

.method private resetSizerMask()V
    .locals 3

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1504
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1505
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1506
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1508
    return-void
.end method

.method private setInputRect(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v5, 0x0

    .line 695
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 697
    .local v2, "mRect3":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I

    packed-switch v3, :pswitch_data_0

    .line 701
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 703
    .local v0, "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x32

    add-int v4, p1, p3

    add-int v5, p2, p4

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 730
    .local v1, "mRect2":Landroid/graphics/Rect;
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/server/display/SingleUIRectNotifyer;->notifyInputDispatcherSingleUIRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 732
    return-void

    .line 705
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 706
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x32

    add-int v4, p1, p3

    add-int v5, p2, p4

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 708
    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .line 710
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 711
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p4

    add-int v4, p2, p3

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 712
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit16 v4, p2, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .line 714
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, 0x64

    add-int v4, p1, p4

    add-int/lit8 v5, p2, 0x64

    add-int/2addr v5, p3

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 715
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit8 v4, p2, 0x64

    add-int/lit8 v4, v4, -0x32

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int/lit8 v6, p2, 0x64

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 718
    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .line 720
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 721
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x64

    add-int v4, p1, p4

    add-int/lit8 v5, p2, -0x64

    add-int/2addr v5, p3

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 722
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit8 v4, p2, -0x64

    add-int/lit16 v4, v4, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int/lit8 v6, p2, -0x64

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 725
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p4

    add-int v4, p2, p3

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 726
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit16 v4, p2, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "l"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 352
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000328

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 361
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 362
    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 363
    const-string v0, "singleUI_view_layer"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method

.method private showEnterAnimation()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1539
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1541
    .local v1, "scale":F
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    int-to-float v4, v4

    add-float v9, v3, v4

    .line 1542
    .local v9, "deltaY":F
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v8, v9, v3

    .line 1545
    .local v8, "p":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    move v6, v2

    :goto_0
    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1548
    .local v0, "enter":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1549
    new-instance v2, Lcom/android/server/display/nubiaOverlayDisplayWindow$11;

    invoke-direct {v2, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$11;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1565
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1566
    return-void

    .line 1545
    .end local v0    # "enter":Landroid/view/animation/ScaleAnimation;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private showExitAnimation()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1570
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 1572
    .local v2, "scale":F
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    int-to-float v4, v4

    add-float v9, v3, v4

    .line 1573
    .local v9, "deltaY":F
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v8, v9, v3

    .line 1576
    .local v8, "p":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    move v6, v1

    :goto_0
    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1579
    .local v0, "exit":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1580
    new-instance v1, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;

    invoke-direct {v1, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1605
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1607
    return-void

    .line 1576
    .end local v0    # "exit":Landroid/view/animation/ScaleAnimation;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private showHaloAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v1, 0x3dcccccd    # 0.1f

    .line 1680
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1683
    .local v0, "halo":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1684
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1685
    return-void
.end method

.method private showMovingHint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1271
    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v0, v1

    .line 1273
    .local v0, "maxY":F
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v2, v0, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    return-void
.end method

.method private showMovingStartAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x2

    .line 1611
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1613
    .local v1, "oaMovingUpper":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1615
    .local v0, "oaMovingLower":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1616
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1617
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1618
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1620
    return-void

    .line 1611
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
    .end array-data

    .line 1613
    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method private showScreenHigherBarAnimation()V
    .locals 4

    .prologue
    .line 1623
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1625
    .local v0, "oaHigherBar":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1626
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1627
    return-void

    .line 1623
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e851eb8    # 0.26f
    .end array-data
.end method

.method private updateDefaultDisplayInfo()Z
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    const-string v0, "NubiaOverlayDisplayWindow"

    const-string v1, "Cannot show overlay display because there is no default display upon which to show it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateWindowParams()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 653
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 654
    .local v1, "rotation":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 655
    .local v0, "matrix":Landroid/graphics/Matrix;
    packed-switch v1, :pswitch_data_0

    .line 660
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 661
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 662
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 663
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 666
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    .line 667
    .local v2, "tran_x":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 668
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 669
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setScaleX(F)V

    .line 670
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setScaleY(F)V

    .line 672
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetInputRect()V

    .line 686
    .end local v2    # "tran_x":F
    :goto_0
    return v5

    .line 678
    :pswitch_1
    const-string v3, "NubiaOverlayDisplayWindow"

    const-string v4, "singleUI closed for screen is landscape"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "single_ui_close_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 681
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "single_ui_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public adjustScreenPosition(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    .line 1193
    const/4 p1, 0x0

    .line 1195
    const/4 v1, 0x0

    .line 1196
    .local v1, "minY":F
    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v0, v2

    .line 1198
    .local v0, "maxY":F
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 1200
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v2, p2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    .line 1201
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    sub-float p2, v1, v2

    .line 1219
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    .line 1221
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V

    .line 1222
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    .line 1223
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V

    .line 1224
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetSizerMask()V

    .line 1225
    return-void

    .line 1202
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    sub-float v3, v0, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1205
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float p2, v2, v3

    goto :goto_0

    .line 1214
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    sub-float v3, v0, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1216
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public closeInputRect()V
    .locals 4

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setInputRect(IIII)V

    .line 1808
    return-void
.end method

.method public createDismissAnimation()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showExitAnimation()V

    .line 330
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 287
    sget-boolean v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 298
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->createDismissAnimation()V

    .line 300
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 3

    .prologue
    .line 304
    sget-boolean v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 315
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 316
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    .line 317
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    invoke-virtual {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;->unobserve()V

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    invoke-virtual {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->unobserve()V

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    .end local v0    # "status":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureView.getScaleX()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureView.getScaleY()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method public resetInputRect()V
    .locals 4

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setInputRect(IIII)V

    .line 1814
    return-void
.end method

.method public sendInjectEvent(II)V
    .locals 15
    .param p1, "action"    # I
    .param p2, "actionCode"    # I

    .prologue
    .line 625
    packed-switch p1, :pswitch_data_0

    .line 650
    :goto_0
    return-void

    .line 627
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    .line 628
    iget-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    iget-wide v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move/from16 v5, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .line 633
    .local v13, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 635
    invoke-virtual {v13}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0

    .line 640
    .end local v13    # "down":Landroid/view/KeyEvent;
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->upTime:J

    .line 641
    iget-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    iget-wide v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->upTime:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move/from16 v5, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 645
    .local v14, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 647
    invoke-virtual {v14}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScreenSize(F)V
    .locals 9
    .param p1, "width"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 1436
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1437
    .local v1, "oriX":I
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1439
    .local v2, "oriY":I
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, p1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1440
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1445
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1447
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 1449
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 1457
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, p1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1458
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1461
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    .line 1462
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    .line 1465
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;->onWindowSizeChanged(II)V

    .line 1468
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1469
    new-instance v4, Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 1470
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1472
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v7}, Landroid/view/TextureView;->setPivotX(F)V

    .line 1473
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v7}, Landroid/view/TextureView;->setPivotY(F)V

    .line 1474
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1475
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1476
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 1478
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1480
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1481
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v3, v4, v5

    .line 1483
    .local v3, "tran_x":F
    neg-float v4, v3

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1484
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 1485
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v8}, Landroid/view/TextureView;->setScaleX(F)V

    .line 1486
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v8}, Landroid/view/TextureView;->setScaleY(F)V

    .line 1489
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    .line 1490
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V

    .line 1491
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetSizerMask()V

    .line 1492
    return-void

    .line 1453
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "tran_x":F
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setY(F)V

    goto/16 :goto_0
.end method

.method public setSizerMaskSize(F)V
    .locals 5
    .param p1, "width"    # F

    .prologue
    .line 1512
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1513
    .local v0, "oriX":I
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1515
    .local v1, "oriY":I
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1516
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1519
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1521
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 1523
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    .line 1531
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1532
    return-void

    .line 1527
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 265
    sget-boolean v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 267
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateWindowParams()Z

    .line 274
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->createShowAnimation()V

    goto :goto_0
.end method

.method public updateSUMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 845
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ss_multi_window_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 847
    .local v0, "isMultiWindow":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 851
    :cond_0
    return-void
.end method
