.class public Lcn/nubia/internal/policy/impl/fingerprints/FingerPrintsSettingUtils;
.super Ljava/lang/Object;
.source "FingerPrintsSettingUtils.java"


# static fields
.field private static final NUBIA_FINGERPRINT_SWITCH:Ljava/lang/String; = "nubia_fingerprints_switch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableFingerPrints(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nubia_fingerprints_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 12
    return-void
.end method
