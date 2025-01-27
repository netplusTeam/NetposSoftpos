.class public final Lio/netty/handler/ssl/OpenSslServerSessionContext;
.super Lio/netty/handler/ssl/OpenSslSessionContext;
.source "OpenSslServerSessionContext.java"


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V
    .locals 0
    .param p1, "context"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .param p2, "provider"    # Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    .line 29
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslSessionContext;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getSessionCacheSize()I
    .locals 3

    .line 73
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 74
    .local v0, "readerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 76
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->getSessionCacheSize(J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v1, v1

    .line 78
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    return v1

    .line 78
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    throw v1
.end method

.method public getSessionTimeout()I
    .locals 3

    .line 48
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 49
    .local v0, "readerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 51
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->getSessionCacheTimeout(J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v1, v1

    .line 53
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    return v1

    .line 53
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    throw v1
.end method

.method public isSessionCacheEnabled()Z
    .locals 5

    .line 97
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 98
    .local v0, "readerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 100
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->getSessionCacheMode(J)J

    move-result-wide v1

    sget-wide v3, Lio/netty/internal/tcnative/SSL;->SSL_SESS_CACHE_SERVER:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 102
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    return v1

    .line 102
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    throw v1
.end method

.method public setSessionCacheEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 84
    if-eqz p1, :cond_0

    sget-wide v0, Lio/netty/internal/tcnative/SSL;->SSL_SESS_CACHE_SERVER:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lio/netty/internal/tcnative/SSL;->SSL_SESS_CACHE_OFF:J

    .line 86
    .local v0, "mode":J
    :goto_0
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 87
    .local v2, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 89
    :try_start_0
    iget-object v3, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v3, v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v3, v4, v0, v1}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheMode(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 92
    throw v3
.end method

.method public setSessionCacheSize(I)V
    .locals 5
    .param p1, "size"    # I

    .line 59
    if-ltz p1, :cond_0

    .line 62
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 63
    .local v0, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 65
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    int-to-long v3, p1

    invoke-static {v1, v2, v3, v4}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheSize(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 68
    nop

    .line 69
    return-void

    .line 67
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 68
    throw v1

    .line 60
    .end local v0    # "writerLock":Ljava/util/concurrent/locks/Lock;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setSessionIdContext([B)Z
    .locals 3
    .param p1, "sidCtx"    # [B

    .line 116
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 117
    .local v0, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 119
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2, p1}, Lio/netty/internal/tcnative/SSLContext;->setSessionIdContext(J[B)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    return v1

    .line 121
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    throw v1
.end method

.method public setSessionTimeout(I)V
    .locals 5
    .param p1, "seconds"    # I

    .line 34
    if-ltz p1, :cond_0

    .line 37
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v0, v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 38
    .local v0, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 40
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslServerSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    int-to-long v3, p1

    invoke-static {v1, v2, v3, v4}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheTimeout(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 43
    nop

    .line 44
    return-void

    .line 42
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 43
    throw v1

    .line 35
    .end local v0    # "writerLock":Ljava/util/concurrent/locks/Lock;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
