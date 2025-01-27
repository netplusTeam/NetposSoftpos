.class public Lcom/sleepycat/je/utilint/StoppableThreadFactory;
.super Ljava/lang/Object;
.source "StoppableThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/StoppableThreadFactory$StoppablePoolThread;
    }
.end annotation


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final logger:Ljava/util/logging/Logger;

.field private final threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/util/logging/Logger;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "logger"    # Ljava/util/logging/Logger;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/sleepycat/je/utilint/StoppableThreadFactory;->threadName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/sleepycat/je/utilint/StoppableThreadFactory;->logger:Ljava/util/logging/Logger;

    .line 46
    iput-object p1, p0, Lcom/sleepycat/je/utilint/StoppableThreadFactory;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "logger"    # Ljava/util/logging/Logger;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sleepycat/je/utilint/StoppableThreadFactory;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/util/logging/Logger;)V

    .line 55
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lcom/sleepycat/je/utilint/StoppableThreadFactory$StoppablePoolThread;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/StoppableThreadFactory;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/StoppableThreadFactory;->threadName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/StoppableThreadFactory;->logger:Ljava/util/logging/Logger;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/sleepycat/je/utilint/StoppableThreadFactory$StoppablePoolThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/logging/Logger;)V

    return-object v0
.end method
