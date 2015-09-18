.class public Lcn/nubia/internal/policy/impl/edge/ResConsts;
.super Ljava/lang/Object;
.source "ResConsts.java"


# static fields
.field static final ID_DRAWABLE_BOTH_SIDES_SLIDE:I = 0x3020003

.field static final ID_DRAWABLE_HANDS_HOLD_BOTH_SIDES:I = 0x3020006

.field static final ID_DRAWABLE_HAND_HOLD_AND_CLICK:I = 0x3020004

.field static final ID_DRAWABLE_HAND_HOLD_AND_LEAVE:I = 0x3020005

.field static final ID_DRAWABLE_LEFT_SIDE_SLIDE:I = 0x3020007

.field static final ID_DRAWABLE_RIGHT_SIDE_SLIDE:I = 0x3020008

.field static final ID_DRAWABLE_SIDE_SLIDE_BACK_AND_FORTH:I = 0x3020009

.field static final ID_LAYOUT_TIPS_DIALOG:I = 0x3030000

.field static final ID_LAYOUT_TIPS_DIALOG_LAND:I = 0x3030001

.field static final ID_TEXT_ACTION_BOTH_SIDES_SLIDE:I = 0x30c003d

.field static final ID_TEXT_ACTION_HANDS_HOLD_BOTH_SIDES:I = 0x30c0045

.field static final ID_TEXT_ACTION_HAND_HOLD_AND_CLICK:I = 0x30c0047

.field static final ID_TEXT_ACTION_HAND_HOLD_AND_LEAVE:I = 0x30c003b

.field static final ID_TEXT_ACTION_LEFT_SIDE_SLIDE:I = 0x30c0041

.field static final ID_TEXT_ACTION_RIGHT_SIDE_SLIDE:I = 0x30c0043

.field static final ID_TEXT_ACTION_SIDE_SLIDE_BACK_AND_FORTH:I = 0x30c003f

.field static final ID_TEXT_TIPS_BOTH_SIDES_SLIDE:I = 0x30c003c

.field static final ID_TEXT_TIPS_HANDS_HOLD_BOTH_SIDES:I = 0x30c0044

.field static final ID_TEXT_TIPS_HAND_HOLD_AND_CLICK:I = 0x30c0046

.field static final ID_TEXT_TIPS_HAND_HOLD_AND_LEAVE:I = 0x30c003a

.field static final ID_TEXT_TIPS_LEFT_SIDE_SLIDE:I = 0x30c0040

.field static final ID_TEXT_TIPS_RIGHT_SIDE_SLIDE:I = 0x30c0042

.field static final ID_TEXT_TIPS_SIDE_SLIDE_BACK_AND_FORTH:I = 0x30c003e

.field static final ID_VIEW_IKNOW:I = 0x30d000f

.field static final ID_VIEW_IMAGE:I = 0x30d000e

.field static final ID_VIEW_SETTING:I = 0x30d0010

.field static final ID_VIEW_TIPS:I = 0x30d000c

.field static final ID_VIEW_TIPS_ACTION:I = 0x30d000d

.field public static final TIPS_BOTH_SIDES_SLIDE:Ljava/lang/String; = "both_sides_slide"

.field public static final TIPS_HANDS_HOLD_BOTH_SIDES:Ljava/lang/String; = "hands_hold_both_sides"

.field public static final TIPS_HAND_HOLD_AND_CLICK:Ljava/lang/String; = "hand_hold_and_click"

.field public static final TIPS_HAND_HOLD_AND_LEAVE:Ljava/lang/String; = "hand_hold_and_leave"

.field public static final TIPS_IMAGE_RESIDS:[I

.field public static final TIPS_LEFT_SIDE_SLIDE:Ljava/lang/String; = "left_side_slide"

.field public static final TIPS_RIGHT_SIDE_SLIDE:Ljava/lang/String; = "right_side_slide"

.field public static final TIPS_SIDE_SLIDE_BACK_AND_FORTH:Ljava/lang/String; = "side_slide_back_and_forth"

.field public static final TIPS_TEXT_ACTION_RESIDS:[I

.field public static final TIPS_TEXT_TIPS_RESIDS:[I

.field public static final TYPE_BOTH_SIDES_SLIDE:I = 0x3

.field public static final TYPE_HANDS_HOLD_BOTH_SIDES:I = 0x4

.field public static final TYPE_HAND_HOLD_AND_CLICK:I = 0x6

.field public static final TYPE_HAND_HOLD_AND_LEAVE:I = 0x5

.field public static final TYPE_LEFT_SIDE_SLIDE:I = 0x0

.field public static final TYPE_RIGHT_SIDE_SLIDE:I = 0x1

.field public static final TYPE_SIDE_SLIDE_BACK_AND_FORTH:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/ResConsts;->TIPS_TEXT_TIPS_RESIDS:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/ResConsts;->TIPS_TEXT_ACTION_RESIDS:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/ResConsts;->TIPS_IMAGE_RESIDS:[I

    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x30c0040
        0x30c0042
        0x30c003e
        0x30c003c
        0x30c0044
        0x30c003a
        0x30c0046
    .end array-data

    .line 62
    :array_1
    .array-data 4
        0x30c0041
        0x30c0043
        0x30c003f
        0x30c003d
        0x30c0045
        0x30c003b
        0x30c0047
    .end array-data

    .line 71
    :array_2
    .array-data 4
        0x3020007
        0x3020008
        0x3020009
        0x3020003
        0x3020006
        0x3020005
        0x3020004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
