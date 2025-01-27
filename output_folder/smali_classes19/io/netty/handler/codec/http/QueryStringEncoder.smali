.class public Lio/netty/handler/codec/http/QueryStringEncoder;
.super Ljava/lang/Object;
.source "QueryStringEncoder.java"


# static fields
.field private static final CHAR_MAP:[C

.field private static final WRITE_UTF_UNKNOWN:B = 0x3ft


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private hasParams:Z

.field private final uriBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/QueryStringEncoder;->CHAR_MAP:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 53
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/QueryStringEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "charset"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    .line 63
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    .line 64
    return-void
.end method

.method private appendEncoded(I)V
    .locals 2
    .param p1, "b"    # I

    .line 221
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->forDigit(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lio/netty/handler/codec/http/QueryStringEncoder;->forDigit(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    return-void
.end method

.method private static dontNeedEncoding(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 247
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private encodeComponent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 86
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeUtf8Component(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeNonUtf8Component(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    return-void
.end method

.method private encodeNonUtf8Component(Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 127
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 128
    .local v3, "c":C
    invoke-static {v3}, Lio/netty/handler/codec/http/QueryStringEncoder;->dontNeedEncoding(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 132
    :cond_0
    const/4 v4, 0x0

    .line 133
    .local v4, "index":I
    if-nez v0, :cond_1

    .line 134
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v1

    new-array v0, v5, [C

    .line 138
    :cond_1
    aput-char v3, v0, v4

    .line 139
    add-int/lit8 v4, v4, 0x1

    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 141
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v3, v5

    invoke-static {v5}, Lio/netty/handler/codec/http/QueryStringEncoder;->dontNeedEncoding(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    :cond_2
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    iget-object v7, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 145
    .local v5, "bytes":[B
    array-length v7, v5

    :goto_1
    if-ge v6, v7, :cond_3

    aget-byte v8, v5, v6

    .line 146
    .local v8, "b":B
    invoke-direct {p0, v8}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 145
    .end local v8    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 149
    .end local v3    # "c":C
    .end local v4    # "index":I
    .end local v5    # "bytes":[B
    :cond_3
    :goto_2
    goto :goto_0

    .line 150
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_4
    return-void
.end method

.method private encodeUtf8Component(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 157
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 158
    .local v2, "c":C
    invoke-static {v2}, Lio/netty/handler/codec/http/QueryStringEncoder;->dontNeedEncoding(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeUtf8Component(Ljava/lang/CharSequence;II)V

    .line 160
    return-void

    .line 156
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 164
    return-void
.end method

.method private encodeUtf8Component(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "encodingStart"    # I
    .param p3, "len"    # I

    .line 167
    if-lez p2, :cond_0

    .line 169
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeUtf8ComponentSlow(Ljava/lang/CharSequence;II)V

    .line 172
    return-void
.end method

.method private encodeUtf8ComponentSlow(Ljava/lang/CharSequence;II)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 175
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_6

    .line 176
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 177
    .local v1, "c":C
    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 178
    invoke-static {v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->dontNeedEncoding(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 181
    :cond_0
    invoke-direct {p0, v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    goto :goto_1

    .line 183
    :cond_1
    const/16 v3, 0x800

    if-ge v1, v3, :cond_2

    .line 184
    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 185
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    goto :goto_1

    .line 186
    :cond_2
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v3

    const/16 v4, 0x3f

    if-eqz v3, :cond_5

    .line 187
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 188
    invoke-direct {p0, v4}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 189
    goto :goto_1

    .line 192
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 193
    invoke-direct {p0, v4}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 194
    goto :goto_2

    .line 197
    :cond_4
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v1, v2}, Lio/netty/handler/codec/http/QueryStringEncoder;->writeUtf8Surrogate(CC)V

    goto :goto_1

    .line 199
    :cond_5
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 200
    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 201
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 175
    .end local v1    # "c":C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    :cond_6
    :goto_2
    return-void
.end method

.method private static forDigit(I)C
    .locals 2
    .param p0, "digit"    # I

    .line 232
    sget-object v0, Lio/netty/handler/codec/http/QueryStringEncoder;->CHAR_MAP:[C

    and-int/lit8 v1, p0, 0xf

    aget-char v0, v0, v1

    return v0
.end method

.method private writeUtf8Surrogate(CC)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "c2"    # C

    .line 207
    invoke-static {p2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    const/16 v1, 0x3f

    if-nez v0, :cond_1

    .line 208
    invoke-direct {p0, v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 209
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-direct {p0, v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 210
    return-void

    .line 212
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 214
    .local v0, "codePoint":I
    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-direct {p0, v2}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 215
    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v1

    or-int/lit16 v2, v2, 0x80

    invoke-direct {p0, v2}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 216
    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x80

    invoke-direct {p0, v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 217
    and-int/lit8 v1, v0, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-direct {p0, v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    .line 218
    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 70
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-boolean v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->hasParams:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->hasParams:Z

    .line 78
    :goto_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeComponent(Ljava/lang/CharSequence;)V

    .line 79
    if-eqz p2, :cond_1

    .line 80
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeComponent(Ljava/lang/CharSequence;)V

    .line 83
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/QueryStringEncoder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
