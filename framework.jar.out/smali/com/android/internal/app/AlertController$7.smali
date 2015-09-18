.class Lcom/android/internal/app/AlertController$7;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->createNubiaAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;I)V
    .locals 0

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/android/internal/app/AlertController$7;->this$0:Lcom/android/internal/app/AlertController;

    iput p2, p0, Lcom/android/internal/app/AlertController$7;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1241
    iget v0, p0, Lcom/android/internal/app/AlertController$7;->val$type:I

    packed-switch v0, :pswitch_data_0

    .line 1251
    :goto_0
    return-void

    .line 1243
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$7;->this$0:Lcom/android/internal/app/AlertController;

    # invokes: Lcom/android/internal/app/AlertController;->createEnterAnimation()V
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1800(Lcom/android/internal/app/AlertController;)V

    goto :goto_0

    .line 1246
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$7;->this$0:Lcom/android/internal/app/AlertController;

    # invokes: Lcom/android/internal/app/AlertController;->createExitAnimation()V
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1900(Lcom/android/internal/app/AlertController;)V

    goto :goto_0

    .line 1241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
