.class public Lnubia/net/wifi/WifiBackup;
.super Ljava/lang/Object;
.source "WifiBackup.java"


# static fields
.field private static final BYTE_COPY_INITIAL_POINT:I = 0x0

.field private static final CONFIG_BYTE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "Wifibackup"

.field private static final TLV_KEY_MGMT:I = 0x2

.field private static final TLV_PSK:I = 0x1

.field private static final TLV_SSID:I


# instance fields
.field private mConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mNumWifi:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWriteWifiNum:I


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/net/wifi/WifiManager;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lnubia/net/wifi/WifiBackup;->mNumWifi:I

    .line 36
    iput v0, p0, Lnubia/net/wifi/WifiBackup;->mWriteWifiNum:I

    .line 43
    iput-object p1, p0, Lnubia/net/wifi/WifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 46
    return-void
.end method

.method private Array2Typeint([B)I
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 222
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 223
    .local v1, "shift":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method

.method private TlvWifiConfig(Landroid/net/wifi/WifiConfiguration;[B)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "valueConfig"    # [B

    .prologue
    const/4 v5, 0x0

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "mvalueConfig":[B
    const/4 v1, 0x0

    .line 115
    .local v1, "mLength":I
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5, v3}, Lnubia/net/wifi/WifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v2

    .line 117
    array-length v3, v2

    invoke-static {v2, v5, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 118
    array-length v1, v2

    .line 120
    :cond_0
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    const/4 v3, 0x1

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/WifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v2

    .line 122
    array-length v3, v2

    invoke-static {v2, v5, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 123
    array-length v3, v2

    add-int/2addr v1, v3

    .line 125
    :cond_1
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lnubia/net/wifi/WifiBackup;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "keyMgmt":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-direct {p0, v3, v0}, Lnubia/net/wifi/WifiBackup;->tlvencode(ILjava/lang/String;)[B

    move-result-object v2

    .line 127
    array-length v3, v2

    invoke-static {v2, v5, p2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 128
    array-length v3, v2

    add-int/2addr v1, v3

    .line 129
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 130
    :cond_2
    const-string v3, "Wifibackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backup failed config.ssid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " config.preSharedKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_3
    return v1
.end method

.method private int2TypeArray(I)[B
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 212
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 213
    .local v0, "mByte":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 214
    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 215
    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 216
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 217
    return-object v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 243
    array-length v1, p2

    .line 244
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 246
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 245
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_1
    const-string v2, "Wifibackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to look-up a string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "set"    # Ljava/util/BitSet;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 232
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 233
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 234
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 240
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setKeyMgmt(Ljava/lang/String;)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 252
    invoke-direct {p0, p1}, Lnubia/net/wifi/WifiBackup;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 253
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "vals":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 255
    .local v4, "val":Ljava/lang/String;
    sget-object v7, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lnubia/net/wifi/WifiBackup;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 257
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 263
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "index":I
    .end local v3    # "len$":I
    .end local v4    # "val":Ljava/lang/String;
    .end local v5    # "vals":[Ljava/lang/String;
    :goto_1
    return v2

    .line 254
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "index":I
    .restart local v3    # "len$":I
    .restart local v4    # "val":Ljava/lang/String;
    .restart local v5    # "vals":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "index":I
    .end local v4    # "val":Ljava/lang/String;
    :cond_1
    move v2, v6

    .line 261
    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "vals":[Ljava/lang/String;
    :cond_2
    move v2, v6

    .line 263
    goto :goto_1
.end method

.method private tlvdecode([B)Ljava/util/List;
    .locals 14
    .param p1, "mbyte"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const/4 v10, 0x0

    .line 167
    .local v10, "waitByte":[B
    const/4 v3, 0x2

    .line 168
    .local v3, "flag":I
    const/4 v8, 0x0

    .line 169
    .local v8, "qnumber":I
    const/4 v1, 0x4

    .line 170
    .local v1, "byteCopyLength":I
    const/16 v2, 0x8

    .line 171
    .local v2, "byteStepLength":I
    const/4 v12, 0x2

    new-array v9, v12, [B

    .line 172
    .local v9, "version":[B
    const/4 v12, 0x4

    new-array v4, v12, [B

    .line 173
    .local v4, "lByte":[B
    const/4 v12, 0x4

    new-array v7, v12, [B

    .line 174
    .local v7, "qByte":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-byte v13, p1, v13

    aput-byte v13, v9, v12

    .line 175
    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-byte v13, p1, v13

    aput-byte v13, v9, v12

    .line 176
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 177
    .local v5, "mconfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "backconfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    array-length v12, p1

    if-ge v3, v12, :cond_3

    .line 179
    const/4 v12, 0x0

    invoke-static {p1, v3, v7, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 180
    add-int v12, v3, v1

    const/4 v13, 0x0

    invoke-static {p1, v12, v4, v13, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 181
    invoke-direct {p0, v4}, Lnubia/net/wifi/WifiBackup;->Array2Typeint([B)I

    move-result v8

    .line 182
    invoke-direct {p0, v7}, Lnubia/net/wifi/WifiBackup;->Array2Typeint([B)I

    move-result v11

    .line 183
    .local v11, "ztype":I
    if-nez v11, :cond_0

    .line 184
    new-array v10, v8, [B

    .line 185
    add-int v12, v3, v2

    const/4 v13, 0x0

    invoke-static {p1, v12, v10, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 186
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v12, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 187
    add-int v12, v8, v2

    add-int/2addr v3, v12

    goto :goto_0

    .line 189
    :cond_0
    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 190
    new-array v10, v8, [B

    .line 191
    add-int v12, v3, v2

    const/4 v13, 0x0

    invoke-static {p1, v12, v10, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 192
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v12, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 193
    add-int v12, v8, v2

    add-int/2addr v3, v12

    goto :goto_0

    .line 195
    :cond_1
    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 196
    new-array v10, v8, [B

    .line 197
    add-int v12, v3, v2

    const/4 v13, 0x0

    invoke-static {p1, v12, v10, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 198
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([B)V

    .line 199
    .local v6, "mkeyMgmt":Ljava/lang/String;
    iget-object v12, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v12}, Ljava/util/BitSet;->clear()V

    .line 200
    iget-object v12, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v6}, Lnubia/net/wifi/WifiBackup;->setKeyMgmt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->set(I)V

    .line 201
    new-instance v12, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v12, v5}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int v12, v8, v2

    add-int/2addr v3, v12

    .line 203
    goto :goto_0

    .line 205
    .end local v6    # "mkeyMgmt":Ljava/lang/String;
    :cond_2
    const-string v12, "Wifibackup"

    const-string v13, "error byte"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v11    # "ztype":I
    :cond_3
    return-object v0
.end method

.method private tlvencode(II)[B
    .locals 7
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v6, 0x0

    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "tag":[B
    const/4 v0, 0x0

    .line 154
    .local v0, "length":[B
    const/4 v1, 0x0

    .line 155
    .local v1, "mvalue":[B
    const/4 v3, 0x0

    .line 156
    .local v3, "tmpValue":[B
    invoke-direct {p0, p1}, Lnubia/net/wifi/WifiBackup;->int2TypeArray(I)[B

    move-result-object v2

    .line 157
    invoke-direct {p0, p2}, Lnubia/net/wifi/WifiBackup;->int2TypeArray(I)[B

    move-result-object v3

    .line 158
    array-length v4, v3

    invoke-direct {p0, v4}, Lnubia/net/wifi/WifiBackup;->int2TypeArray(I)[B

    move-result-object v0

    .line 159
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v1, v4, [B

    .line 160
    array-length v4, v2

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 161
    array-length v4, v2

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 162
    array-length v4, v2

    array-length v5, v0

    add-int/2addr v4, v5

    array-length v5, v3

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 163
    return-object v1
.end method

.method private tlvencode(ILjava/lang/String;)[B
    .locals 7
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "tag":[B
    const/4 v0, 0x0

    .line 138
    .local v0, "length":[B
    const/4 v1, 0x0

    .line 139
    .local v1, "mvalue":[B
    const/4 v3, 0x0

    .line 140
    .local v3, "tmpValue":[B
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lnubia/net/wifi/WifiBackup;->int2TypeArray(I)[B

    move-result-object v2

    .line 142
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 143
    array-length v4, v3

    invoke-direct {p0, v4}, Lnubia/net/wifi/WifiBackup;->int2TypeArray(I)[B

    move-result-object v0

    .line 144
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v1, v4, [B

    .line 145
    array-length v4, v2

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 146
    array-length v4, v2

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 147
    array-length v4, v2

    array-length v5, v0

    add-int/2addr v4, v5

    array-length v5, v3

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 149
    :cond_0
    return-object v1
.end method


# virtual methods
.method public backNumWifiInformation()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getConfigured(Ljava/util/List;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, "zConfig":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    .local v6, "retBackData":[B
    const/4 v0, 0x0

    .line 55
    .local v0, "backData":[B
    const/16 v7, 0x100

    new-array v2, v7, [B

    .line 56
    .local v2, "configByte":[B
    const/4 v3, 0x0

    .line 57
    .local v3, "configByteLen":I
    const/4 v5, 0x0

    .line 58
    .local v5, "number":I
    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 59
    const/4 v3, 0x0

    .line 60
    iput-object p1, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    .line 61
    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit16 v7, v7, 0x100

    new-array v0, v7, [B

    .line 63
    aput-byte v9, v0, v9

    .line 64
    aput-byte v10, v0, v10

    .line 65
    const/4 v5, 0x2

    .line 66
    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lnubia/net/wifi/WifiBackup;->mNumWifi:I

    .line 67
    iget-object v7, p0, Lnubia/net/wifi/WifiBackup;->mConfigs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, v2}, Lnubia/net/wifi/WifiBackup;->TlvWifiConfig(Landroid/net/wifi/WifiConfiguration;[B)I

    move-result v3

    .line 69
    invoke-static {v2, v9, v0, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 70
    add-int/2addr v5, v3

    .line 71
    goto :goto_0

    .line 73
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz v0, :cond_1

    array-length v7, v0

    if-eqz v7, :cond_1

    .line 74
    new-array v6, v5, [B

    .line 75
    invoke-static {v0, v9, v6, v9, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_1
    move-object v7, v6

    .line 80
    :goto_1
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setConfigured([B)Ljava/util/List;
    .locals 1
    .param p1, "mbyte"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lnubia/net/wifi/WifiBackup;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lnubia/net/wifi/WifiBackup;->tlvdecode([B)Ljava/util/List;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
