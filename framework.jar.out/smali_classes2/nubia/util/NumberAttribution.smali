.class public Lnubia/util/NumberAttribution;
.super Ljava/lang/Object;
.source "NumberAttribution.java"


# static fields
.field private static final CITYID:Ljava/lang/String; = "cityId"

.field private static final CITYNAME:Ljava/lang/String; = "name"

.field private static final CitiesTable:Ljava/lang/String; = "Cities"

.field private static final DBFilePath:Ljava/lang/String; = "/system/etc/mobilenuminmainland.db"

.field private static final LOG_TAG:Ljava/lang/String; = "NumberAttribution"

.field private static final NUMBER:Ljava/lang/String; = "num"

.field private static final NumbersTable:Ljava/lang/String; = "Numbers"

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static myInstance:Lnubia/util/NumberAttribution;

.field private static sCitiesWordBook:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsDBReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnubia/util/NumberAttribution;->mInstanceObjectSync:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 31
    invoke-direct {p0, p1}, Lnubia/util/NumberAttribution;->openDatabase(Landroid/content/Context;)V

    .line 32
    iget-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->InitCitiesWordBook()V

    .line 35
    :cond_0
    return-void
.end method

.method private InitCitiesWordBook()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 38
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 39
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "Cities"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 40
    const/4 v8, 0x0

    .line 41
    .local v8, "city":Ljava/lang/String;
    iget-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "cityId"

    aput-object v4, v2, v5

    const-string v4, "name"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 44
    .local v9, "cityCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 45
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    sget-object v1, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_1
    if-eqz v9, :cond_0

    if-eqz v3, :cond_4

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v1

    :cond_1
    if-eqz v9, :cond_2

    if-eqz v3, :cond_3

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 51
    :cond_2
    :goto_3
    return-void

    .line 50
    :catch_1
    move-exception v10

    .local v10, "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_2
    move-exception v10

    .restart local v10    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v10    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private closeDatabase()V
    .locals 1

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 103
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDBNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "realNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "structuredPhoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v0, 0x0

    .line 130
    .local v0, "nationalnumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 133
    .local v2, "tempnumber":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    const-string v5, "CN"

    invoke-virtual {v4, p1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_1
    return-object v3

    .line 139
    :cond_1
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 144
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_2
    if-eqz v0, :cond_3

    move-object v2, v0

    .line 149
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 148
    goto :goto_2

    .line 135
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lnubia/util/NumberAttribution;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v1, Lnubia/util/NumberAttribution;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lnubia/util/NumberAttribution;

    invoke-direct {v0, p0}, Lnubia/util/NumberAttribution;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    sget-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private openDatabase(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/mobilenuminmainland.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "/system/etc/mobilenuminmainland.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NumberAttribution"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->closeDatabase()V

    goto :goto_0
.end method

.method private queryCityId(Ljava/lang/String;)I
    .locals 14
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 106
    const/4 v11, -0x1

    .line 107
    .local v11, "retCityId":I
    if-nez p1, :cond_0

    move v12, v11

    .line 120
    .end local v11    # "retCityId":I
    .local v12, "retCityId":I
    :goto_0
    return v12

    .line 110
    .end local v12    # "retCityId":I
    .restart local v11    # "retCityId":I
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 111
    .local v10, "intNumber":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "numberSelection":Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 113
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "Numbers"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "cityId"

    aput-object v5, v2, v6

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 116
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v11

    .line 119
    :cond_1
    if-eqz v9, :cond_2

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move v12, v11

    .line 120
    .end local v11    # "retCityId":I
    .restart local v12    # "retCityId":I
    goto :goto_0

    .line 119
    .end local v12    # "retCityId":I
    .restart local v11    # "retCityId":I
    :catch_0
    move-exception v13

    .local v13, "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 114
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :catchall_0
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    :goto_2
    if-eqz v9, :cond_4

    if-eqz v4, :cond_5

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    throw v1

    :catch_2
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public canQuery()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    return v0
.end method

.method public queryAttributionByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v1, ""

    .line 68
    .local v1, "returnValue":Ljava/lang/String;
    iget-object v4, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    move-object v2, v1

    .line 76
    .end local v1    # "returnValue":Ljava/lang/String;
    .local v2, "returnValue":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 71
    .end local v2    # "returnValue":Ljava/lang/String;
    .restart local v1    # "returnValue":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lnubia/util/NumberAttribution;->getDBNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "tmpnumber":Ljava/lang/String;
    invoke-direct {p0, v3}, Lnubia/util/NumberAttribution;->queryCityId(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "cityId":I
    const/4 v4, -0x1

    if-le v0, v4, :cond_1

    .line 74
    sget-object v4, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "returnValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "returnValue":Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .line 76
    .end local v1    # "returnValue":Ljava/lang/String;
    .restart local v2    # "returnValue":Ljava/lang/String;
    goto :goto_0
.end method
