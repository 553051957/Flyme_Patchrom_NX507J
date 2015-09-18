.class Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;
.super Ljava/lang/Object;
.source "SubscriptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiccSubsParams"
.end annotation


# instance fields
.field public app3gpp2AppStatus:Ljava/lang/String;

.field public app3gpp2Id:I

.field public app3gppAppStatus:Ljava/lang/String;

.field public app3gppId:I

.field public slotId:I

.field public subStatus:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "status"    # I

    .prologue
    const/4 v0, -0x1

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->slotId:I

    .line 517
    iput p2, p0, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->subStatus:I

    .line 518
    iput v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppId:I

    .line 519
    iput v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2Id:I

    .line 520
    const-string v0, "NO CHANGE IN SUBSCRIPTION"

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    .line 521
    const-string v0, "NO CHANGE IN SUBSCRIPTION"

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$UiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    .line 522
    return-void
.end method
