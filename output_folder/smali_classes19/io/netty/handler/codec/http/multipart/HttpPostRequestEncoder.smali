.class public Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;
.super Ljava/lang/Object;
.source "HttpPostRequestEncoder.java"

# interfaces
.implements Lio/netty/handler/stream/ChunkedInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$WrappedFullHttpRequest;,
        Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$WrappedHttpRequest;,
        Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;,
        Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/stream/ChunkedInput<",
        "Lio/netty/handler/codec/http/HttpContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final percentEncodings:[Ljava/util/Map$Entry;


# instance fields
.field private final bodyListDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private final charset:Ljava/nio/charset/Charset;

.field private currentBuffer:Lio/netty/buffer/ByteBuf;

.field private currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

.field private currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

.field private duringMixedMode:Z

.field private final encoderMode:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

.field private final factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

.field private globalBodySize:J

.field private globalProgress:J

.field private headerFinalized:Z

.field private isChunked:Z

.field private isKey:Z

.field private isLastChunk:Z

.field private isLastChunkSent:Z

.field private final isMultipart:Z

.field private iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field multipartDataBoundary:Ljava/lang/String;

.field final multipartHttpDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field multipartMixedBoundary:Ljava/lang/String;

.field private final request:Lio/netty/handler/codec/http/HttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 102
    const-string v2, "\\*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "%2A"

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 103
    const-string v2, "\\+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "%20"

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 104
    const-string v2, "~"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "%7E"

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->percentEncodings:[Ljava/util/Map$Entry;

    .line 106
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpRequest;Z)V
    .locals 6
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "multipart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 170
    new-instance v1, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;

    const-wide/16 v2, 0x4000

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    sget-object v4, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    sget-object v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->RFC1738:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Z)V
    .locals 6
    .param p1, "factory"    # Lio/netty/handler/codec/http/multipart/HttpDataFactory;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p3, "multipart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 189
    sget-object v4, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    sget-object v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->RFC1738:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;)V
    .locals 2
    .param p1, "factory"    # Lio/netty/handler/codec/http/multipart/HttpDataFactory;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p3, "multipart"    # Z
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "encoderMode"    # Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    .line 213
    const-string v0, "request"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    .line 214
    const-string v0, "charset"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    .line 215
    const-string v0, "factory"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    .line 216
    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->TRACE:Lio/netty/handler/codec/http/HttpMethod;

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    .line 223
    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    .line 224
    iput-boolean p3, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    .line 226
    iput-object p5, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encoderMode:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    .line 227
    if-eqz p3, :cond_0

    .line 228
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->initDataMultipart()V

    .line 230
    :cond_0
    return-void

    .line 217
    :cond_1
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    const-string v1, "Cannot create a Encoder if request is a TRACE"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateRemainingSize()I
    .locals 2

    .line 1112
    const/16 v0, 0x1fa0

    .line 1113
    .local v0, "size":I
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_0

    .line 1114
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1116
    :cond_0
    return v0
.end method

.method private encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 837
    if-nez p1, :cond_0

    .line 838
    const-string v0, ""

    return-object v0

    .line 841
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "encoded":Ljava/lang/String;
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encoderMode:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->RFC3986:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    if-ne v1, v2, :cond_1

    .line 843
    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->percentEncodings:[Ljava/util/Map$Entry;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 844
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 845
    .local v5, "replacement":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 843
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Ljava/lang/String;>;"
    .end local v5    # "replacement":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 848
    :cond_1
    return-object v0

    .line 849
    .end local v0    # "encoded":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encodeNextChunkMultipart(I)Lio/netty/handler/codec/http/HttpContent;
    .locals 5
    .param p1, "sizeleft"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 895
    return-object v1

    .line 898
    :cond_0
    instance-of v2, v0, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    if-eqz v2, :cond_1

    .line 899
    check-cast v0, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->toByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 900
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    goto :goto_0

    .line 903
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_1
    :try_start_0
    check-cast v0, Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->getChunk(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .restart local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    nop

    .line 907
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    if-nez v2, :cond_2

    .line 909
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 910
    return-object v1

    .line 913
    :cond_2
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    if-nez v2, :cond_3

    .line 914
    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 916
    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Lio/netty/buffer/ByteBuf;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-static {v3}, Lio/netty/buffer/Unpooled;->wrappedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    iput-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    .line 918
    :goto_1
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    const/16 v3, 0x1fa0

    if-ge v2, v3, :cond_4

    .line 919
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 920
    return-object v1

    .line 922
    :cond_4
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 923
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v1

    .line 904
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encodeNextChunkUrlEncoded(I)Lio/netty/handler/codec/http/HttpContent;
    .locals 12
    .param p1, "sizeleft"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 938
    return-object v1

    .line 940
    :cond_0
    move v2, p1

    .line 944
    .local v2, "size":I
    iget-boolean v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    const/4 v4, 0x3

    const/16 v5, 0x1fa0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_2

    .line 945
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 947
    .local v3, "buffer":Lio/netty/buffer/ByteBuf;
    iput-boolean v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    .line 948
    iget-object v9, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    const-string v10, "="

    if-nez v9, :cond_1

    .line 949
    new-array v9, v6, [Lio/netty/buffer/ByteBuf;

    aput-object v3, v9, v7

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v9}, Lio/netty/buffer/Unpooled;->wrappedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v9

    iput-object v9, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 951
    :cond_1
    new-array v11, v4, [Lio/netty/buffer/ByteBuf;

    aput-object v9, v11, v7

    aput-object v3, v11, v8

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v9

    aput-object v9, v11, v6

    invoke-static {v11}, Lio/netty/buffer/Unpooled;->wrappedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v9

    iput-object v9, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    .line 954
    :goto_0
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    add-int/2addr v9, v8

    sub-int/2addr v2, v9

    .line 955
    iget-object v9, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    if-lt v9, v5, :cond_2

    .line 956
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 957
    .end local v3    # "buffer":Lio/netty/buffer/ByteBuf;
    .local v1, "buffer":Lio/netty/buffer/ByteBuf;
    new-instance v3, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v3, v1}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v3

    .line 963
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_2
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    check-cast v0, Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, v2}, Lio/netty/handler/codec/http/multipart/HttpData;->getChunk(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    nop

    .line 969
    const/4 v3, 0x0

    .line 970
    .local v3, "delimiter":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    if-ge v9, v2, :cond_4

    .line 971
    iput-boolean v8, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    .line 972
    iget-object v9, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "&"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v9

    goto :goto_1

    :cond_3
    move-object v9, v1

    :goto_1
    move-object v3, v9

    .line 976
    :cond_4
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v9

    if-nez v9, :cond_9

    .line 977
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 978
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    if-nez v4, :cond_6

    .line 979
    if-nez v3, :cond_5

    .line 980
    return-object v1

    .line 982
    :cond_5
    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    goto :goto_2

    .line 985
    :cond_6
    if-eqz v3, :cond_7

    .line 986
    new-array v6, v6, [Lio/netty/buffer/ByteBuf;

    aput-object v4, v6, v7

    aput-object v3, v6, v8

    invoke-static {v6}, Lio/netty/buffer/Unpooled;->wrappedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    .line 989
    :cond_7
    :goto_2
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-lt v4, v5, :cond_8

    .line 990
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 991
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v1

    .line 993
    :cond_8
    return-object v1

    .line 997
    :cond_9
    iget-object v9, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    if-nez v9, :cond_b

    .line 998
    if-eqz v3, :cond_a

    .line 999
    new-array v4, v6, [Lio/netty/buffer/ByteBuf;

    aput-object v0, v4, v7

    aput-object v3, v4, v8

    invoke-static {v4}, Lio/netty/buffer/Unpooled;->wrappedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    goto :goto_3

    .line 1001
    :cond_a
    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    goto :goto_3

    .line 1004
    :cond_b
    if-eqz v3, :cond_c

    .line 1005
    new-array v4, v4, [Lio/netty/buffer/ByteBuf;

    aput-object v9, v4, v7

    aput-object v0, v4, v8

    aput-object v3, v4, v6

    invoke-static {v4}, Lio/netty/buffer/Unpooled;->wrappedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    goto :goto_3

    .line 1007
    :cond_c
    new-array v4, v6, [Lio/netty/buffer/ByteBuf;

    aput-object v9, v4, v7

    aput-object v0, v4, v8

    invoke-static {v4}, Lio/netty/buffer/Unpooled;->wrappedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    .line 1012
    :goto_3
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-ge v4, v5, :cond_d

    .line 1013
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 1014
    iput-boolean v8, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    .line 1015
    return-object v1

    .line 1018
    :cond_d
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 1019
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v1

    .line 964
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    .end local v3    # "delimiter":Lio/netty/buffer/ByteBuf;
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fillByteBuf()Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 872
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 873
    .local v0, "length":I
    const/16 v1, 0x1fa0

    if-le v0, v1, :cond_0

    .line 874
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, v1}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1

    .line 877
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    .line 878
    .local v1, "slice":Lio/netty/buffer/ByteBuf;
    const/4 v2, 0x0

    iput-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    .line 879
    return-object v1
.end method

.method private static getNewMultipartDelimiter()Ljava/lang/String;
    .locals 2

    .line 293
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDataMultipart()V
    .locals 1

    .line 277
    invoke-static {}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->getNewMultipartDelimiter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    .line 278
    return-void
.end method

.method private initMixedMultipart()V
    .locals 1

    .line 284
    invoke-static {}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->getNewMultipartDelimiter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 285
    return-void
.end method

.method private lastChunk()Lio/netty/handler/codec/http/HttpContent;
    .locals 2

    .line 1120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    .line 1121
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    if-nez v1, :cond_0

    .line 1122
    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    .line 1124
    sget-object v0, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    return-object v0

    .line 1127
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    .line 1128
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lio/netty/buffer/ByteBuf;

    .line 1129
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v1
.end method

.method private nextChunk()Lio/netty/handler/codec/http/HttpContent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 1062
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    if-eqz v0, :cond_0

    .line 1063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    .line 1064
    sget-object v0, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    return-object v0

    .line 1067
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->calculateRemainingSize()I

    move-result v0

    .line 1068
    .local v0, "size":I
    if-gtz v0, :cond_1

    .line 1070
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 1071
    .local v1, "buffer":Lio/netty/buffer/ByteBuf;
    new-instance v2, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v2, v1}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v2

    .line 1074
    .end local v1    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_1
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    if-eqz v1, :cond_4

    .line 1077
    iget-boolean v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v1, :cond_2

    .line 1078
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkMultipart(I)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    .local v1, "chunk":Lio/netty/handler/codec/http/HttpContent;
    goto :goto_0

    .line 1080
    .end local v1    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    :cond_2
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkUrlEncoded(I)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    .line 1082
    .restart local v1    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    :goto_0
    if-eqz v1, :cond_3

    .line 1084
    return-object v1

    .line 1086
    :cond_3
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->calculateRemainingSize()I

    move-result v0

    .line 1088
    .end local v1    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    :cond_4
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1089
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->lastChunk()Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    return-object v1

    .line 1091
    :cond_5
    :goto_1
    if-lez v0, :cond_8

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1092
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 1094
    iget-boolean v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v1, :cond_6

    .line 1095
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkMultipart(I)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    .restart local v1    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    goto :goto_2

    .line 1097
    .end local v1    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    :cond_6
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkUrlEncoded(I)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    .line 1099
    .restart local v1    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    :goto_2
    if-nez v1, :cond_7

    .line 1101
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->calculateRemainingSize()I

    move-result v0

    .line 1102
    goto :goto_1

    .line 1105
    :cond_7
    return-object v1

    .line 1108
    .end local v1    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    :cond_8
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->lastChunk()Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addBodyAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 338
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 339
    .local v0, "svalue":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    const-string v3, "name"

    invoke-static {p1, v3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v1

    .line 340
    .local v1, "data":Lio/netty/handler/codec/http/multipart/Attribute;
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 341
    return-void
.end method

.method public addBodyFileUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "isText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 361
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyFileUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 362
    return-void
.end method

.method public addBodyFileUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "isText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 385
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v0, "name"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    const-string v0, "file"

    invoke-static {v2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 387
    if-nez p2, :cond_0

    .line 388
    const-string v0, ""

    move-object v13, v0

    .end local p2    # "filename":Ljava/lang/String;
    .local v0, "filename":Ljava/lang/String;
    goto :goto_0

    .line 387
    .end local v0    # "filename":Ljava/lang/String;
    .restart local p2    # "filename":Ljava/lang/String;
    :cond_0
    move-object/from16 v13, p2

    .line 390
    .end local p2    # "filename":Ljava/lang/String;
    .local v13, "filename":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p4

    .line 391
    .local v0, "scontentType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 392
    .local v3, "contentTransferEncoding":Ljava/lang/String;
    if-nez p4, :cond_2

    .line 393
    if-eqz p5, :cond_1

    .line 394
    const-string v0, "text/plain"

    move-object v14, v0

    goto :goto_1

    .line 396
    :cond_1
    const-string v0, "application/octet-stream"

    move-object v14, v0

    goto :goto_1

    .line 392
    :cond_2
    move-object v14, v0

    .line 399
    .end local v0    # "scontentType":Ljava/lang/String;
    .local v14, "scontentType":Ljava/lang/String;
    :goto_1
    if-nez p5, :cond_3

    .line 400
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_2

    .line 399
    :cond_3
    move-object v15, v3

    .line 402
    .end local v3    # "contentTransferEncoding":Ljava/lang/String;
    .local v15, "contentTransferEncoding":Ljava/lang/String;
    :goto_2
    iget-object v3, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v4, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    const/4 v9, 0x0

    .line 403
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 402
    move-object/from16 v5, p1

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    invoke-interface/range {v3 .. v11}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createFileUpload(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v3

    .line 405
    .local v3, "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    :try_start_0
    invoke-interface {v3, v2}, Lio/netty/handler/codec/http/multipart/FileUpload;->setContent(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    nop

    .line 409
    invoke-virtual {v1, v3}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 410
    return-void

    .line 406
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 407
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v4, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public addBodyFileUploads(Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;[Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # [Ljava/io/File;
    .param p3, "contentType"    # [Ljava/lang/String;
    .param p4, "isText"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 430
    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_1

    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Different array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 434
    aget-object v1, p2, v0

    aget-object v2, p3, v0

    aget-boolean v3, p4, v0

    invoke-virtual {p0, p1, v1, v2, v3}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyFileUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public addBodyHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 17
    .param p1, "data"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 447
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->headerFinalized:Z

    if-nez v0, :cond_13

    .line 450
    iget-object v0, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    const-string v3, "data"

    invoke-static {v2, v3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-boolean v0, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 452
    instance-of v0, v2, Lio/netty/handler/codec/http/multipart/Attribute;

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_0

    .line 453
    move-object v6, v2

    check-cast v6, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 456
    .local v6, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    :try_start_0
    invoke-interface {v6}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v7}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v6}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v7, v8}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "value":Ljava/lang/String;
    iget-object v8, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v9, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v8, v9, v0, v7}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v8

    .line 459
    .local v8, "newattribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-object v9, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    iget-wide v9, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v8}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    int-to-long v11, v11

    invoke-interface {v8}, Lio/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v13

    add-long/2addr v11, v13

    add-long/2addr v11, v4

    add-long/2addr v9, v11

    iput-wide v9, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v0    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "newattribute":Lio/netty/handler/codec/http/multipart/Attribute;
    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v3, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 464
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    :cond_0
    instance-of v0, v2, Lio/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v0, :cond_1

    .line 466
    move-object v0, v2

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 468
    .local v0, "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v6, v7}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v7, v8}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    .line 470
    .restart local v7    # "value":Ljava/lang/String;
    iget-object v8, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v9, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v8, v9, v6, v7}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v8

    .line 471
    .restart local v8    # "newattribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-object v9, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    iget-wide v9, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v8}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    int-to-long v11, v11

    invoke-interface {v8}, Lio/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v13

    add-long/2addr v11, v13

    add-long/2addr v11, v4

    add-long/2addr v9, v11

    iput-wide v9, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    goto :goto_1

    .line 464
    .end local v0    # "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "newattribute":Lio/netty/handler/codec/http/multipart/Attribute;
    :cond_1
    :goto_0
    nop

    .line 474
    :goto_1
    return-void

    .line 508
    :cond_2
    instance-of v0, v2, Lio/netty/handler/codec/http/multipart/Attribute;

    const/16 v4, 0x3d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "\"\r\n"

    const-string v8, "=\""

    const-string v9, "--"

    const-string v10, "; "

    const-string v11, ": "

    const-string v12, "\r\n"

    if-eqz v0, :cond_6

    .line 509
    iget-boolean v0, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    if-eqz v0, :cond_3

    .line 510
    new-instance v0, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    iget-object v3, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3}, Lio/netty/handler/codec/http/multipart/InternalAttribute;-><init>(Ljava/nio/charset/Charset;)V

    .line 511
    .local v0, "internal":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\r\n--"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v13, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 512
    iget-object v3, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iput-object v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 514
    iput-object v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 515
    iput-boolean v5, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    .line 517
    .end local v0    # "internal":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    :cond_3
    new-instance v0, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    iget-object v3, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3}, Lio/netty/handler/codec/http/multipart/InternalAttribute;-><init>(Ljava/nio/charset/Charset;)V

    .line 518
    .restart local v0    # "internal":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    iget-object v3, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 520
    invoke-virtual {v0, v12}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 522
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 524
    move-object v3, v2

    check-cast v3, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 525
    .local v3, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_DISPOSITION:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->FORM_DATA:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->NAME:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 526
    invoke-interface {v3}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 525
    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 529
    invoke-interface {v3}, Lio/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 528
    invoke-virtual {v0, v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 530
    invoke-interface {v3}, Lio/netty/handler/codec/http/multipart/Attribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    .line 531
    .local v5, "localcharset":Ljava/nio/charset/Charset;
    if-eqz v5, :cond_5

    .line 533
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "text/plain"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderValues;->CHARSET:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-virtual {v0, v4}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 539
    :cond_5
    invoke-virtual {v0, v12}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 540
    iget-object v4, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v4, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    iget-wide v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v3}, Lio/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v8

    invoke-virtual {v0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .end local v0    # "internal":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    .end local v3    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v5    # "localcharset":Ljava/nio/charset/Charset;
    goto/16 :goto_6

    .line 543
    :cond_6
    instance-of v0, v2, Lio/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v0, :cond_12

    .line 544
    move-object v0, v2

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 545
    .local v0, "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    new-instance v13, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    iget-object v14, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v13, v14}, Lio/netty/handler/codec/http/multipart/InternalAttribute;-><init>(Ljava/nio/charset/Charset;)V

    .line 546
    .local v13, "internal":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    iget-object v14, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 548
    invoke-virtual {v13, v12}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 551
    :cond_7
    iget-boolean v14, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    const-string v15, "\r\n\r\n"

    if-eqz v14, :cond_9

    .line 552
    iget-object v3, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 555
    const/4 v3, 0x1

    move-object v4, v15

    .local v3, "localMixed":Z
    goto/16 :goto_3

    .line 562
    .end local v3    # "localMixed":Z
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v14, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 563
    iget-object v3, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    iput-object v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 567
    new-instance v3, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    iget-object v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v3, v6}, Lio/netty/handler/codec/http/multipart/InternalAttribute;-><init>(Ljava/nio/charset/Charset;)V

    move-object v13, v3

    .line 568
    invoke-virtual {v13, v12}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 569
    const/4 v3, 0x0

    .line 571
    .restart local v3    # "localMixed":Z
    iput-object v0, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 572
    iput-boolean v5, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    move-object v4, v15

    goto/16 :goto_3

    .line 575
    .end local v3    # "localMixed":Z
    :cond_9
    iget-object v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encoderMode:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    sget-object v14, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->HTML5:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    if-eq v6, v14, :cond_c

    iget-object v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v6, :cond_c

    .line 576
    invoke-interface {v6}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 597
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->initMixedMultipart()V

    .line 598
    iget-object v5, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    .line 599
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v14, 0x2

    sub-int/2addr v6, v14

    .line 598
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    .line 601
    .local v5, "pastAttribute":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    iget-wide v3, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-virtual {v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v6

    move-object/from16 v16, v15

    int-to-long v14, v6

    sub-long/2addr v3, v14

    iput-wide v3, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    .line 603
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x8b

    iget-object v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v14, 0x2

    mul-int/2addr v6, v14

    add-int/2addr v4, v6

    .line 604
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 606
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 608
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_DISPOSITION:Lio/netty/util/AsciiString;

    .line 610
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 611
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->FORM_DATA:Lio/netty/util/AsciiString;

    .line 612
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 613
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->NAME:Lio/netty/util/AsciiString;

    .line 614
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 615
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 616
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 617
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    .line 619
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 620
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->MULTIPART_MIXED:Lio/netty/util/AsciiString;

    .line 621
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 622
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->BOUNDARY:Lio/netty/util/AsciiString;

    .line 623
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 624
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 625
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 626
    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 628
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v14, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 629
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 630
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v14, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_DISPOSITION:Lio/netty/util/AsciiString;

    .line 632
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 633
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v14, Lio/netty/handler/codec/http/HttpHeaderValues;->ATTACHMENT:Lio/netty/util/AsciiString;

    .line 634
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 636
    .local v3, "replacement":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    .line 637
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lio/netty/handler/codec/http/HttpHeaderValues;->FILENAME:Lio/netty/util/AsciiString;

    .line 638
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 639
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 640
    invoke-interface {v15}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    .line 641
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    :cond_a
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v5, v14, v15}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->setValue(Ljava/lang/String;I)V

    .line 647
    const-string v14, ""

    const/4 v15, 0x2

    invoke-virtual {v5, v14, v15}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->setValue(Ljava/lang/String;I)V

    .line 650
    iget-wide v14, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-virtual {v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v6

    move-object/from16 v16, v5

    .end local v5    # "pastAttribute":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    .local v16, "pastAttribute":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    int-to-long v5, v6

    add-long/2addr v14, v5

    iput-wide v14, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 656
    const/4 v5, 0x1

    .line 657
    .local v5, "localMixed":Z
    const/4 v6, 0x1

    iput-boolean v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    .line 658
    .end local v3    # "replacement":Ljava/lang/StringBuilder;
    .end local v16    # "pastAttribute":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    move v3, v5

    goto :goto_3

    .line 576
    .end local v5    # "localMixed":Z
    :cond_b
    move-object v4, v15

    goto :goto_2

    .line 575
    :cond_c
    move-object v4, v15

    .line 662
    :goto_2
    const/4 v3, 0x0

    .line 663
    .local v3, "localMixed":Z
    iput-object v0, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 664
    iput-boolean v5, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    .line 668
    :goto_3
    if-eqz v3, :cond_e

    .line 671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 673
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_DISPOSITION:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->ATTACHMENT:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 679
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_DISPOSITION:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->ATTACHMENT:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->FILENAME:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 681
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-virtual {v13, v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 684
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 686
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_DISPOSITION:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->FORM_DATA:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->NAME:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 689
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 688
    invoke-virtual {v13, v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto :goto_4

    .line 693
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_DISPOSITION:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->FORM_DATA:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->NAME:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 694
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->FILENAME:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 695
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 693
    invoke-virtual {v13, v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 699
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 700
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 699
    invoke-virtual {v13, v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 705
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v5

    .line 706
    .local v5, "contentTransferEncoding":Ljava/lang/String;
    if-eqz v5, :cond_10

    sget-object v6, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    .line 707
    invoke-virtual {v6}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 708
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    .line 709
    invoke-virtual {v7}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 708
    invoke-virtual {v13, v4}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto :goto_5

    .line 710
    :cond_10
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 711
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderValues;->CHARSET:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto :goto_5

    .line 713
    :cond_11
    invoke-virtual {v13, v4}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 715
    :goto_5
    iget-object v4, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    iget-object v4, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    iget-wide v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v8

    invoke-virtual {v13}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    goto :goto_7

    .line 543
    .end local v0    # "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    .end local v3    # "localMixed":Z
    .end local v5    # "contentTransferEncoding":Ljava/lang/String;
    .end local v13    # "internal":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    :cond_12
    :goto_6
    nop

    .line 719
    :goto_7
    return-void

    .line 448
    :cond_13
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    const-string v3, "Cannot add value once finalized"

    invoke-direct {v0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cleanFiles()V
    .locals 2

    .line 236
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->cleanRequestHttpData(Lio/netty/handler/codec/http/HttpRequest;)V

    .line 237
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1026
    return-void
.end method

.method public finalizeRequest()Lio/netty/handler/codec/http/HttpRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 738
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->headerFinalized:Z

    if-nez v0, :cond_d

    .line 739
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 740
    new-instance v0, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2}, Lio/netty/handler/codec/http/multipart/InternalAttribute;-><init>(Ljava/nio/charset/Charset;)V

    .line 741
    .local v0, "internal":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    iget-boolean v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    const-string v3, "\r\n--"

    if-eqz v2, :cond_0

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 744
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    .line 745
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 747
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 748
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    .line 749
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-virtual {v0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 751
    .end local v0    # "internal":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->headerFinalized:Z

    .line 756
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    .line 757
    .local v2, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 758
    .local v3, "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v4}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    .line 759
    .local v4, "transferEncoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 760
    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v5}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 761
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 763
    .local v6, "contentType":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, "lowercased":Ljava/lang/String;
    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderValues;->MULTIPART_FORM_DATA:Lio/netty/util/AsciiString;

    invoke-virtual {v8}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderValues;->APPLICATION_X_WWW_FORM_URLENCODED:Lio/netty/util/AsciiString;

    .line 765
    invoke-virtual {v8}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 768
    :cond_2
    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v8, v6}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 770
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "lowercased":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0

    .line 772
    :cond_4
    iget-boolean v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v5, :cond_5

    .line 773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->MULTIPART_FORM_DATA:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->BOUNDARY:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 775
    .local v5, "value":Ljava/lang/String;
    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v6, v5}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 776
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_2

    .line 778
    :cond_5
    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->APPLICATION_X_WWW_FORM_URLENCODED:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v5, v6}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 781
    :goto_2
    iget-wide v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 782
    .local v5, "realSize":J
    iget-boolean v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-nez v7, :cond_6

    .line 783
    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 785
    :cond_6
    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    iput-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    .line 787
    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 788
    const-wide/16 v7, 0x1fa0    # 4.0E-320

    cmp-long v7, v5, v7

    if-gtz v7, :cond_a

    iget-boolean v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v7, :cond_7

    goto :goto_3

    .line 806
    :cond_7
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->nextChunk()Lio/netty/handler/codec/http/HttpContent;

    move-result-object v0

    .line 807
    .local v0, "chunk":Lio/netty/handler/codec/http/HttpContent;
    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    instance-of v8, v7, Lio/netty/handler/codec/http/FullHttpRequest;

    if-eqz v8, :cond_9

    .line 808
    move-object v1, v7

    check-cast v1, Lio/netty/handler/codec/http/FullHttpRequest;

    .line 809
    .local v1, "fullRequest":Lio/netty/handler/codec/http/FullHttpRequest;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 810
    .local v7, "chunkContent":Lio/netty/buffer/ByteBuf;
    invoke-interface {v1}, Lio/netty/handler/codec/http/FullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    if-eq v8, v7, :cond_8

    .line 811
    invoke-interface {v1}, Lio/netty/handler/codec/http/FullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-virtual {v8, v7}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 812
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 814
    :cond_8
    return-object v1

    .line 816
    .end local v1    # "fullRequest":Lio/netty/handler/codec/http/FullHttpRequest;
    .end local v7    # "chunkContent":Lio/netty/buffer/ByteBuf;
    :cond_9
    new-instance v7, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$WrappedFullHttpRequest;

    iget-object v8, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {v7, v8, v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$WrappedFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/HttpContent;Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$1;)V

    return-object v7

    .line 789
    .end local v0    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    :cond_a
    :goto_3
    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isChunked:Z

    .line 790
    if-eqz v4, :cond_c

    .line 791
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 792
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 793
    .local v7, "v":Ljava/lang/CharSequence;
    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderValues;->CHUNKED:Lio/netty/util/AsciiString;

    invoke-virtual {v8, v7}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_5

    .line 796
    :cond_b
    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v8, v7}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 798
    .end local v7    # "v":Ljava/lang/CharSequence;
    :goto_5
    goto :goto_4

    .line 800
    :cond_c
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-static {v1, v0}, Lio/netty/handler/codec/http/HttpUtil;->setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 803
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$WrappedHttpRequest;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$WrappedHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpRequest;)V

    return-object v0

    .line 753
    .end local v2    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    .end local v3    # "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "transferEncoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "realSize":J
    :cond_d
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    const-string v1, "Header already encoded"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBodyListAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 825
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isChunked:Z

    return v0
.end method

.method public isEndOfInput()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1134
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    return v0
.end method

.method public isMultipart()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    return v0
.end method

.method public length()J
    .locals 4

    .line 1139
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public progress()J
    .locals 2

    .line 1144
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalProgress:J

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/HttpContent;
    .locals 5
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1044
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    if-eqz v0, :cond_0

    .line 1045
    const/4 v0, 0x0

    return-object v0

    .line 1047
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->nextChunk()Lio/netty/handler/codec/http/HttpContent;

    move-result-object v0

    .line 1048
    .local v0, "nextChunk":Lio/netty/handler/codec/http/HttpContent;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalProgress:J

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalProgress:J

    .line 1049
    return-object v0
.end method

.method public readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http/HttpContent;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1031
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readChunk(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object p1

    return-object p1
.end method

.method public setBodyHttpDatas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    .line 314
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/InterfaceHttpData;>;"
    const-string v0, "datas"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    .line 316
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    .line 319
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 321
    .local v1, "data":Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 322
    .end local v1    # "data":Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method
