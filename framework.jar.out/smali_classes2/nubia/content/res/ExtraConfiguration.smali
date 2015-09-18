.class public Lnubia/content/res/ExtraConfiguration;
.super Ljava/lang/Object;
.source "ExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnubia/content/res/ExtraConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTACTS_PKG_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final LAUNCHER_PKG_NAME:Ljava/lang/String; = "cn.nubia.launcher"

.field public static final MMS_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final SETTINGS_PKG_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_INTRESTE_CHANGE_FLAG:J = 0x10047899L

.field public static final THEMEMANAGER_PKG_NAME:Ljava/lang/String; = "cn.nubia.thememanager"

.field public static final THEME_FLAG_ALARM:J = 0x400L

.field public static final THEME_FLAG_AUDIO_EFFECT:J = 0x8000L

.field public static final THEME_FLAG_BOOT_ANIMATION:J = 0x20L

.field public static final THEME_FLAG_BOOT_AUDIO:J = 0x40L

.field public static final THEME_FLAG_CLOCK:J = 0x10000L

.field public static final THEME_FLAG_CONTACT:J = 0x800L

.field public static final THEME_FLAG_FONT:J = 0x10L

.field public static final THEME_FLAG_FONT_FALLBACK:J = 0x40000L

.field public static final THEME_FLAG_FRAMEWORK:J = 0x1L

.field public static final THEME_FLAG_ICON:J = 0x8L

.field public static final THEME_FLAG_LAST:J = 0x40000L

.field public static final THEME_FLAG_LAUNCHER:J = 0x4000L

.field public static final THEME_FLAG_LOCKSCREEN:J = 0x4L

.field public static final THEME_FLAG_LOCKSTYLE:J = 0x1000L

.field public static final THEME_FLAG_MMS:J = 0x80L

.field public static final THEME_FLAG_RINGTONE:J = 0x100L

.field public static final THEME_FLAG_SETTING:J = 0x200L

.field public static final THEME_FLAG_STATUSBAR:J = 0x2000L

.field public static final THEME_FLAG_THEMEMANAGER:J = 0x20000L

.field public static final THEME_FLAG_THIRD_APP:J = 0x10000000L

.field public static final THEME_FLAG_WALLPAPER:J = 0x2L

.field public static final THEME_FONT_FLAGS:J = 0x40010L

.field private static final needRestartActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public themeChanged:I

.field public themeChangedFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNeedRestartActivity(J)V
    .locals 2
    .param p0, "themeFlag"    # J

    .prologue
    .line 68
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartLauncher(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "cn.nubia.launcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartSettings(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartMms(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartContacts(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartStatusBar(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_4
    invoke-static {p0, p1}, Lnubia/content/res/ExtraConfiguration;->needRestartThemeManager(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "cn.nubia.thememanager"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_5
    return-void
.end method

.method public static getScaleMode()I
    .locals 3

    .prologue
    .line 89
    const/4 v1, 0x1

    .line 91
    .local v1, "scale":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 93
    .local v0, "cfg":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 94
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v2, 0xf

    .line 95
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    .line 99
    const/4 v1, 0x1

    .line 105
    .end local v0    # "cfg":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static needNewResources(I)Z
    .locals 1
    .param p0, "configChanges"    # I

    .prologue
    .line 109
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestart3rdApp(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 114
    const-wide/32 v0, 0x10040011

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartActivity(Ljava/lang/String;J)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "themeFlag"    # J

    .prologue
    .line 120
    const-string v0, "cn.nubia.launcher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartLauncher(J)Z

    move-result v0

    .line 133
    :goto_0
    return v0

    .line 122
    :cond_0
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartSettings(J)Z

    move-result v0

    goto :goto_0

    .line 124
    :cond_1
    const-string v0, "com.android.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartMms(J)Z

    move-result v0

    goto :goto_0

    .line 126
    :cond_2
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartContacts(J)Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartStatusBar(J)Z

    move-result v0

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "cn.nubia.thememanager"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestartThemeManager(J)Z

    move-result v0

    goto :goto_0

    .line 133
    :cond_5
    invoke-static {p1, p2}, Lnubia/content/res/ExtraConfiguration;->needRestart3rdApp(J)Z

    move-result v0

    goto :goto_0
.end method

.method public static needRestartContacts(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 138
    const-wide/32 v0, 0x40811

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartLauncher(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 144
    const-wide/32 v0, 0x44019

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartMms(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 150
    const-wide/32 v0, 0x40091

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartSettings(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 155
    const-wide/32 v0, 0x40219

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartStatusBar(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 161
    const-wide/32 v0, 0x43019

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartThemeManager(J)Z
    .locals 4
    .param p0, "themeFlag"    # J

    .prologue
    .line 167
    const-wide/32 v0, 0x60011

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeNeedRestartActivity(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-object v0, Lnubia/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lnubia/content/res/ExtraConfiguration;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnubia/content/res/ExtraConfiguration;->compareTo(Lnubia/content/res/ExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnubia/content/res/ExtraConfiguration;)I
    .locals 2
    .param p1, "that"    # Lnubia/content/res/ExtraConfiguration;

    .prologue
    .line 177
    iget v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iget v1, p1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public diff(Lnubia/content/res/ExtraConfiguration;)I
    .locals 3
    .param p1, "delta"    # Lnubia/content/res/ExtraConfiguration;

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "changed":I
    iget v1, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 183
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 185
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 189
    iget v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iget-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "paramParcel"    # Landroid/os/Parcel;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 195
    return-void
.end method

.method public setTo(Lnubia/content/res/ExtraConfiguration;)V
    .locals 2
    .param p1, "config"    # Lnubia/content/res/ExtraConfiguration;

    .prologue
    .line 198
    iget v0, p1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iput v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 199
    iget-wide v0, p1, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    iput-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 200
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget v1, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, " themeChangedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Lnubia/content/res/ExtraConfiguration;)I
    .locals 4
    .param p1, "delta"    # Lnubia/content/res/ExtraConfiguration;

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "changed":I
    iget v1, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 219
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 220
    iget v1, p1, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 221
    iget-wide v2, p1, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    iput-wide v2, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 223
    :cond_0
    return v0
.end method

.method public updateTheme(J)V
    .locals 1
    .param p1, "themeFlag"    # J

    .prologue
    .line 227
    iget v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    .line 228
    iput-wide p1, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 229
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "paramInt"    # I

    .prologue
    .line 232
    iget v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-wide v0, p0, Lnubia/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    return-void
.end method
