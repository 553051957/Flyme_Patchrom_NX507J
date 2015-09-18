.class public final Lcn/nubia/server/ServiceClassTable;
.super Ljava/lang/Object;
.source "ServiceClassTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServicesAtFirst()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 6
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cn.nubia.server.SystemAccessService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cn.nubia.server.ClipExtraService"

    aput-object v2, v0, v1

    .line 11
    .local v0, "serviceClasses":[Ljava/lang/String;
    return-object v0
.end method

.method public static getServicesAtLast()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 15
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cn.nubia.server.breathinglight.BreathingLightService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cn.nubia.server.TeleStaticService"

    aput-object v2, v0, v1

    .line 20
    .local v0, "serviceClasses":[Ljava/lang/String;
    return-object v0
.end method
