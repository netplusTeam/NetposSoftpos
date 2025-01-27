.class public abstract Lcom/sleepycat/je/utilint/StoppableThread;
.super Ljava/lang/Thread;
.source "StoppableThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/StoppableThread$UncaughtHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_INTERRUPT_WAIT_MS:I = 0x2710

.field private static final WAIT_FOR_SHUTDOWN_MS:I = 0x7530


# instance fields
.field protected final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private savedShutdownException:Ljava/lang/Exception;

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private totalCpuTime:J

.field private totalUserTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 55
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "threadName"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .param p4, "threadName"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput-object v0, p0, Lcom/sleepycat/je/utilint/StoppableThread;->savedShutdownException:Ljava/lang/Exception;

    .line 70
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->totalCpuTime:J

    .line 73
    iput-wide v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->totalUserTime:J

    .line 109
    iput-object p1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 115
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/utilint/StoppableThread;->setDaemon(Z)V

    .line 117
    if-nez p2, :cond_0

    new-instance v1, Lcom/sleepycat/je/utilint/StoppableThread$UncaughtHandler;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/utilint/StoppableThread$UncaughtHandler;-><init>(Lcom/sleepycat/je/utilint/StoppableThread;Lcom/sleepycat/je/utilint/StoppableThread$1;)V

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 118
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/utilint/StoppableThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p3, "threadName"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static handleUncaughtException(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "useLogger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "t"    # Ljava/lang/Thread;
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 202
    if-eqz p0, :cond_3

    .line 203
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getName()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "envName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exited unexpectedly with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "message":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_1
    if-eqz p1, :cond_2

    .line 215
    invoke-static {p0, p1, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_2
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 226
    .end local v0    # "envName":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 227
    return-void

    .line 234
    :cond_4
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNCAUGHT_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v0, p1, v1, p3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    .line 249
    :cond_5
    nop

    .line 250
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExceptionListener()Lcom/sleepycat/je/ExceptionListener;

    move-result-object v0

    .line 252
    .local v0, "exceptionListener":Lcom/sleepycat/je/ExceptionListener;
    if-eqz v0, :cond_6

    .line 253
    nop

    .line 255
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInvalidatingException()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v1, v2}, Lcom/sleepycat/je/DbInternal;->makeExceptionEvent(Ljava/lang/Exception;Ljava/lang/String;)Lcom/sleepycat/je/ExceptionEvent;

    move-result-object v1

    .line 253
    invoke-interface {v0, v1}, Lcom/sleepycat/je/ExceptionListener;->exceptionThrown(Lcom/sleepycat/je/ExceptionEvent;)V

    .line 257
    :cond_6
    return-void
.end method

.method private waitForExit(Ljava/util/logging/Logger;)V
    .locals 6
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 402
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StoppableThread;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 406
    return-void

    .line 410
    :cond_0
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/utilint/StoppableThread;->join(J)V

    .line 412
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StoppableThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 413
    return-void

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Soft shutdown failed for thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "ms, resorting to interrupt in wait-for-shutdown."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StoppableThread;->interrupt()V

    .line 428
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/utilint/StoppableThread;->join(J)V

    .line 430
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StoppableThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 431
    return-void

    .line 439
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shutdown via interrupt FAILED during wait-for-shutdown. Thread still alive despite waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {p1, v1, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fullThreadDump(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;)V

    .line 447
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    if-eqz v1, :cond_3

    .line 449
    new-instance v1, Lcom/sleepycat/je/EnvironmentWedgedException;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/EnvironmentWedgedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e1":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted during wait-for-shutdown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 457
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 402
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected cleanup()V
    .locals 0

    .line 187
    return-void
.end method

.method protected abstract getLogger()Ljava/util/logging/Logger;
.end method

.method public getSavedShutdownException()Ljava/lang/Exception;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StoppableThread;->savedShutdownException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getTotalCpuTime()J
    .locals 2

    .line 482
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/StoppableThread;->totalCpuTime:J

    return-wide v0
.end method

.method public getTotalUserTime()J
    .locals 2

    .line 490
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/StoppableThread;->totalUserTime:J

    return-wide v0
.end method

.method protected initiateSoftShutdown()I
    .locals 1

    .line 474
    const/4 v0, -0x1

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StoppableThread;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public saveShutdownException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "shutdownException"    # Ljava/lang/Exception;

    .line 136
    iput-object p1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->savedShutdownException:Ljava/lang/Exception;

    .line 137
    return-void
.end method

.method protected shutdownDone(Ljava/util/logging/Logger;)Z
    .locals 3
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 174
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StoppableThread;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    return v1

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/StoppableThread;->waitForExit(Ljava/util/logging/Logger;)V

    .line 179
    return v2
.end method

.method public shutdownThread(Ljava/util/logging/Logger;)V
    .locals 7
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 314
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    .line 315
    .local v0, "threadBean":Ljava/lang/management/ThreadMXBean;
    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->isThreadCpuTimeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StoppableThread;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/lang/management/ThreadMXBean;->getThreadCpuTime(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->totalCpuTime:J

    .line 317
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StoppableThread;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/lang/management/ThreadMXBean;->getThreadUserTime(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->totalUserTime:J

    goto :goto_0

    .line 318
    :cond_0
    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->isCurrentThreadCpuTimeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 320
    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->getCurrentThreadCpuTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->totalCpuTime:J

    .line 321
    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->getCurrentThreadUserTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->totalUserTime:J

    .line 324
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 326
    return-void

    .line 330
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StoppableThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " soft shutdown initiated."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StoppableThread;->initiateSoftShutdown()I

    move-result v1

    .line 339
    .local v1, "waitMs":I
    if-ltz v1, :cond_3

    .line 340
    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/je/utilint/StoppableThread;->join(J)V

    .line 343
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StoppableThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 344
    iget-object v2, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has exited."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 345
    return-void

    .line 348
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Soft shutdown failed for thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms resorting to interrupt."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StoppableThread;->interrupt()V

    .line 360
    if-lez v1, :cond_5

    mul-int/lit8 v2, v1, 0x2

    int-to-long v2, v2

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x2710

    .line 363
    .local v2, "joinWaitTime":J
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/je/utilint/StoppableThread;->join(J)V

    .line 365
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StoppableThread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_6

    .line 366
    iget-object v4, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shutdown via interrupt."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 368
    return-void

    .line 376
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shutdown via interrupt FAILED. Thread still alive despite waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {p1, v5, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 382
    iget-object v5, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->fullThreadDump(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;)V

    .line 384
    iget-object v5, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    if-eqz v5, :cond_7

    .line 386
    new-instance v5, Lcom/sleepycat/je/EnvironmentWedgedException;

    iget-object v6, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v5, v6, v4}, Lcom/sleepycat/je/EnvironmentWedgedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v1    # "waitMs":I
    .end local v2    # "joinWaitTime":J
    .end local v4    # "msg":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e1":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/sleepycat/je/utilint/StoppableThread;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupted while shutting down thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 394
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :goto_2
    return-void
.end method
