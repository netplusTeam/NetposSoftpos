.class Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;
.super Ljava/lang/Object;
.source "ReferenceCountedOpenSslEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getDelegatedTask()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 1364
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1367
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    return-void

    .line 1372
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;->val$task:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$702(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Z)Z

    .line 1376
    nop

    .line 1377
    return-void

    .line 1375
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$702(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Z)Z

    .line 1376
    throw v1
.end method
