.class public Lnubia/fancydrawable/TimeDrawable;
.super Lnubia/fancydrawable/FancyDrawable;
.source "TimeDrawable.java"


# instance fields
.field private isRuning:Z

.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/Bitmap;

.field private mDialDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialHeight:I

.field private mDialLock:Landroid/graphics/Bitmap;

.field private mDialWidth:I

.field private mHourHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mHours:F

.field private mMinuteHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mMinutes:F

.field private mSecondHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mSeconds:F

.field private mSystemResources:Landroid/content/res/Resources;

.field private tickRunnable:Ljava/lang/Runnable;

.field private time_zone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, 0x302000d

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lnubia/fancydrawable/FancyDrawable;-><init>()V

    .line 45
    iput-boolean v1, p0, Lnubia/fancydrawable/TimeDrawable;->mAttached:Z

    .line 72
    iput-boolean v1, p0, Lnubia/fancydrawable/TimeDrawable;->isRuning:Z

    .line 108
    new-instance v1, Lnubia/fancydrawable/TimeDrawable$1;

    invoke-direct {v1, p0}, Lnubia/fancydrawable/TimeDrawable$1;-><init>(Lnubia/fancydrawable/TimeDrawable;)V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    .line 77
    const-string v1, "CalDrawable"

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mID:Ljava/lang/String;

    .line 81
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    .line 82
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget-object v1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->time_zone:Ljava/lang/String;

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mSystemResources:Landroid/content/res/Resources;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    .line 89
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mSystemResources:Landroid/content/res/Resources;

    const v2, 0x302002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mHourHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mSystemResources:Landroid/content/res/Resources;

    const v2, 0x302002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mMinuteHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 96
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mSystemResources:Landroid/content/res/Resources;

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialLock:Landroid/graphics/Bitmap;

    .line 102
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialWidth:I

    .line 103
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialHeight:I

    .line 104
    iget v1, p0, Lnubia/fancydrawable/TimeDrawable;->mDialWidth:I

    iget v2, p0, Lnubia/fancydrawable/TimeDrawable;->mDialHeight:I

    invoke-virtual {p0, v1, v2}, Lnubia/fancydrawable/TimeDrawable;->setIntrinsicSize(II)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lnubia/fancydrawable/TimeDrawable;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lnubia/fancydrawable/TimeDrawable;

    .prologue
    .line 23
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lnubia/fancydrawable/TimeDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnubia/fancydrawable/TimeDrawable;

    .prologue
    .line 23
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 137
    .local v1, "minute":I
    const/4 v2, 0x0

    .line 138
    .local v2, "second":I
    iget-object v4, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    monitor-enter v4

    .line 139
    :try_start_0
    iget-object v3, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 141
    iget-object v3, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 142
    iget-object v3, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 143
    iget-object v3, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 144
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    int-to-float v3, v2

    iput v3, p0, Lnubia/fancydrawable/TimeDrawable;->mSeconds:F

    .line 146
    int-to-float v3, v1

    iput v3, p0, Lnubia/fancydrawable/TimeDrawable;->mMinutes:F

    .line 147
    int-to-float v3, v0

    iget v4, p0, Lnubia/fancydrawable/TimeDrawable;->mMinutes:F

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lnubia/fancydrawable/TimeDrawable;->mHours:F

    .line 149
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnubia/fancydrawable/TimeDrawable;->mChanged:Z

    .line 150
    return-void

    .line 144
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public SetTimeZone(Ljava/lang/String;)V
    .locals 3
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    monitor-enter v1

    .line 231
    :try_start_0
    new-instance v0, Landroid/text/format/Time;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mCalendar:Landroid/text/format/Time;

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 156
    iget v10, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableWidth:I

    if-eqz v10, :cond_0

    iget v10, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableHeight:I

    if-nez v10, :cond_1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lnubia/fancydrawable/TimeDrawable;->getIntrinsicWidth()I

    move-result v10

    iput v10, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableWidth:I

    .line 158
    invoke-virtual {p0}, Lnubia/fancydrawable/TimeDrawable;->getIntrinsicHeight()I

    move-result v10

    iput v10, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableHeight:I

    .line 160
    :cond_1
    invoke-direct {p0}, Lnubia/fancydrawable/TimeDrawable;->onTimeChanged()V

    .line 161
    iget v1, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableWidth:I

    .line 162
    .local v1, "availableWidth":I
    iget v0, p0, Lnubia/fancydrawable/TimeDrawable;->mAvailableHeight:I

    .line 164
    .local v0, "availableHeight":I
    div-int/lit8 v8, v1, 0x2

    .line 165
    .local v8, "x":I
    div-int/lit8 v9, v0, 0x2

    .line 167
    .local v9, "y":I
    iget-object v2, p0, Lnubia/fancydrawable/TimeDrawable;->mDialDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 168
    .local v2, "dial":Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 169
    .local v7, "w":I
    iget-object v10, p0, Lnubia/fancydrawable/TimeDrawable;->mDial:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 170
    .local v3, "h":I
    if-lt v1, v7, :cond_2

    if-ge v0, v3, :cond_3

    .line 171
    :cond_2
    int-to-float v10, v1

    int-to-float v11, v7

    div-float/2addr v10, v11

    int-to-float v11, v0

    int-to-float v12, v3

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 174
    .local v6, "scale":F
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {p1, v6, v6, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 176
    .end local v6    # "scale":F
    :cond_3
    div-int/lit8 v10, v7, 0x2

    sub-int v10, v8, v10

    div-int/lit8 v11, v3, 0x2

    sub-int v11, v9, v11

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v8

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v9

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 179
    iget v10, p0, Lnubia/fancydrawable/TimeDrawable;->mHours:F

    const/high16 v11, 0x41400000    # 12.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x43b40000    # 360.0f

    mul-float/2addr v10, v11

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 180
    iget-object v4, p0, Lnubia/fancydrawable/TimeDrawable;->mHourHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 181
    .local v4, "hourHand":Landroid/graphics/drawable/Drawable;
    div-int/lit8 v10, v7, 0x2

    sub-int v10, v8, v10

    div-int/lit8 v11, v3, 0x2

    sub-int v11, v9, v11

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v8

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v9

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    iget v10, p0, Lnubia/fancydrawable/TimeDrawable;->mMinutes:F

    const/high16 v11, 0x42700000    # 60.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x43b40000    # 360.0f

    mul-float/2addr v10, v11

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 186
    iget-object v5, p0, Lnubia/fancydrawable/TimeDrawable;->mMinuteHandDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 187
    .local v5, "minuteHand":Landroid/graphics/drawable/Drawable;
    div-int/lit8 v10, v7, 0x2

    sub-int v10, v8, v10

    div-int/lit8 v11, v3, 0x2

    sub-int v11, v9, v11

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v8

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v9

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    return-void
.end method

.method public getTime_zone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->time_zone:Ljava/lang/String;

    return-object v0
.end method

.method public pageChange()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public pauseRun()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public resumeRun()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lnubia/fancydrawable/TimeDrawable;->startToRun()V

    .line 213
    return-void
.end method

.method public setTime_zone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lnubia/fancydrawable/TimeDrawable;->time_zone:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public startToRun()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_0
    return-void
.end method

.method public timeChange()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    :cond_0
    return-void
.end method