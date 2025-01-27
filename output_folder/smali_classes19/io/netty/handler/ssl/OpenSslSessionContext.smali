.class public abstract Lio/netty/handler/ssl/OpenSslSessionContext;
.super Ljava/lang/Object;
.source "OpenSslSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslSessionContext$EmptyEnumeration;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field final context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

.field private final provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

.field private final stats:Lio/netty/handler/ssl/OpenSslSessionStats;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lio/netty/handler/ssl/OpenSslSessionContext$EmptyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/OpenSslSessionContext$EmptyEnumeration;-><init>(Lio/netty/handler/ssl/OpenSslSessionContext$1;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslSessionContext;->EMPTY:Ljava/util/Enumeration;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V
    .locals 1
    .param p1, "context"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .param p2, "provider"    # Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 51
    iput-object p2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    .line 52
    new-instance v0, Lio/netty/handler/ssl/OpenSslSessionStats;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionStats;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->stats:Lio/netty/handler/ssl/OpenSslSessionStats;

    .line 53
    return-void
.end method


# virtual methods
.method final destroy()V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 135
    :cond_0
    return-void
.end method

.method public getIds()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    .line 63
    sget-object v0, Lio/netty/handler/ssl/OpenSslSessionContext;->EMPTY:Ljava/util/Enumeration;

    return-object v0
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 1
    .param p1, "bytes"    # [B

    .line 57
    const-string v0, "bytes"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isSessionCacheEnabled()Z
.end method

.method public abstract setSessionCacheEnabled(Z)V
.end method

.method public setTicketKeys([B)V
    .locals 7
    .param p1, "keys"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_1

    .line 75
    array-length v0, p1

    div-int/lit8 v0, v0, 0x30

    new-array v0, v0, [Lio/netty/internal/tcnative/SessionTicketKey;

    .line 76
    .local v0, "tickets":[Lio/netty/internal/tcnative/SessionTicketKey;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 77
    const/16 v3, 0x10

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 78
    .local v4, "name":[B
    add-int/lit8 v2, v2, 0x10

    .line 79
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 80
    .local v5, "hmacKey":[B
    add-int/lit8 v1, v1, 0x10

    .line 81
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 82
    .local v6, "aesKey":[B
    add-int/2addr v2, v3

    .line 83
    new-instance v3, Lio/netty/internal/tcnative/SessionTicketKey;

    invoke-direct {v3, v4, v5, v6}, Lio/netty/internal/tcnative/SessionTicketKey;-><init>([B[B[B)V

    aput-object v3, v0, v1

    .line 76
    .end local v4    # "name":[B
    .end local v5    # "hmacKey":[B
    .end local v6    # "aesKey":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    .end local v2    # "a":I
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 86
    .local v1, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 88
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    invoke-static {v2, v3, v4}, Lio/netty/internal/tcnative/SSLContext;->clearOptions(JI)V

    .line 89
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSLContext;->setSessionTicketKeys(J[Lio/netty/internal/tcnative/SessionTicketKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 92
    throw v2

    .line 73
    .end local v0    # "tickets":[Lio/netty/internal/tcnative/SessionTicketKey;
    .end local v1    # "writerLock":Ljava/util/concurrent/locks/Lock;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keys.length % 48 != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setTicketKeys([Lio/netty/handler/ssl/OpenSslSessionTicketKey;)V
    .locals 5
    .param p1, "keys"    # [Lio/netty/handler/ssl/OpenSslSessionTicketKey;

    .line 99
    const-string v0, "keys"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    array-length v0, p1

    new-array v0, v0, [Lio/netty/internal/tcnative/SessionTicketKey;

    .line 101
    .local v0, "ticketKeys":[Lio/netty/internal/tcnative/SessionTicketKey;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 102
    aget-object v2, p1, v1

    iget-object v2, v2, Lio/netty/handler/ssl/OpenSslSessionTicketKey;->key:Lio/netty/internal/tcnative/SessionTicketKey;

    aput-object v2, v0, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-object v1, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 105
    .local v1, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 107
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    invoke-static {v2, v3, v4}, Lio/netty/internal/tcnative/SSLContext;->clearOptions(JI)V

    .line 108
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->context:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    iget-wide v2, v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSLContext;->setSessionTicketKeys(J[Lio/netty/internal/tcnative/SessionTicketKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 111
    throw v2
.end method

.method public stats()Lio/netty/handler/ssl/OpenSslSessionStats;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionContext;->stats:Lio/netty/handler/ssl/OpenSslSessionStats;

    return-object v0
.end method
