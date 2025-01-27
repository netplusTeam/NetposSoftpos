.class public Lcom/sleepycat/je/ExceptionEvent;
.super Ljava/lang/Object;
.source "ExceptionEvent.java"


# instance fields
.field private exception:Ljava/lang/Exception;

.field private threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/je/ExceptionEvent;->exception:Ljava/lang/Exception;

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/ExceptionEvent;->threadName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "threadName"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sleepycat/je/ExceptionEvent;->exception:Ljava/lang/Exception;

    .line 29
    iput-object p2, p0, Lcom/sleepycat/je/ExceptionEvent;->threadName:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sleepycat/je/ExceptionEvent;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sleepycat/je/ExceptionEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<ExceptionEvent exception=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lcom/sleepycat/je/ExceptionEvent;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "\" threadName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/sleepycat/je/ExceptionEvent;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/sleepycat/je/ExceptionEvent;->exception:Ljava/lang/Exception;

    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
