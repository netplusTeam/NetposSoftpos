.class Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;
.super Ljava/lang/Object;
.source "DbSync.java"

# interfaces
.implements Lcom/sleepycat/je/rep/StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/DbSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusListener"
.end annotation


# instance fields
.field activeLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/DbSync;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/utilint/DbSync;)V
    .locals 1

    .line 314
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;->this$0:Lcom/sleepycat/je/rep/utilint/DbSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;->activeLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/utilint/DbSync;Lcom/sleepycat/je/rep/utilint/DbSync$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/utilint/DbSync;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/utilint/DbSync$1;

    .line 314
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;-><init>(Lcom/sleepycat/je/rep/utilint/DbSync;)V

    return-void
.end method


# virtual methods
.method public awaitActiveState()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;->activeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 338
    return-void
.end method

.method public stateChange(Lcom/sleepycat/je/rep/StateChangeEvent;)V
    .locals 3
    .param p1, "stateChangeEvent"    # Lcom/sleepycat/je/rep/StateChangeEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/sleepycat/je/rep/utilint/DbSync$1;->$SwitchMap$com$sleepycat$je$rep$ReplicatedEnvironment$State:[I

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/StateChangeEvent;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 327
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;->this$0:Lcom/sleepycat/je/rep/utilint/DbSync;

    .line 328
    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/DbSync;->access$100(Lcom/sleepycat/je/rep/utilint/DbSync;)Lcom/sleepycat/je/rep/ReplicationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disconnected from group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :pswitch_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;->activeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 325
    nop

    .line 332
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
