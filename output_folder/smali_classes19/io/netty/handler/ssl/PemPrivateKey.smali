.class public final Lio/netty/handler/ssl/PemPrivateKey;
.super Lio/netty/util/AbstractReferenceCounted;
.source "PemPrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lio/netty/handler/ssl/PemEncoded;


# static fields
.field private static final BEGIN_PRIVATE_KEY:[B

.field private static final END_PRIVATE_KEY:[B

.field private static final PKCS8_FORMAT:Ljava/lang/String; = "PKCS#8"

.field private static final serialVersionUID:J = 0x6eb79c9d9ba22f38L


# instance fields
.field private final content:Lio/netty/buffer/ByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "-----BEGIN PRIVATE KEY-----\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/PemPrivateKey;->BEGIN_PRIVATE_KEY:[B

    .line 47
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "\n-----END PRIVATE KEY-----\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/PemPrivateKey;->END_PRIVATE_KEY:[B

    return-void
.end method

.method private constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 124
    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    .line 125
    const-string v0, "content"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/handler/ssl/PemPrivateKey;->content:Lio/netty/buffer/ByteBuf;

    .line 126
    return-void
.end method

.method static toPEM(Lio/netty/buffer/ByteBufAllocator;ZLjava/security/PrivateKey;)Lio/netty/handler/ssl/PemEncoded;
    .locals 4
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "useDirect"    # Z
    .param p2, "key"    # Ljava/security/PrivateKey;

    .line 59
    instance-of v0, p2, Lio/netty/handler/ssl/PemEncoded;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p2

    check-cast v0, Lio/netty/handler/ssl/PemEncoded;

    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    invoke-interface {p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    .line 64
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    .line 68
    invoke-static {p0, p1, v0}, Lio/netty/handler/ssl/PemPrivateKey;->toPEM(Lio/netty/buffer/ByteBufAllocator;Z[B)Lio/netty/handler/ssl/PemEncoded;

    move-result-object v1

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not support encoding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static toPEM(Lio/netty/buffer/ByteBufAllocator;Z[B)Lio/netty/handler/ssl/PemEncoded;
    .locals 7
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "useDirect"    # Z
    .param p2, "bytes"    # [B

    .line 72
    invoke-static {p2}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 74
    .local v0, "encoded":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-static {p0, v0}, Lio/netty/handler/ssl/SslUtils;->toBase64(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 76
    .local v1, "base64":Lio/netty/buffer/ByteBuf;
    :try_start_1
    sget-object v2, Lio/netty/handler/ssl/PemPrivateKey;->BEGIN_PRIVATE_KEY:[B

    array-length v3, v2

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Lio/netty/handler/ssl/PemPrivateKey;->END_PRIVATE_KEY:[B

    array-length v5, v4

    add-int/2addr v3, v5

    .line 78
    .local v3, "size":I
    const/4 v5, 0x0

    .line 79
    .local v5, "success":Z
    if-eqz p1, :cond_0

    invoke-interface {p0, v3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-interface {p0, v3}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .local v6, "pem":Lio/netty/buffer/ByteBuf;
    :goto_0
    :try_start_2
    invoke-virtual {v6, v2}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 82
    invoke-virtual {v6, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 83
    invoke-virtual {v6, v4}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 85
    new-instance v2, Lio/netty/handler/ssl/PemValue;

    const/4 v4, 0x1

    invoke-direct {v2, v6, v4}, Lio/netty/handler/ssl/PemValue;-><init>(Lio/netty/buffer/ByteBuf;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .local v2, "value":Lio/netty/handler/ssl/PemValue;
    const/4 v4, 0x1

    .line 87
    .end local v5    # "success":Z
    .local v4, "success":Z
    nop

    .line 90
    if-nez v4, :cond_1

    .line 91
    :try_start_3
    invoke-static {v6}, Lio/netty/handler/ssl/SslUtils;->zerooutAndRelease(Lio/netty/buffer/ByteBuf;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :cond_1
    :try_start_4
    invoke-static {v1}, Lio/netty/handler/ssl/SslUtils;->zerooutAndRelease(Lio/netty/buffer/ByteBuf;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 98
    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->zerooutAndRelease(Lio/netty/buffer/ByteBuf;)V

    .line 87
    return-object v2

    .line 90
    .end local v2    # "value":Lio/netty/handler/ssl/PemValue;
    .end local v4    # "success":Z
    .restart local v5    # "success":Z
    :catchall_0
    move-exception v2

    if-nez v5, :cond_2

    .line 91
    :try_start_5
    invoke-static {v6}, Lio/netty/handler/ssl/SslUtils;->zerooutAndRelease(Lio/netty/buffer/ByteBuf;)V

    .line 93
    :cond_2
    nop

    .end local v0    # "encoded":Lio/netty/buffer/ByteBuf;
    .end local v1    # "base64":Lio/netty/buffer/ByteBuf;
    .end local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "useDirect":Z
    .end local p2    # "bytes":[B
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 95
    .end local v3    # "size":I
    .end local v5    # "success":Z
    .end local v6    # "pem":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "encoded":Lio/netty/buffer/ByteBuf;
    .restart local v1    # "base64":Lio/netty/buffer/ByteBuf;
    .restart local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "useDirect":Z
    .restart local p2    # "bytes":[B
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v1}, Lio/netty/handler/ssl/SslUtils;->zerooutAndRelease(Lio/netty/buffer/ByteBuf;)V

    .line 96
    nop

    .end local v0    # "encoded":Lio/netty/buffer/ByteBuf;
    .end local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "useDirect":Z
    .end local p2    # "bytes":[B
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 98
    .end local v1    # "base64":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "encoded":Lio/netty/buffer/ByteBuf;
    .restart local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "useDirect":Z
    .restart local p2    # "bytes":[B
    :catchall_2
    move-exception v1

    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->zerooutAndRelease(Lio/netty/buffer/ByteBuf;)V

    .line 99
    throw v1
.end method

.method public static valueOf(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemPrivateKey;
    .locals 1
    .param p0, "key"    # Lio/netty/buffer/ByteBuf;

    .line 119
    new-instance v0, Lio/netty/handler/ssl/PemPrivateKey;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/PemPrivateKey;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public static valueOf([B)Lio/netty/handler/ssl/PemPrivateKey;
    .locals 1
    .param p0, "key"    # [B

    .line 109
    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/PemPrivateKey;->valueOf(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 135
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->refCnt()I

    move-result v0

    .line 136
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 140
    iget-object v1, p0, Lio/netty/handler/ssl/PemPrivateKey;->content:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 137
    :cond_0
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v1, v0}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v1
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->copy()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->copy()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/netty/handler/ssl/PemPrivateKey;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemPrivateKey;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method protected deallocate()V
    .locals 1

    .line 189
    iget-object v0, p0, Lio/netty/handler/ssl/PemPrivateKey;->content:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->zerooutAndRelease(Lio/netty/buffer/ByteBuf;)V

    .line 190
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->refCnt()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemPrivateKey;->release(I)Z

    .line 217
    return-void
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->duplicate()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->duplicate()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 150
    iget-object v0, p0, Lio/netty/handler/ssl/PemPrivateKey;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemPrivateKey;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 204
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 228
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->refCnt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSensitive()Z
    .locals 1

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemPrivateKey;
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 160
    new-instance v0, Lio/netty/handler/ssl/PemPrivateKey;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/PemPrivateKey;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->retain()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->retain(I)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->retain()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->retain(I)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 177
    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/PemPrivateKey;

    return-object v0
.end method

.method public retain(I)Lio/netty/handler/ssl/PemPrivateKey;
    .locals 1
    .param p1, "increment"    # I

    .line 182
    invoke-super {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/PemPrivateKey;

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->retain()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->retain(I)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->retainedDuplicate()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->retainedDuplicate()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 155
    iget-object v0, p0, Lio/netty/handler/ssl/PemPrivateKey;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemPrivateKey;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->touch()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->touch()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 165
    iget-object v0, p0, Lio/netty/handler/ssl/PemPrivateKey;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    .line 166
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemPrivateKey;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lio/netty/handler/ssl/PemPrivateKey;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    .line 172
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemPrivateKey;->touch()Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method
