.class Lorg/jpos/q2/Q2$2;
.super Ljava/lang/Thread;
.source "Q2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/q2/Q2;->addShutdownHook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/q2/Q2;


# direct methods
.method constructor <init>(Lorg/jpos/q2/Q2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/Q2;
    .param p2, "x0"    # Ljava/lang/String;

    .line 438
    iput-object p1, p0, Lorg/jpos/q2/Q2$2;->this$0:Lorg/jpos/q2/Q2;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 440
    iget-object v0, p0, Lorg/jpos/q2/Q2$2;->this$0:Lorg/jpos/q2/Q2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jpos/q2/Q2;->access$302(Lorg/jpos/q2/Q2;Z)Z

    .line 441
    iget-object v0, p0, Lorg/jpos/q2/Q2$2;->this$0:Lorg/jpos/q2/Q2;

    invoke-static {v0}, Lorg/jpos/q2/Q2;->access$400(Lorg/jpos/q2/Q2;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 442
    iget-object v0, p0, Lorg/jpos/q2/Q2$2;->this$0:Lorg/jpos/q2/Q2;

    invoke-static {v0}, Lorg/jpos/q2/Q2;->access$500(Lorg/jpos/q2/Q2;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/jpos/q2/Q2$2;->this$0:Lorg/jpos/q2/Q2;

    invoke-static {v0}, Lorg/jpos/q2/Q2;->access$600(Lorg/jpos/q2/Q2;)Lorg/jpos/util/Log;

    move-result-object v0

    const-string v1, "shutting down (hook)"

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 445
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/Q2$2;->this$0:Lorg/jpos/q2/Q2;

    invoke-static {v0}, Lorg/jpos/q2/Q2;->access$500(Lorg/jpos/q2/Q2;)Ljava/lang/Thread;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    goto :goto_0

    .line 446
    :catch_1
    move-exception v0

    .line 456
    :cond_0
    :goto_0
    return-void
.end method
