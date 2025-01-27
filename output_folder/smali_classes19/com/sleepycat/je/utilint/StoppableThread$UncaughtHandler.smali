.class Lcom/sleepycat/je/utilint/StoppableThread$UncaughtHandler;
.super Ljava/lang/Object;
.source "StoppableThread.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/StoppableThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UncaughtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/utilint/StoppableThread;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/utilint/StoppableThread;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/sleepycat/je/utilint/StoppableThread$UncaughtHandler;->this$0:Lcom/sleepycat/je/utilint/StoppableThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/utilint/StoppableThread;Lcom/sleepycat/je/utilint/StoppableThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/utilint/StoppableThread;
    .param p2, "x1"    # Lcom/sleepycat/je/utilint/StoppableThread$1;

    .line 265
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/StoppableThread$UncaughtHandler;-><init>(Lcom/sleepycat/je/utilint/StoppableThread;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 273
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StoppableThread$UncaughtHandler;->this$0:Lcom/sleepycat/je/utilint/StoppableThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StoppableThread;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    .line 274
    .local v0, "useLogger":Ljava/util/logging/Logger;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StoppableThread$UncaughtHandler;->this$0:Lcom/sleepycat/je/utilint/StoppableThread;

    iget-object v1, v1, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/je/utilint/StoppableThread;->handleUncaughtException(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 275
    return-void
.end method
