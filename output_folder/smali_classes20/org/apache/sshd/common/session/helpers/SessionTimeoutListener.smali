.class public Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "SessionTimeoutListener.java"

# interfaces
.implements Lorg/apache/sshd/common/session/SessionListener;
.implements Ljava/lang/Runnable;


# instance fields
.field protected final sessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/session/helpers/SessionHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->sessions:Ljava/util/Set;

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 87
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->sessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/session/helpers/SessionHelper;

    .line 89
    .local v1, "session":Lorg/apache/sshd/common/session/helpers/SessionHelper;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->checkForTimeouts()Lorg/apache/sshd/common/session/helpers/TimeoutIndicator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_1

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while checking session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeouts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 92
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v1    # "session":Lorg/apache/sshd/common/session/helpers/SessionHelper;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public sessionClosed(Lorg/apache/sshd/common/session/Session;)V
    .locals 2
    .param p1, "s"    # Lorg/apache/sshd/common/session/Session;

    .line 74
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->sessions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    const-string v1, "sessionClosed({}) un-tracked"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    const-string v1, "sessionClosed({}) not tracked"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    :cond_1
    :goto_0
    return-void
.end method

.method public sessionCreated(Lorg/apache/sshd/common/session/Session;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 46
    instance-of v0, p1, Lorg/apache/sshd/common/session/helpers/SessionHelper;

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->getAuthTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->getIdleTimeout()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->sessions:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lorg/apache/sshd/common/session/helpers/SessionHelper;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    const-string v1, "sessionCreated({}) tracking"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    const-string v1, "sessionCreated({}) not tracked"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public sessionException(Lorg/apache/sshd/common/session/Session;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 61
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 62
    const-string v2, "sessionException({}) {}: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionException("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/SessionTimeoutListener;->sessionClosed(Lorg/apache/sshd/common/session/Session;)V

    .line 69
    return-void
.end method
