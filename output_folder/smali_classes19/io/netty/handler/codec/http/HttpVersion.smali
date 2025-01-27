.class public Lio/netty/handler/codec/http/HttpVersion;
.super Ljava/lang/Object;
.source "HttpVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/netty/handler/codec/http/HttpVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

.field private static final HTTP_1_0_STRING:Ljava/lang/String; = "HTTP/1.0"

.field public static final HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

.field private static final HTTP_1_1_STRING:Ljava/lang/String; = "HTTP/1.1"

.field private static final VERSION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final bytes:[B

.field private final keepAliveDefault:Z

.field private final majorVersion:I

.field private final minorVersion:I

.field private final protocolName:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 34
    nop

    .line 35
    const-string v0, "(\\S+)/(\\d+)\\.(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpVersion;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    new-instance v0, Lio/netty/handler/codec/http/HttpVersion;

    const-string v2, "HTTP"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    .line 48
    new-instance v0, Lio/netty/handler/codec/http/HttpVersion;

    const-string v8, "HTTP"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "protocolName"    # Ljava/lang/String;
    .param p2, "majorVersion"    # I
    .param p3, "minorVersion"    # I
    .param p4, "keepAliveDefault"    # Z

    .line 145
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;IIZZ)V

    .line 146
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 3
    .param p1, "protocolName"    # Ljava/lang/String;
    .param p2, "majorVersion"    # I
    .param p3, "minorVersion"    # I
    .param p4, "keepAliveDefault"    # Z
    .param p5, "bytes"    # Z

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string v0, "protocolName"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid character in protocolName"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    .end local v0    # "i":I
    :cond_1
    const-string v0, "majorVersion"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 166
    const-string v0, "minorVersion"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 168
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpVersion;->protocolName:Ljava/lang/String;

    .line 169
    iput p2, p0, Lio/netty/handler/codec/http/HttpVersion;->majorVersion:I

    .line 170
    iput p3, p0, Lio/netty/handler/codec/http/HttpVersion;->minorVersion:I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->text:Ljava/lang/String;

    .line 172
    iput-boolean p4, p0, Lio/netty/handler/codec/http/HttpVersion;->keepAliveDefault:Z

    .line 174
    if-eqz p5, :cond_2

    .line 175
    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->bytes:[B

    goto :goto_1

    .line 177
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->bytes:[B

    .line 179
    :goto_1
    return-void

    .line 155
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty protocolName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "keepAliveDefault"    # Z

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string v0, "text"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lio/netty/handler/codec/http/HttpVersion;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 119
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpVersion;->protocolName:Ljava/lang/String;

    .line 124
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/netty/handler/codec/http/HttpVersion;->majorVersion:I

    .line 125
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lio/netty/handler/codec/http/HttpVersion;->minorVersion:I

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpVersion;->text:Ljava/lang/String;

    .line 127
    iput-boolean p2, p0, Lio/netty/handler/codec/http/HttpVersion;->keepAliveDefault:Z

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpVersion;->bytes:[B

    .line 129
    return-void

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid version format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 59
    const-string v0, "text"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpVersion;->version0(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    .line 76
    .local v0, "version":Lio/netty/handler/codec/http/HttpVersion;
    if-nez v0, :cond_0

    .line 77
    new-instance v1, Lio/netty/handler/codec/http/HttpVersion;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lio/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 79
    :cond_0
    return-object v0

    .line 64
    .end local v0    # "version":Lio/netty/handler/codec/http/HttpVersion;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is empty (possibly HTTP/0.9)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static version0(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 83
    const-string v0, "HTTP/1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    return-object v0

    .line 86
    :cond_0
    const-string v0, "HTTP/1.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    return-object v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lio/netty/handler/codec/http/HttpVersion;)I
    .locals 3
    .param p1, "o"    # Lio/netty/handler/codec/http/HttpVersion;

    .line 245
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->protocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpVersion;->protocolName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "v":I
    if-eqz v0, :cond_0

    .line 247
    return v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v1

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v2

    sub-int/2addr v1, v2

    .line 251
    .end local v0    # "v":I
    .local v1, "v":I
    if-eqz v1, :cond_1

    .line 252
    return v1

    .line 255
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result v2

    sub-int/2addr v0, v2

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lio/netty/handler/codec/http/HttpVersion;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpVersion;->compareTo(Lio/netty/handler/codec/http/HttpVersion;)I

    move-result p1

    return p1
.end method

.method encode(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 259
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->bytes:[B

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->text:Ljava/lang/String;

    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 264
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 233
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpVersion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 234
    return v1

    .line 237
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/HttpVersion;

    .line 238
    .local v0, "that":Lio/netty/handler/codec/http/HttpVersion;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 239
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 240
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->protocolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpVersion;->protocolName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 238
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 227
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->protocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 228
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    return v0
.end method

.method public isKeepAliveDefault()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpVersion;->keepAliveDefault:Z

    return v0
.end method

.method public majorVersion()I
    .locals 1

    .line 192
    iget v0, p0, Lio/netty/handler/codec/http/HttpVersion;->majorVersion:I

    return v0
.end method

.method public minorVersion()I
    .locals 1

    .line 199
    iget v0, p0, Lio/netty/handler/codec/http/HttpVersion;->minorVersion:I

    return v0
.end method

.method public protocolName()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->protocolName:Ljava/lang/String;

    return-object v0
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpVersion;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpVersion;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
