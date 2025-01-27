.class Lcom/sleepycat/je/utilint/StoppableThreadFactory$StoppablePoolThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "StoppableThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/StoppableThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoppablePoolThread"
.end annotation


# instance fields
.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "logger"    # Ljava/util/logging/Logger;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 73
    iput-object p4, p0, Lcom/sleepycat/je/utilint/StoppableThreadFactory$StoppablePoolThread;->logger:Ljava/util/logging/Logger;

    .line 74
    return-void
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StoppableThreadFactory$StoppablePoolThread;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method
