.class Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubscriptionThreadExceptionHandler;
.super Ljava/lang/Object;
.source "SubscriptionThread.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/subscription/SubscriptionThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionThreadExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubscriptionThreadExceptionHandler;->this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Lcom/sleepycat/je/rep/subscription/SubscriptionThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/subscription/SubscriptionThread;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/subscription/SubscriptionThread$1;

    .line 944
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubscriptionThreadExceptionHandler;-><init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 948
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubscriptionThreadExceptionHandler;->this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-static {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->access$400(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " } in SubscriptionThread {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " } was uncaught.\nstack trace:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 951
    invoke-static {p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 948
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 952
    return-void
.end method
