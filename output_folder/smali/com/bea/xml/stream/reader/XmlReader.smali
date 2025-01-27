.class public final Lcom/bea/xml/stream/reader/XmlReader;
.super Ljava/io/Reader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;,
        Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;,
        Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;,
        Lcom/bea/xml/stream/reader/XmlReader$BaseReader;
    }
.end annotation


# static fields
.field private static final MAXPUSHBACK:I = 0x200

.field private static final charsets:Ljava/util/Hashtable;


# instance fields
.field private assignedEncoding:Ljava/lang/String;

.field private closed:Z

.field private in:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 163
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    .line 166
    const-string v1, "UTF-16"

    const-string v2, "Unicode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "ISO-10646-UCS-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "EBCDIC-CP-US"

    const-string v2, "cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "EBCDIC-CP-CA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "EBCDIC-CP-NL"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "EBCDIC-CP-WT"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "EBCDIC-CP-DK"

    const-string v2, "cp277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "EBCDIC-CP-NO"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "EBCDIC-CP-FI"

    const-string v2, "cp278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "EBCDIC-CP-SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "EBCDIC-CP-IT"

    const-string v2, "cp280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "EBCDIC-CP-ES"

    const-string v2, "cp284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "EBCDIC-CP-GB"

    const-string v2, "cp285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "EBCDIC-CP-FR"

    const-string v2, "cp297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "EBCDIC-CP-AR1"

    const-string v2, "cp420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "EBCDIC-CP-HE"

    const-string v2, "cp424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "EBCDIC-CP-BE"

    const-string v2, "cp500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "EBCDIC-CP-CH"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "EBCDIC-CP-ROECE"

    const-string v2, "cp870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "EBCDIC-CP-YU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "EBCDIC-CP-IS"

    const-string v2, "cp871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "EBCDIC-CP-AR2"

    const-string v2, "cp918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 235
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 241
    .local v0, "pb":Ljava/io/PushbackInputStream;
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 242
    .local v2, "buf":[B
    invoke-virtual {v0, v2}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    .line 243
    .local v3, "len":I
    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 244
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 246
    :cond_0
    if-ne v3, v1, :cond_4

    aget-byte v1, v2, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    const-string v5, "UTF-16"

    const/16 v6, 0x3f

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 306
    :sswitch_0
    aget-byte v1, v2, v9

    and-int/2addr v1, v4

    const/16 v4, 0xfe

    if-eq v1, v4, :cond_1

    .line 307
    goto :goto_0

    .line 308
    :cond_1
    invoke-direct {p0, v0, v5}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 309
    return-void

    .line 299
    :sswitch_1
    aget-byte v1, v2, v9

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_2

    .line 300
    goto :goto_0

    .line 301
    :cond_2
    invoke-direct {p0, v0, v5}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 302
    return-void

    .line 288
    :sswitch_2
    aget-byte v1, v2, v9

    const/16 v5, 0x6f

    if-ne v1, v5, :cond_4

    aget-byte v1, v2, v8

    and-int/2addr v1, v4

    const/16 v5, 0xa7

    if-ne v1, v5, :cond_4

    aget-byte v1, v2, v7

    and-int/2addr v1, v4

    const/16 v4, 0x94

    if-ne v1, v4, :cond_4

    .line 291
    const-string v1, "CP037"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->useEncodingDecl(Ljava/io/PushbackInputStream;Ljava/lang/String;)V

    .line 292
    return-void

    .line 257
    :sswitch_3
    aget-byte v1, v2, v9

    and-int/2addr v1, v4

    sparse-switch v1, :sswitch_data_1

    .line 262
    goto :goto_0

    .line 275
    :sswitch_4
    aget-byte v1, v2, v8

    const/16 v4, 0x78

    if-ne v1, v4, :cond_4

    aget-byte v1, v2, v7

    const/16 v4, 0x6d

    if-eq v1, v4, :cond_3

    .line 276
    goto :goto_0

    .line 281
    :cond_3
    const-string v1, "UTF8"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->useEncodingDecl(Ljava/io/PushbackInputStream;Ljava/lang/String;)V

    .line 282
    return-void

    .line 266
    :sswitch_5
    aget-byte v1, v2, v8

    if-ne v1, v6, :cond_4

    aget-byte v1, v2, v7

    if-nez v1, :cond_4

    .line 267
    const-string v1, "UnicodeLittle"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 268
    return-void

    .line 249
    :sswitch_6
    aget-byte v1, v2, v9

    const/16 v4, 0x3c

    if-ne v1, v4, :cond_4

    aget-byte v1, v2, v8

    if-nez v1, :cond_4

    aget-byte v1, v2, v7

    if-ne v1, v6, :cond_4

    .line 250
    const-string v1, "UnicodeBig"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 251
    return-void

    .line 320
    :cond_4
    :goto_0
    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 321
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x3c -> :sswitch_3
        0x4c -> :sswitch_2
        0xfe -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x3f -> :sswitch_4
    .end sparse-switch
.end method

.method public static createReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 137
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "UTF8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    const-string v0, "US-ASCII"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ASCII"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 145
    :cond_2
    const-string v0, "ISO-8859-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 157
    :cond_3
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lcom/bea/xml/stream/reader/XmlReader;->std2java(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 143
    :cond_4
    :goto_0
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 139
    :cond_5
    :goto_1
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    iput-object p2, p0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    .line 469
    invoke-static {p1, p2}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    .line 470
    return-void
.end method

.method private static std2java(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encoding"    # Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "temp":Ljava/lang/String;
    sget-object v1, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 207
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method private useEncodingDecl(Ljava/io/PushbackInputStream;Ljava/lang/String;)V
    .locals 17
    .param p1, "pb"    # Ljava/io/PushbackInputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 347
    .local v2, "buffer":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v3

    .line 348
    .local v3, "len":I
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 349
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    const/4 v7, 0x4

    invoke-direct {v6, v2, v7, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v7, p2

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 357
    .local v5, "r":Ljava/io/Reader;
    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v6

    move v8, v6

    .local v8, "c":I
    const-string v9, "UTF-8"

    const/16 v10, 0x6c

    if-eq v6, v10, :cond_0

    .line 358
    invoke-direct {v0, v1, v9}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 359
    return-void

    .line 371
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 372
    .local v6, "buf":Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    .line 373
    .local v10, "keyBuf":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .line 374
    .local v11, "key":Ljava/lang/String;
    const/4 v12, 0x0

    .line 375
    .local v12, "sawEq":Z
    const/4 v13, 0x0

    .line 376
    .local v13, "quoteChar":C
    const/4 v14, 0x0

    .line 379
    .local v14, "sawQuestion":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v4, 0x1fb

    if-ge v15, v4, :cond_1a

    .line 380
    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v4

    move v8, v4

    move-object/from16 v16, v2

    .end local v2    # "buffer":[B
    .local v16, "buffer":[B
    const/4 v2, -0x1

    if-ne v4, v2, :cond_1

    .line 381
    goto/16 :goto_6

    .line 384
    :cond_1
    const/16 v2, 0x20

    if-eq v8, v2, :cond_19

    const/16 v2, 0x9

    if-eq v8, v2, :cond_19

    const/16 v2, 0xa

    if-eq v8, v2, :cond_19

    const/16 v2, 0xd

    if-ne v8, v2, :cond_2

    .line 385
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 388
    :cond_2
    if-nez v15, :cond_3

    .line 389
    goto/16 :goto_6

    .line 392
    :cond_3
    const/16 v2, 0x3f

    if-ne v8, v2, :cond_4

    .line 393
    const/4 v14, 0x1

    goto :goto_1

    .line 394
    :cond_4
    if-eqz v14, :cond_6

    .line 395
    const/16 v2, 0x3e

    if-ne v8, v2, :cond_5

    .line 396
    goto/16 :goto_6

    .line 397
    :cond_5
    const/4 v14, 0x0

    .line 401
    :cond_6
    :goto_1
    if-eqz v11, :cond_13

    if-nez v12, :cond_7

    goto/16 :goto_4

    .line 423
    :cond_7
    int-to-char v2, v8

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 424
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 425
    :cond_8
    const/16 v2, 0x22

    if-eq v8, v2, :cond_9

    const/16 v2, 0x27

    if-ne v8, v2, :cond_12

    .line 426
    :cond_9
    if-nez v13, :cond_a

    .line 427
    int-to-char v2, v8

    .line 428
    .end local v13    # "quoteChar":C
    .local v2, "quoteChar":C
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 429
    move v13, v2

    const/4 v4, 0x0

    goto/16 :goto_5

    .line 430
    .end local v2    # "quoteChar":C
    .restart local v13    # "quoteChar":C
    :cond_a
    if-ne v8, v13, :cond_12

    .line 431
    const-string v2, "encoding"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 432
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    .line 435
    const/4 v2, 0x0

    .end local v15    # "i":I
    .local v2, "i":I
    :goto_2
    iget-object v4, v0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 436
    iget-object v4, v0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 437
    const/16 v4, 0x41

    if-lt v8, v4, :cond_b

    const/16 v4, 0x5a

    if-le v8, v4, :cond_f

    :cond_b
    const/16 v4, 0x61

    if-lt v8, v4, :cond_c

    const/16 v4, 0x7a

    if-gt v8, v4, :cond_c

    .line 439
    goto :goto_3

    .line 440
    :cond_c
    if-nez v2, :cond_d

    .line 441
    goto/16 :goto_6

    .line 442
    :cond_d
    if-lez v2, :cond_1b

    const/16 v4, 0x2d

    if-eq v8, v4, :cond_f

    const/16 v4, 0x30

    if-lt v8, v4, :cond_e

    const/16 v4, 0x39

    if-le v8, v4, :cond_f

    :cond_e
    const/16 v4, 0x2e

    if-eq v8, v4, :cond_f

    const/16 v4, 0x5f

    if-ne v8, v4, :cond_1b

    .line 435
    :cond_f
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 450
    :cond_10
    iget-object v4, v0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 451
    return-void

    .line 454
    .end local v2    # "i":I
    .restart local v15    # "i":I
    :cond_11
    const/4 v2, 0x0

    .line 455
    .end local v11    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    move-object v11, v2

    const/4 v4, 0x0

    goto :goto_5

    .line 459
    .end local v2    # "key":Ljava/lang/String;
    .restart local v11    # "key":Ljava/lang/String;
    :cond_12
    int-to-char v2, v8

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    goto :goto_5

    .line 402
    :cond_13
    :goto_4
    if-nez v10, :cond_15

    .line 403
    int-to-char v2, v8

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 404
    const/4 v4, 0x0

    goto :goto_5

    .line 405
    :cond_14
    move-object v2, v6

    .line 406
    .end local v10    # "keyBuf":Ljava/lang/StringBuffer;
    .local v2, "keyBuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 407
    int-to-char v10, v8

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 408
    const/4 v10, 0x0

    .line 409
    .end local v12    # "sawEq":Z
    .local v10, "sawEq":Z
    move v12, v10

    move-object v10, v2

    goto :goto_5

    .end local v2    # "keyBuf":Ljava/lang/StringBuffer;
    .local v10, "keyBuf":Ljava/lang/StringBuffer;
    .restart local v12    # "sawEq":Z
    :cond_15
    const/4 v4, 0x0

    int-to-char v2, v8

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 410
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    .end local v11    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    move-object v11, v2

    goto :goto_5

    .end local v2    # "key":Ljava/lang/String;
    .restart local v11    # "key":Ljava/lang/String;
    :cond_16
    const/16 v2, 0x3d

    if-ne v8, v2, :cond_18

    .line 412
    if-nez v11, :cond_17

    .line 413
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 414
    :cond_17
    const/4 v2, 0x1

    .line 415
    .end local v12    # "sawEq":Z
    .local v2, "sawEq":Z
    const/4 v10, 0x0

    .line 416
    const/4 v12, 0x0

    .line 417
    .end local v13    # "quoteChar":C
    .local v12, "quoteChar":C
    move v13, v12

    move v12, v2

    goto :goto_5

    .line 418
    .end local v2    # "sawEq":Z
    .local v12, "sawEq":Z
    .restart local v13    # "quoteChar":C
    :cond_18
    int-to-char v2, v8

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 419
    goto :goto_5

    .line 384
    :cond_19
    const/4 v4, 0x0

    .line 379
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_0

    .end local v16    # "buffer":[B
    .local v2, "buffer":[B
    :cond_1a
    move-object/from16 v16, v2

    .line 462
    .end local v2    # "buffer":[B
    .end local v15    # "i":I
    .restart local v16    # "buffer":[B
    :cond_1b
    :goto_6
    invoke-direct {v0, v1, v9}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 463
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    iget-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    if-eqz v0, :cond_0

    .line 552
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    .line 556
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    .line 520
    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    iget-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 498
    .local v0, "val":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader;->close()V

    .line 501
    :cond_0
    return v0

    .line 495
    .end local v0    # "val":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([CII)I
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    iget-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 480
    return v1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 482
    .local v0, "val":I
    if-ne v0, v1, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader;->close()V

    .line 484
    :cond_1
    return v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 528
    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
