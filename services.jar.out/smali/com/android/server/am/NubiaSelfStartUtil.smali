.class public Lcom/android/server/am/NubiaSelfStartUtil;
.super Ljava/lang/Object;
.source "NubiaSelfStartUtil.java"


# static fields
.field private static final APPWIDGET_UPDATE_ACTION:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field private static final CONTENT_URI_SELFSTART:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "NubiaSelfStartUtil"

.field private static mContext:Landroid/content/Context;

.field private static mFirstBoot:Z

.field private static final mForbiddenSelfStartPkgNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mForbiddenSelfStartPkgNames:Ljava/util/HashMap;

    .line 23
    const-string v0, "content://selfstart_provider/selfstart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->setForbiddenSelfStartPkgNames()V

    return-void
.end method

.method public static getForbidSelfStartPackageNames(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 42
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v8, "resultHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "package_name"

    aput-object v1, v2, v11

    .line 45
    .local v2, "selections":[Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 49
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 54
    :goto_0
    if-eqz v6, :cond_1

    .line 55
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 56
    .local v9, "sum":I
    if-lez v9, :cond_0

    .line 57
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v9, :cond_0

    .line 58
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 59
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 62
    .end local v7    # "i":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 66
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "sum":I
    :cond_1
    return-object v8

    .line 52
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 51
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static getPermittedStr(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Unable to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "/for broadcast Intent{act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "}:process is not permitted to autostart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isForbiddenSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 5
    .param p0, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "result":Z
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 72
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "intentAction":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 74
    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    sget-boolean v3, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    if-eqz v3, :cond_0

    .line 76
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->setForbiddenSelfStartPkgNames()V

    .line 77
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/am/NubiaSelfStartUtil;->mFirstBoot:Z

    .line 79
    :cond_0
    sget-object v3, Lcom/android/server/am/NubiaSelfStartUtil;->mForbiddenSelfStartPkgNames:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const-string v3, "NubiaSelfStartUtil"

    invoke-static {v1, p0}, Lcom/android/server/am/NubiaSelfStartUtil;->getPermittedStr(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v2, 0x1

    .line 85
    :cond_1
    return v2
.end method

.method public static registerSelfStartObserver(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sput-object p0, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->CONTENT_URI_SELFSTART:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/am/NubiaSelfStartUtil$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4}, Lcom/android/server/am/NubiaSelfStartUtil$1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 38
    return-void
.end method

.method private static setForbiddenSelfStartPkgNames()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mForbiddenSelfStartPkgNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 100
    sget-object v0, Lcom/android/server/am/NubiaSelfStartUtil;->mForbiddenSelfStartPkgNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/NubiaSelfStartUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getForbidSelfStartPackageNames(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 101
    return-void
.end method
