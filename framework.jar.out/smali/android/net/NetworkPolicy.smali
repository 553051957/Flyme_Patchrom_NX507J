.class public Landroid/net/NetworkPolicy;
.super Ljava/lang/Object;
.source "NetworkPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/NetworkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final CYCLE_NONE:I = -0x1

.field private static final DEFAULT_MTU:J = 0x5dcL

.field public static final LIMIT_DISABLED:J = -0x1L

.field public static final SNOOZE_NEVER:J = -0x1L

.field public static final WARNING_DISABLED:J = -0x1L


# instance fields
.field public cycleDay:I

.field public cycleTimezone:Ljava/lang/String;

.field public inferred:Z

.field public lastLimitSnooze:J

.field public lastWarningSnooze:J

.field public limitBytes:J

.field private mSwitchSimCaution:Z

.field public metered:Z

.field public template:Landroid/net/NetworkTemplate;

.field public warningBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Landroid/net/NetworkPolicy$1;

    invoke-direct {v0}, Landroid/net/NetworkPolicy$1;-><init>()V

    sput-object v0, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleDay"    # I
    .param p3, "cycleTimezone"    # Ljava/lang/String;
    .param p4, "warningBytes"    # J
    .param p6, "limitBytes"    # J
    .param p8, "lastWarningSnooze"    # J
    .param p10, "lastLimitSnooze"    # J
    .param p12, "metered"    # Z
    .param p13, "inferred"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string/jumbo v0, "missing NetworkTemplate"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 71
    iput p2, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 72
    const-string/jumbo v0, "missing cycleTimezone"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 73
    iput-wide p4, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 74
    iput-wide p6, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 75
    iput-wide p8, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 76
    iput-wide p10, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 77
    iput-boolean p12, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 78
    iput-boolean p13, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZZ)V
    .locals 0
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleDay"    # I
    .param p3, "cycleTimezone"    # Ljava/lang/String;
    .param p4, "warningBytes"    # J
    .param p6, "limitBytes"    # J
    .param p8, "lastWarningSnooze"    # J
    .param p10, "lastLimitSnooze"    # J
    .param p12, "metered"    # Z
    .param p13, "inferred"    # Z
    .param p14, "mSwitchSimCaution"    # Z

    .prologue
    .line 61
    invoke-direct/range {p0 .. p13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 63
    iput-boolean p14, p0, Landroid/net/NetworkPolicy;->mSwitchSimCaution:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJZ)V
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleDay"    # I
    .param p3, "cycleTimezone"    # Ljava/lang/String;
    .param p4, "warningBytes"    # J
    .param p6, "limitBytes"    # J
    .param p8, "metered"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v12, p8

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/net/NetworkPolicy;->mSwitchSimCaution:Z

    .line 92
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v0, v2

    .line 90
    goto :goto_1

    :cond_2
    move v1, v2

    .line 91
    goto :goto_2
.end method


# virtual methods
.method public clearSnooze()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 135
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 136
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 137
    return-void
.end method

.method public compareTo(Landroid/net/NetworkPolicy;)I
    .locals 4
    .param p1, "another"    # Landroid/net/NetworkPolicy;

    .prologue
    const-wide/16 v2, -0x1

    .line 148
    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 150
    :cond_0
    const/4 v0, -0x1

    .line 156
    :goto_0
    return v0

    .line 152
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 154
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Landroid/net/NetworkPolicy;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 167
    instance-of v2, p1, Landroid/net/NetworkPolicy;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 168
    check-cast v0, Landroid/net/NetworkPolicy;

    .line 169
    .local v0, "other":Landroid/net/NetworkPolicy;
    iget v2, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    iget v3, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->metered:Z

    iget-boolean v3, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->inferred:Z

    iget-boolean v3, v0, Landroid/net/NetworkPolicy;->inferred:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->mSwitchSimCaution:Z

    iget-boolean v3, v0, Landroid/net/NetworkPolicy;->mSwitchSimCaution:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 177
    .end local v0    # "other":Landroid/net/NetworkPolicy;
    :cond_0
    return v1
.end method

.method public getSwitchSimCaution()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Landroid/net/NetworkPolicy;->mSwitchSimCaution:Z

    return v0
.end method

.method public hasCycle()Z
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 161
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->mSwitchSimCaution:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOverLimit(J)Z
    .locals 5
    .param p1, "totalBytes"    # J

    .prologue
    .line 127
    const-wide/16 v0, 0xbb8

    add-long/2addr p1, v0

    .line 128
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverWarning(J)Z
    .locals 5
    .param p1, "totalBytes"    # J

    .prologue
    .line 117
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwitchSimCaution(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Landroid/net/NetworkPolicy;->mSwitchSimCaution:Z

    .line 214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, " cycleDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", cycleTimezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, ", warningBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", limitBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, ", lastWarningSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", lastLimitSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, ", metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, ", inferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, ", mSwitchSimCaution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->mSwitchSimCaution:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget v0, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-wide v4, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v4, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-wide v4, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v4, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-boolean v0, p0, Landroid/net/NetworkPolicy;->inferred:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-boolean v0, p0, Landroid/net/NetworkPolicy;->mSwitchSimCaution:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void

    :cond_0
    move v0, v2

    .line 103
    goto :goto_0

    :cond_1
    move v0, v2

    .line 104
    goto :goto_1

    :cond_2
    move v1, v2

    .line 105
    goto :goto_2
.end method