.class Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;
.super Landroid/database/ContentObserver;
.source "EdgeGestureFuncsCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 148
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 151
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    # invokes: Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->updateEdgeTpState()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->access$000(Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;)V

    .line 152
    return-void
.end method
