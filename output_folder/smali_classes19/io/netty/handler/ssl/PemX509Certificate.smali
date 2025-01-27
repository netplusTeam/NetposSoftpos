.class public final Lio/netty/handler/ssl/PemX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "PemX509Certificate.java"

# interfaces
.implements Lio/netty/handler/ssl/PemEncoded;


# static fields
.field private static final BEGIN_CERT:[B

.field private static final END_CERT:[B


# instance fields
.field private final content:Lio/netty/buffer/ByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/PemX509Certificate;->BEGIN_CERT:[B

    .line 50
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "\n-----END CERTIFICATE-----\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/PemX509Certificate;->END_CERT:[B

    return-void
.end method

.method private constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 177
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 178
    const-string v0, "content"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    .line 179
    return-void
.end method

.method private static append(Lio/netty/buffer/ByteBufAllocator;ZLio/netty/handler/ssl/PemEncoded;ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "useDirect"    # Z
    .param p2, "encoded"    # Lio/netty/handler/ssl/PemEncoded;
    .param p3, "count"    # I
    .param p4, "pem"    # Lio/netty/buffer/ByteBuf;

    .line 108
    invoke-interface {p2}, Lio/netty/handler/ssl/PemEncoded;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 110
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    if-nez p4, :cond_0

    .line 112
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    mul-int/2addr v1, p3

    invoke-static {p0, p1, v1}, Lio/netty/handler/ssl/PemX509Certificate;->newBuffer(Lio/netty/buffer/ByteBufAllocator;ZI)Lio/netty/buffer/ByteBuf;

    move-result-object p4

    .line 115
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {p4, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 116
    return-object p4
.end method

.method private static append(Lio/netty/buffer/ByteBufAllocator;ZLjava/security/cert/X509Certificate;ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "useDirect"    # Z
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "count"    # I
    .param p4, "pem"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 126
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 128
    .local v0, "encoded":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-static {p0, v0}, Lio/netty/handler/ssl/SslUtils;->toBase64(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    .local v1, "base64":Lio/netty/buffer/ByteBuf;
    if-nez p4, :cond_0

    .line 134
    :try_start_1
    sget-object v2, Lio/netty/handler/ssl/PemX509Certificate;->BEGIN_CERT:[B

    array-length v2, v2

    .line 135
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lio/netty/handler/ssl/PemX509Certificate;->END_CERT:[B

    array-length v3, v3

    add-int/2addr v2, v3

    mul-int/2addr v2, p3

    .line 134
    invoke-static {p0, p1, v2}, Lio/netty/handler/ssl/PemX509Certificate;->newBuffer(Lio/netty/buffer/ByteBufAllocator;ZI)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    move-object p4, v2

    .line 138
    :cond_0
    sget-object v2, Lio/netty/handler/ssl/PemX509Certificate;->BEGIN_CERT:[B

    invoke-virtual {p4, v2}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 139
    invoke-virtual {p4, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 140
    sget-object v2, Lio/netty/handler/ssl/PemX509Certificate;->END_CERT:[B

    invoke-virtual {p4, v2}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    nop

    .line 145
    .end local v1    # "base64":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 146
    nop

    .line 148
    return-object p4

    .line 142
    .restart local v1    # "base64":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 143
    nop

    .end local v0    # "encoded":Lio/netty/buffer/ByteBuf;
    .end local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "useDirect":Z
    .end local p2    # "cert":Ljava/security/cert/X509Certificate;
    .end local p3    # "count":I
    .end local p4    # "pem":Lio/netty/buffer/ByteBuf;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    .end local v1    # "base64":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "encoded":Lio/netty/buffer/ByteBuf;
    .restart local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "useDirect":Z
    .restart local p2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "count":I
    .restart local p4    # "pem":Lio/netty/buffer/ByteBuf;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 146
    throw v1
.end method

.method private static newBuffer(Lio/netty/buffer/ByteBufAllocator;ZI)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "useDirect"    # Z
    .param p2, "initialCapacity"    # I

    .line 152
    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static varargs toPEM(Lio/netty/buffer/ByteBufAllocator;Z[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/PemEncoded;
    .locals 8
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "useDirect"    # Z
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 58
    if-eqz p2, :cond_6

    array-length v0, p2

    if-eqz v0, :cond_6

    .line 67
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 68
    aget-object v0, p2, v2

    .line 69
    .local v0, "first":Ljava/security/cert/X509Certificate;
    instance-of v1, v0, Lio/netty/handler/ssl/PemEncoded;

    if-eqz v1, :cond_0

    .line 70
    move-object v1, v0

    check-cast v1, Lio/netty/handler/ssl/PemEncoded;

    invoke-interface {v1}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v1

    return-object v1

    .line 74
    .end local v0    # "first":Ljava/security/cert/X509Certificate;
    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 77
    .local v1, "pem":Lio/netty/buffer/ByteBuf;
    :try_start_0
    array-length v3, p2

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p2, v4

    .line 79
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_2

    .line 83
    instance-of v6, v5, Lio/netty/handler/ssl/PemEncoded;

    if-eqz v6, :cond_1

    .line 84
    move-object v6, v5

    check-cast v6, Lio/netty/handler/ssl/PemEncoded;

    array-length v7, p2

    invoke-static {p0, p1, v6, v7, v1}, Lio/netty/handler/ssl/PemX509Certificate;->append(Lio/netty/buffer/ByteBufAllocator;ZLio/netty/handler/ssl/PemEncoded;ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    move-object v1, v6

    goto :goto_1

    .line 86
    :cond_1
    array-length v6, p2

    invoke-static {p0, p1, v5, v6, v1}, Lio/netty/handler/ssl/PemX509Certificate;->append(Lio/netty/buffer/ByteBufAllocator;ZLjava/security/cert/X509Certificate;ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    move-object v1, v6

    .line 77
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null element in chain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "pem":Lio/netty/buffer/ByteBuf;
    .end local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "useDirect":Z
    .end local p2    # "chain":[Ljava/security/cert/X509Certificate;
    throw v2

    .line 90
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "success":Z
    .restart local v1    # "pem":Lio/netty/buffer/ByteBuf;
    .restart local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "useDirect":Z
    .restart local p2    # "chain":[Ljava/security/cert/X509Certificate;
    :cond_3
    new-instance v3, Lio/netty/handler/ssl/PemValue;

    invoke-direct {v3, v1, v2}, Lio/netty/handler/ssl/PemValue;-><init>(Lio/netty/buffer/ByteBuf;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 91
    .local v2, "value":Lio/netty/handler/ssl/PemValue;
    const/4 v0, 0x1

    .line 92
    nop

    .line 95
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 92
    :cond_4
    return-object v2

    .line 95
    .end local v2    # "value":Lio/netty/handler/ssl/PemValue;
    :catchall_0
    move-exception v2

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 96
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 98
    :cond_5
    throw v2

    .line 59
    .end local v0    # "success":Z
    .end local v1    # "pem":Lio/netty/buffer/ByteBuf;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "X.509 certificate chain can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1
    .param p0, "key"    # Lio/netty/buffer/ByteBuf;

    .line 172
    new-instance v0, Lio/netty/handler/ssl/PemX509Certificate;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/PemX509Certificate;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public static valueOf([B)Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1
    .param p0, "key"    # [B

    .line 162
    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/PemX509Certificate;->valueOf(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1

    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public content()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 194
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->refCnt()I

    move-result v0

    .line 195
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 199
    iget-object v1, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 196
    :cond_0
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v1, v0}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v1
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->copy()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->copy()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 204
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemX509Certificate;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->duplicate()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->duplicate()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 209
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemX509Certificate;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 383
    if-ne p1, p0, :cond_0

    .line 384
    const/4 v0, 0x1

    return v0

    .line 385
    :cond_0
    instance-of v0, p1, Lio/netty/handler/ssl/PemX509Certificate;

    if-nez v0, :cond_1

    .line 386
    const/4 v0, 0x0

    return v0

    .line 389
    :cond_1
    move-object v0, p1

    check-cast v0, Lio/netty/handler/ssl/PemX509Certificate;

    .line 390
    .local v0, "other":Lio/netty/handler/ssl/PemX509Certificate;
    iget-object v1, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    iget-object v2, v0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getBasicConstraints()I
    .locals 1

    .line 363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    .line 348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    .line 358
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .line 313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 298
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    .line 343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSignature()[B
    .locals 1

    .line 328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    .line 353
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTBSCertificate()[B
    .locals 1

    .line 323
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVersion()I
    .locals 1

    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 395
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSensitive()Z
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public refCnt()I
    .locals 1

    .line 189
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 253
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->release(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 219
    new-instance v0, Lio/netty/handler/ssl/PemX509Certificate;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/PemX509Certificate;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->retain()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->retain(I)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->retain()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->retain(I)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 224
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 225
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1
    .param p1, "increment"    # I

    .line 230
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    .line 231
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->retain()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->retain(I)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->retainedDuplicate()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->retainedDuplicate()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 214
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/PemX509Certificate;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 400
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->touch()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/ssl/PemEncoded;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->touch()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemEncoded;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 236
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    .line 237
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemX509Certificate;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lio/netty/handler/ssl/PemX509Certificate;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    .line 243
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/netty/handler/ssl/PemX509Certificate;->touch()Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
