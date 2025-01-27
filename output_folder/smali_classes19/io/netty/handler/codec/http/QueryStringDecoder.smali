.class public Lio/netty/handler/codec/http/QueryStringDecoder;
.super Ljava/lang/Object;
.source "QueryStringDecoder.java"


# static fields
.field private static final DEFAULT_MAX_PARAMS:I = 0x400


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final maxParams:I

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private pathEndIdx:I

.field private final semicolonIsNormalChar:Z

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 80
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "hasPath"    # Z

    .line 104
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "hasPath"    # Z
    .param p4, "maxParams"    # I

    .line 112
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZIZ)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZIZ)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "hasPath"    # Z
    .param p4, "maxParams"    # I
    .param p5, "semicolonIsNormalChar"    # Z

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "uri"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    .line 122
    const-string v0, "charset"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    .line 123
    const-string v0, "maxParams"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    .line 124
    iput-boolean p5, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->semicolonIsNormalChar:Z

    .line 127
    if-eqz p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx:I

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "hasPath"    # Z

    .line 88
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .line 135
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 143
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;I)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "maxParams"    # I

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;IZ)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;IZ)V
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "maxParams"    # I
    .param p4, "semicolonIsNormalChar"    # Z

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "rawPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 161
    const-string v0, ""

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "rawQuery":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    .line 166
    const-string v2, "charset"

    invoke-static {p2, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/Charset;

    iput-object v2, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    .line 167
    const-string v2, "maxParams"

    invoke-static {p3, v2}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    .line 168
    iput-boolean p4, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->semicolonIsNormalChar:Z

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx:I

    .line 170
    return-void
.end method

.method private static addParam(Ljava/lang/String;IIILjava/util/Map;Ljava/nio/charset/Charset;)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "nameStart"    # I
    .param p2, "valueStart"    # I
    .param p3, "valueEnd"    # I
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/nio/charset/Charset;",
            ")Z"
        }
    .end annotation

    .line 275
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    if-lt p1, p3, :cond_0

    .line 276
    return v0

    .line 278
    :cond_0
    if-gt p2, p1, :cond_1

    .line 279
    add-int/lit8 p2, p3, 0x1

    .line 281
    :cond_1
    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, p1, v1, p5, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0, p2, p3, p5, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "value":Ljava/lang/String;
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 284
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 286
    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    return v3
.end method

.method public static decodeComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 304
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeComponent(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 16
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "isPath"    # Z

    .line 337
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sub-int v3, v2, v1

    .line 338
    .local v3, "len":I
    if-gtz v3, :cond_0

    .line 339
    const-string v4, ""

    return-object v4

    .line 341
    :cond_0
    const/4 v4, -0x1

    .line 342
    .local v4, "firstEscaped":I
    move/from16 v5, p1

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x2b

    const/16 v7, 0x25

    if-ge v5, v2, :cond_3

    .line 343
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 344
    .local v8, "c":C
    if-eq v8, v7, :cond_2

    if-ne v8, v6, :cond_1

    if-nez p4, :cond_1

    goto :goto_1

    .line 342
    .end local v8    # "c":C
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 345
    .restart local v8    # "c":C
    :cond_2
    :goto_1
    move v4, v5

    .line 349
    .end local v5    # "i":I
    .end local v8    # "c":C
    :cond_3
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 350
    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 354
    :cond_4
    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x3

    .line 355
    .local v5, "decodedCapacity":I
    invoke-static {v5}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v8

    .line 358
    .local v8, "buf":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    .local v9, "strBuf":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v0, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 361
    move v10, v4

    .local v10, "i":I
    :goto_2
    if-ge v10, v2, :cond_b

    .line 362
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 363
    .local v11, "c":C
    if-eq v11, v7, :cond_7

    .line 364
    if-ne v11, v6, :cond_6

    if-eqz p4, :cond_5

    goto :goto_3

    :cond_5
    const/16 v12, 0x20

    goto :goto_4

    :cond_6
    :goto_3
    move v12, v11

    :goto_4
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    move-object/from16 v15, p3

    goto :goto_7

    .line 368
    :cond_7
    const/4 v12, 0x0

    .line 370
    .local v12, "bufIdx":I
    :goto_5
    add-int/lit8 v13, v10, 0x3

    if-gt v13, v2, :cond_a

    .line 373
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "bufIdx":I
    .local v13, "bufIdx":I
    add-int/lit8 v14, v10, 0x1

    invoke-static {v0, v14}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v14

    aput-byte v14, v8, v12

    .line 374
    add-int/lit8 v10, v10, 0x3

    .line 375
    if-ge v10, v2, :cond_9

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v7, :cond_8

    goto :goto_6

    :cond_8
    move v12, v13

    goto :goto_5

    .line 376
    :cond_9
    :goto_6
    add-int/lit8 v10, v10, -0x1

    .line 378
    new-instance v12, Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v15, p3

    invoke-direct {v12, v8, v14, v13, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .end local v11    # "c":C
    .end local v13    # "bufIdx":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 371
    .restart local v11    # "c":C
    .restart local v12    # "bufIdx":I
    :cond_a
    move-object/from16 v15, p3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unterminated escape sequence at index "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " of: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 361
    .end local v11    # "c":C
    .end local v12    # "bufIdx":I
    :cond_b
    move-object/from16 v15, p3

    .line 380
    .end local v10    # "i":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 330
    if-nez p0, :cond_0

    .line 331
    const-string v0, ""

    return-object v0

    .line 333
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, v1}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeParams(Ljava/lang/String;ILjava/nio/charset/Charset;IZ)Ljava/util/Map;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "paramsLimit"    # I
    .param p4, "semicolonIsNormalChar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/nio/charset/Charset;",
            "IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 229
    .local v0, "len":I
    if-lt p1, v0, :cond_0

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    .line 233
    add-int/lit8 p1, p1, 0x1

    .line 235
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 236
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move v2, p1

    .line 237
    .local v2, "nameStart":I
    const/4 v3, -0x1

    .line 240
    .local v3, "valueStart":I
    move v4, p1

    move v8, v2

    move v9, v3

    move v10, v4

    .end local v2    # "nameStart":I
    .end local v3    # "valueStart":I
    .local v8, "nameStart":I
    .local v9, "valueStart":I
    .local v10, "i":I
    :goto_0
    if-ge v10, v0, :cond_6

    .line 241
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 243
    :sswitch_0
    if-ne v8, v10, :cond_2

    .line 244
    add-int/lit8 v2, v10, 0x1

    move v8, v2

    .end local v8    # "nameStart":I
    .restart local v2    # "nameStart":I
    goto :goto_1

    .line 245
    .end local v2    # "nameStart":I
    .restart local v8    # "nameStart":I
    :cond_2
    if-ge v9, v8, :cond_5

    .line 246
    add-int/lit8 v2, v10, 0x1

    move v9, v2

    .end local v9    # "valueStart":I
    .local v2, "valueStart":I
    goto :goto_1

    .line 250
    .end local v2    # "valueStart":I
    .restart local v9    # "valueStart":I
    :sswitch_1
    if-eqz p4, :cond_3

    .line 251
    goto :goto_1

    .line 255
    :cond_3
    :sswitch_2
    move-object v2, p0

    move v3, v8

    move v4, v9

    move v5, v10

    move-object v6, v1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lio/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/lang/String;IIILjava/util/Map;Ljava/nio/charset/Charset;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    add-int/lit8 p3, p3, -0x1

    .line 257
    if-nez p3, :cond_4

    .line 258
    return-object v1

    .line 261
    :cond_4
    add-int/lit8 v2, v10, 0x1

    .line 262
    .end local v8    # "nameStart":I
    .local v2, "nameStart":I
    move v8, v2

    goto :goto_1

    .line 264
    .end local v2    # "nameStart":I
    .restart local v8    # "nameStart":I
    :sswitch_3
    goto :goto_2

    .line 240
    :cond_5
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 269
    :cond_6
    :goto_2
    move-object v2, p0

    move v3, v8

    move v4, v9

    move v5, v10

    move-object v6, v1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lio/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/lang/String;IIILjava/util/Map;Ljava/nio/charset/Charset;)Z

    .line 270
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3b -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static findPathEndIndex(Ljava/lang/String;)I
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .line 384
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 385
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 386
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 387
    .local v2, "c":C
    const/16 v3, 0x3f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 385
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .restart local v2    # "c":C
    :cond_1
    :goto_1
    return v1

    .line 391
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_2
    return v0
.end method

.method private pathEndIdx()I
    .locals 2

    .line 220
    iget v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-static {v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->findPathEndIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx:I

    .line 223
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx:I

    return v0
.end method


# virtual methods
.method public parameters()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-direct {p0}, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx()I

    move-result v1

    iget-object v2, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    iget v3, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    iget-boolean v4, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->semicolonIsNormalChar:Z

    invoke-static {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeParams(Ljava/lang/String;ILjava/nio/charset/Charset;IZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    .line 201
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 5

    .line 188
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0}, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx()I

    move-result v2

    iget-object v3, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    .line 191
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public rawPath()Ljava/lang/String;
    .locals 3

    .line 208
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-direct {p0}, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery()Ljava/lang/String;
    .locals 2

    .line 215
    invoke-direct {p0}, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 216
    .local v0, "start":I
    iget-object v1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lio/netty/handler/codec/http/QueryStringDecoder;->uri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uri()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    return-object v0
.end method
