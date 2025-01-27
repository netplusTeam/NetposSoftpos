.class public abstract Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.super Ljava/lang/Object;
.source "AbstractLoggingBean.java"


# instance fields
.field protected final log:Lorg/slf4j/Logger;

.field private final simplifiedLog:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/util/logging/SimplifiedLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 43
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "discriminator"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;->simplifiedLog:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;->log:Lorg/slf4j/Logger;

    .line 59
    return-void
.end method


# virtual methods
.method protected getSimplifiedLogger()Lorg/apache/sshd/common/util/logging/SimplifiedLog;
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;->simplifiedLog:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;->simplifiedLog:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    .line 65
    .local v1, "logger":Lorg/apache/sshd/common/util/logging/SimplifiedLog;
    if-nez v1, :cond_0

    .line 66
    iget-object v2, p0, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;->log:Lorg/slf4j/Logger;

    invoke-static {v2}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->wrap(Lorg/slf4j/Logger;)Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    move-result-object v2

    move-object v1, v2

    .line 68
    :cond_0
    monitor-exit v0

    .line 70
    return-object v1

    .line 68
    .end local v1    # "logger":Lorg/apache/sshd/common/util/logging/SimplifiedLog;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
