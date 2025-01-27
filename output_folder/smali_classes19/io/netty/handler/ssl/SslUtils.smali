.class final Lio/netty/handler/ssl/SslUtils;
.super Ljava/lang/Object;
.source "SslUtils.java"


# static fields
.field static final DEFAULT_CIPHER_SUITES:[Ljava/lang/String;

.field static final DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

.field static final INVALID_CIPHER:Ljava/lang/String; = "SSL_NULL_WITH_NULL_NULL"

.field static final NOT_ENCRYPTED:I = -0x2

.field static final NOT_ENOUGH_DATA:I = -0x1

.field static final PROTOCOL_SSL_V2:Ljava/lang/String; = "SSLv2"

.field static final PROTOCOL_SSL_V2_HELLO:Ljava/lang/String; = "SSLv2Hello"

.field static final PROTOCOL_SSL_V3:Ljava/lang/String; = "SSLv3"

.field static final PROTOCOL_TLS_V1:Ljava/lang/String; = "TLSv1"

.field static final PROTOCOL_TLS_V1_1:Ljava/lang/String; = "TLSv1.1"

.field static final PROTOCOL_TLS_V1_2:Ljava/lang/String; = "TLSv1.2"

.field static final PROTOCOL_TLS_V1_3:Ljava/lang/String; = "TLSv1.3"

.field static final SSL_CONTENT_TYPE_ALERT:I = 0x15

.field static final SSL_CONTENT_TYPE_APPLICATION_DATA:I = 0x17

.field static final SSL_CONTENT_TYPE_CHANGE_CIPHER_SPEC:I = 0x14

.field static final SSL_CONTENT_TYPE_EXTENSION_HEARTBEAT:I = 0x18

.field static final SSL_CONTENT_TYPE_HANDSHAKE:I = 0x16

.field static final SSL_RECORD_HEADER_LENGTH:I = 0x5

.field static final TLSV13_CIPHERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TLSV13_CIPHER_SUITES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 45
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    const-string v2, "TLS_CHACHA20_POLY1305_SHA256"

    const-string v3, "TLS_AES_128_GCM_SHA256"

    const-string v4, "TLS_AES_128_CCM_8_SHA256"

    const-string v5, "TLS_AES_128_CCM_SHA256"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHERS:Ljava/util/Set;

    .line 102
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    .line 105
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 106
    sput-object v0, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_0
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    sput-object v0, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    .line 111
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v1, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 128
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lio/netty/handler/ssl/SslUtils;->DEFAULT_CIPHER_SUITES:[Ljava/lang/String;

    .line 129
    .end local v0    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    return-void
.end method

.method static varargs addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V
    .locals 4
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 135
    .local p0, "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "enabled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 136
    .local v2, "n":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v2    # "n":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method static getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I
    .locals 6
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I

    .line 186
    const/4 v0, 0x0

    .line 190
    .local v0, "packetLength":I
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 200
    const/4 v1, 0x0

    .local v1, "tls":Z
    goto :goto_0

    .line 196
    .end local v1    # "tls":Z
    :pswitch_0
    const/4 v1, 0x1

    .line 197
    .restart local v1    # "tls":Z
    nop

    .line 203
    :goto_0
    const/4 v2, 0x3

    if-eqz v1, :cond_1

    .line 205
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v3

    .line 206
    .local v3, "majorVersion":I
    if-ne v3, v2, :cond_0

    .line 208
    add-int/lit8 v4, p1, 0x3

    invoke-static {p0, v4}, Lio/netty/handler/ssl/SslUtils;->unsignedShortBE(Lio/netty/buffer/ByteBuf;I)I

    move-result v4

    const/4 v5, 0x5

    add-int/lit8 v0, v4, 0x5

    .line 209
    if-gt v0, v5, :cond_1

    .line 211
    const/4 v1, 0x0

    goto :goto_1

    .line 215
    :cond_0
    const/4 v1, 0x0

    .line 219
    .end local v3    # "majorVersion":I
    :cond_1
    :goto_1
    if-nez v1, :cond_6

    .line 221
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v3

    and-int/lit16 v3, v3, 0x80

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v2

    .line 222
    .local v3, "headerLength":I
    :goto_2
    add-int v5, p1, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    .line 223
    .local v5, "majorVersion":I
    if-eq v5, v4, :cond_4

    if-ne v5, v2, :cond_3

    goto :goto_3

    .line 231
    :cond_3
    const/4 v2, -0x2

    return v2

    .line 225
    :cond_4
    :goto_3
    if-ne v3, v4, :cond_5

    .line 226
    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslUtils;->shortBE(Lio/netty/buffer/ByteBuf;I)S

    move-result v2

    and-int/lit16 v2, v2, 0x7fff

    add-int/2addr v2, v4

    goto :goto_4

    :cond_5
    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslUtils;->shortBE(Lio/netty/buffer/ByteBuf;I)S

    move-result v4

    and-int/lit16 v4, v4, 0x3fff

    add-int/2addr v2, v4

    :goto_4
    move v0, v2

    .line 227
    if-gt v0, v3, :cond_6

    .line 228
    const/4 v2, -0x1

    return v2

    .line 234
    .end local v3    # "headerLength":I
    .end local v5    # "majorVersion":I
    :cond_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "packetLength":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 295
    .local v1, "pos":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lio/netty/handler/ssl/SslUtils;->unsignedByte(B)S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 305
    const/4 v2, 0x0

    .local v2, "tls":Z
    goto :goto_0

    .line 301
    .end local v2    # "tls":Z
    :pswitch_0
    const/4 v2, 0x1

    .line 302
    .restart local v2    # "tls":Z
    nop

    .line 308
    :goto_0
    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 310
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lio/netty/handler/ssl/SslUtils;->unsignedByte(B)S

    move-result v4

    .line 311
    .local v4, "majorVersion":I
    if-ne v4, v3, :cond_0

    .line 313
    add-int/lit8 v5, v1, 0x3

    invoke-static {p0, v5}, Lio/netty/handler/ssl/SslUtils;->unsignedShortBE(Ljava/nio/ByteBuffer;I)I

    move-result v5

    const/4 v6, 0x5

    add-int/lit8 v0, v5, 0x5

    .line 314
    if-gt v0, v6, :cond_1

    .line 316
    const/4 v2, 0x0

    goto :goto_1

    .line 320
    :cond_0
    const/4 v2, 0x0

    .line 324
    .end local v4    # "majorVersion":I
    :cond_1
    :goto_1
    if-nez v2, :cond_6

    .line 326
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lio/netty/handler/ssl/SslUtils;->unsignedByte(B)S

    move-result v4

    and-int/lit16 v4, v4, 0x80

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v3

    .line 327
    .local v4, "headerLength":I
    :goto_2
    add-int v6, v1, v4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-static {v6}, Lio/netty/handler/ssl/SslUtils;->unsignedByte(B)S

    move-result v6

    .line 328
    .local v6, "majorVersion":I
    if-eq v6, v5, :cond_4

    if-ne v6, v3, :cond_3

    goto :goto_3

    .line 336
    :cond_3
    const/4 v3, -0x2

    return v3

    .line 330
    :cond_4
    :goto_3
    if-ne v4, v5, :cond_5

    .line 331
    invoke-static {p0, v1}, Lio/netty/handler/ssl/SslUtils;->shortBE(Ljava/nio/ByteBuffer;I)S

    move-result v3

    and-int/lit16 v3, v3, 0x7fff

    add-int/2addr v3, v5

    goto :goto_4

    :cond_5
    invoke-static {p0, v1}, Lio/netty/handler/ssl/SslUtils;->shortBE(Ljava/nio/ByteBuffer;I)S

    move-result v5

    and-int/lit16 v5, v5, 0x3fff

    add-int/2addr v3, v5

    :goto_4
    move v0, v3

    .line 332
    if-gt v0, v4, :cond_6

    .line 333
    const/4 v3, -0x1

    return v3

    .line 339
    .end local v4    # "headerLength":I
    .end local v6    # "majorVersion":I
    :cond_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 267
    aget-object v0, p0, p1

    .line 270
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 271
    invoke-static {v0}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1

    .line 275
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 278
    .local v1, "tmp":Ljava/nio/ByteBuffer;
    :goto_0
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    aget-object p1, p0, p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 280
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 282
    :cond_1
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 283
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_2

    .line 286
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 287
    invoke-static {v1}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 283
    :cond_2
    move p1, v2

    goto :goto_0
.end method

.method static handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V
    .locals 1
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "notify"    # Z

    .line 345
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 346
    if-eqz p2, :cond_0

    .line 347
    new-instance v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 349
    :cond_0
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 350
    return-void
.end method

.method static isTLSv13Cipher(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cipher"    # Ljava/lang/String;

    .line 397
    sget-object v0, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isValidHostNameForSNI(Ljava/lang/String;)Z
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;

    .line 385
    if-eqz p0, :cond_0

    const/16 v0, 0x2e

    .line 386
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    return v0
.end method

.method private static shortBE(Lio/netty/buffer/ByteBuf;I)S
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I

    .line 247
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShortLE(I)S

    move-result v0

    .line 247
    :goto_0
    return v0
.end method

.method private static shortBE(Ljava/nio/ByteBuffer;I)S
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 262
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->swapShort(S)S

    move-result v0

    .line 262
    :goto_0
    return v0
.end method

.method static toBase64(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;

    .line 375
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 376
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    sget-object v4, Lio/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/netty/handler/codec/base64/Base64Dialect;

    .line 375
    const/4 v3, 0x1

    move-object v0, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;IIZLio/netty/handler/codec/base64/Base64Dialect;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 377
    .local v0, "dst":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 378
    return-object v0
.end method

.method static toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 161
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_0

    .line 162
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    return-object v0
.end method

.method private static unsignedByte(B)S
    .locals 1
    .param p0, "b"    # B

    .line 252
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static unsignedShortBE(Lio/netty/buffer/ByteBuf;I)I
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I

    .line 240
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedShortLE(I)I

    move-result v0

    .line 240
    :goto_0
    return v0
.end method

.method private static unsignedShortBE(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 257
    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslUtils;->shortBE(Ljava/nio/ByteBuffer;I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method static useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p0, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "fallbackCiphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    .local v1, "cipher":Ljava/lang/String;
    const-string v2, "SSL_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_RC4_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v1    # "cipher":Ljava/lang/String;
    goto :goto_0

    .line 151
    :cond_2
    return-void
.end method

.method static varargs useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fallbackCiphers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 154
    .local p0, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/ssl/SslUtils;->useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;Ljava/lang/Iterable;)V

    .line 155
    return-void
.end method

.method static zeroout(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 356
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/ByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    .line 359
    :cond_0
    return-void
.end method

.method static zerooutAndRelease(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 365
    invoke-static {p0}, Lio/netty/handler/ssl/SslUtils;->zeroout(Lio/netty/buffer/ByteBuf;)V

    .line 366
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 367
    return-void
.end method
