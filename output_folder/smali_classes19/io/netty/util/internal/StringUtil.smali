.class public final Lio/netty/util/internal/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE2HEX_NOPAD:[Ljava/lang/String;

.field private static final BYTE2HEX_PAD:[Ljava/lang/String;

.field public static final CARRIAGE_RETURN:C = '\r'

.field public static final COMMA:C = ','

.field private static final CSV_NUMBER_ESCAPE_CHARACTERS:I = 0x7

.field public static final DOUBLE_QUOTE:C = '\"'

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final HEX2B:[B

.field public static final LINE_FEED:C = '\n'

.field public static final NEWLINE:Ljava/lang/String;

.field private static final PACKAGE_SEPARATOR_CHAR:C = '.'

.field public static final SPACE:C = ' '

.field public static final TAB:C = '\t'


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    nop

    .line 32
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 41
    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    array-length v2, v1

    const/16 v3, 0x30

    const/16 v4, 0xf

    if-ge v0, v2, :cond_1

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "str":Ljava/lang/String;
    if-le v0, v4, :cond_0

    move-object v3, v2

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v0

    .line 57
    sget-object v1, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 54
    .end local v2    # "str":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_1
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    .line 63
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 64
    const/4 v1, 0x0

    aput-byte v1, v0, v3

    .line 65
    const/16 v1, 0x31

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 66
    const/16 v1, 0x32

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 67
    const/16 v1, 0x33

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 68
    const/16 v1, 0x34

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    .line 69
    const/16 v1, 0x35

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 70
    const/16 v1, 0x36

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 71
    const/16 v1, 0x37

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    .line 72
    const/16 v1, 0x38

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    .line 73
    const/16 v1, 0x39

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    .line 74
    const/16 v1, 0x41

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 75
    const/16 v1, 0x42

    const/16 v3, 0xb

    aput-byte v3, v0, v1

    .line 76
    const/16 v1, 0x43

    const/16 v5, 0xc

    aput-byte v5, v0, v1

    .line 77
    const/16 v1, 0x44

    const/16 v6, 0xd

    aput-byte v6, v0, v1

    .line 78
    const/16 v1, 0x45

    const/16 v7, 0xe

    aput-byte v7, v0, v1

    .line 79
    const/16 v1, 0x46

    aput-byte v4, v0, v1

    .line 80
    const/16 v1, 0x61

    aput-byte v2, v0, v1

    .line 81
    const/16 v1, 0x62

    aput-byte v3, v0, v1

    .line 82
    const/16 v1, 0x63

    aput-byte v5, v0, v1

    .line 83
    const/16 v1, 0x64

    aput-byte v6, v0, v1

    .line 84
    const/16 v1, 0x65

    aput-byte v7, v0, v1

    .line 85
    const/16 v1, 0x66

    aput-byte v4, v0, v1

    .line 86
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static byteToHexString(Ljava/lang/Appendable;I)Ljava/lang/Appendable;
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 180
    .local p0, "buf":Ljava/lang/Appendable;, "TT;"
    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->byteToHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object p0
.end method

.method public static byteToHexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .line 172
    sget-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    and-int/lit16 v1, p0, 0xff

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static byteToHexStringPadded(Ljava/lang/Appendable;I)Ljava/lang/Appendable;
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 129
    .local p0, "buf":Ljava/lang/Appendable;, "TT;"
    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->byteToHexStringPadded(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-object p0
.end method

.method public static byteToHexStringPadded(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .line 121
    sget-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    and-int/lit16 v1, p0, 0xff

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static commonSuffixOfLength(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "len"    # I

    .line 114
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p0, v0, p1, v1, p2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static decodeHexByte(Ljava/lang/CharSequence;I)B
    .locals 6
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .line 254
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v0

    .line 255
    .local v0, "hi":I
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v1

    .line 256
    .local v1, "lo":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 260
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    int-to-byte v2, v2

    return v2

    .line 257
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x2

    .line 258
    invoke-interface {p0, p1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p0, v3, v4

    .line 257
    const-string v4, "invalid hex byte \'%s\' at index %d of \'%s\'"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;)[B
    .locals 2
    .param p0, "hexDump"    # Ljava/lang/CharSequence;

    .line 288
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;II)[B
    .locals 4
    .param p0, "hexDump"    # Ljava/lang/CharSequence;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 271
    if-ltz p2, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    .line 274
    if-nez p2, :cond_0

    .line 275
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object v0

    .line 277
    :cond_0
    ushr-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    .line 278
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 279
    ushr-int/lit8 v2, v1, 0x1

    add-int v3, p1, v1

    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 278
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 281
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 272
    .end local v0    # "bytes":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeHexNibble(C)I
    .locals 3
    .param p0, "c"    # C

    .line 243
    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    array-length v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    .line 246
    move v1, p0

    .line 247
    .local v1, "index":I
    aget-byte v0, v0, v1

    return v0

    .line 243
    .end local v1    # "index":I
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static endsWith(Ljava/lang/CharSequence;C)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "c"    # C

    .line 618
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 619
    .local v0, "len":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static escapeCsv(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 324
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->escapeCsv(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static escapeCsv(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 11
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "trimWhiteSpace"    # Z

    .line 338
    const-string v0, "value"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 341
    .local v0, "length":I
    if-eqz p1, :cond_0

    .line 342
    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->indexOfFirstNonOwsChar(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 343
    .local v1, "start":I
    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->indexOfLastNonOwsChar(Ljava/lang/CharSequence;II)I

    move-result v2

    .local v2, "last":I
    goto :goto_0

    .line 345
    .end local v1    # "start":I
    .end local v2    # "last":I
    :cond_0
    const/4 v1, 0x0

    .line 346
    .restart local v1    # "start":I
    add-int/lit8 v2, v0, -0x1

    .line 348
    .restart local v2    # "last":I
    :goto_0
    if-le v1, v2, :cond_1

    .line 349
    const-string v3, ""

    return-object v3

    .line 352
    :cond_1
    const/4 v3, -0x1

    .line 353
    .local v3, "firstUnescapedSpecial":I
    const/4 v4, 0x0

    .line 354
    .local v4, "quoted":Z
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 355
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v5

    if-eqz v5, :cond_2

    if-le v2, v1, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 356
    if-eqz v4, :cond_3

    .line 357
    add-int/lit8 v1, v1, 0x1

    .line 358
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 360
    :cond_3
    move v3, v1

    .line 364
    :cond_4
    :goto_2
    if-gez v3, :cond_11

    .line 365
    if-eqz v4, :cond_9

    .line 366
    move v5, v1

    .local v5, "i":I
    :goto_3
    if-gt v5, v2, :cond_8

    .line 367
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 368
    if-eq v5, v2, :cond_6

    add-int/lit8 v7, v5, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_4

    .line 372
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 369
    :cond_6
    :goto_4
    move v3, v5

    .line 370
    goto :goto_6

    .line 366
    :cond_7
    :goto_5
    add-int/2addr v5, v6

    goto :goto_3

    .end local v5    # "i":I
    :cond_8
    :goto_6
    goto :goto_b

    .line 376
    :cond_9
    move v5, v1

    .restart local v5    # "i":I
    :goto_7
    if-gt v5, v2, :cond_f

    .line 377
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 378
    .local v7, "c":C
    const/16 v8, 0xa

    if-eq v7, v8, :cond_e

    const/16 v8, 0xd

    if-eq v7, v8, :cond_e

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_a

    goto :goto_a

    .line 382
    :cond_a
    invoke-static {v7}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 383
    if-eq v5, v2, :cond_c

    add-int/lit8 v8, v5, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_8

    .line 387
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 384
    :cond_c
    :goto_8
    move v3, v5

    .line 385
    goto :goto_b

    .line 376
    .end local v7    # "c":C
    :cond_d
    :goto_9
    add-int/2addr v5, v6

    goto :goto_7

    .line 379
    .restart local v7    # "c":C
    :cond_e
    :goto_a
    move v3, v5

    .line 392
    .end local v5    # "i":I
    .end local v7    # "c":C
    :cond_f
    :goto_b
    if-gez v3, :cond_11

    .line 396
    if-eqz v4, :cond_10

    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v6, v2, 0x2

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_c

    :cond_10
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_c
    return-object v5

    .line 400
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    sub-int v7, v2, v1

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 401
    .local v5, "result":Ljava/lang/StringBuilder;
    const/16 v7, 0x22

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 402
    move v8, v3

    .local v8, "i":I
    :goto_d
    if-gt v8, v2, :cond_13

    .line 403
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 404
    .local v9, "c":C
    invoke-static {v9}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 405
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    if-ge v8, v2, :cond_12

    add-int/lit8 v10, v8, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 407
    add-int/lit8 v8, v8, 0x1

    .line 410
    :cond_12
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    .end local v9    # "c":C
    add-int/2addr v8, v6

    goto :goto_d

    .line 412
    .end local v8    # "i":I
    :cond_13
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    return-object v6
.end method

.method private static indexOfFirstNonOwsChar(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "length"    # I

    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isOws(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    :cond_0
    return v0
.end method

.method private static indexOfLastNonOwsChar(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 684
    add-int/lit8 v0, p2, -0x1

    .line 685
    .local v0, "i":I
    :goto_0
    if-le v0, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isOws(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 688
    :cond_0
    return v0
.end method

.method public static indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 570
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 571
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    return p1

    .line 570
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 575
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfWhiteSpace(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 586
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 587
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    return p1

    .line 586
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 591
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static isDoubleQuote(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 607
    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 559
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isOws(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 692
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSurrogate(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 603
    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "separator"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 648
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    const-string v0, "separator"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 649
    const-string v0, "elements"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 651
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 652
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    const-string v1, ""

    return-object v1

    .line 656
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 657
    .local v1, "firstElement":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 658
    return-object v1

    .line 661
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 663
    .local v2, "builder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 664
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 666
    return-object v2

    .line 664
    :cond_2
    goto :goto_0
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 552
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid escaped CSV field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static simpleClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 307
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "clazz"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "className":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 309
    .local v1, "lastDotIdx":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 310
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 312
    :cond_0
    return-object v0
.end method

.method public static simpleClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 295
    if-nez p0, :cond_0

    .line 296
    const-string v0, "null_object"

    return-object v0

    .line 298
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfter(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "delim"    # C

    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 99
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 100
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static toHexString(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;
    .locals 2
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .line 205
    .local p0, "dst":Ljava/lang/Appendable;, "TT;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lio/netty/util/internal/StringUtil;->toHexString(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;
    .locals 4
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .line 212
    .local p0, "dst":Ljava/lang/Appendable;, "TT;"
    if-ltz p3, :cond_3

    .line 213
    if-nez p3, :cond_0

    .line 214
    return-object p0

    .line 217
    :cond_0
    add-int v0, p2, p3

    .line 218
    .local v0, "end":I
    add-int/lit8 v1, v0, -0x1

    .line 222
    .local v1, "endMinusOne":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 223
    aget-byte v3, p1, v2

    if-eqz v3, :cond_1

    .line 224
    goto :goto_1

    .line 222
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_2
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v2, p1, v2

    invoke-static {p0, v2}, Lio/netty/util/internal/StringUtil;->byteToHexString(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    .line 229
    sub-int v2, v0, v3

    .line 230
    .local v2, "remaining":I
    invoke-static {p0, p1, v3, v2}, Lio/netty/util/internal/StringUtil;->toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    .line 232
    return-object p0

    .line 212
    .end local v0    # "end":I
    .end local v1    # "endMinusOne":I
    .end local v2    # "remaining":I
    .end local v3    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B

    .line 191
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1, p2}, Lio/netty/util/internal/StringUtil;->toHexString(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexStringPadded(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;
    .locals 2
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .line 154
    .local p0, "dst":Ljava/lang/Appendable;, "TT;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lio/netty/util/internal/StringUtil;->toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;
    .locals 3
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .line 161
    .local p0, "dst":Ljava/lang/Appendable;, "TT;"
    add-int v0, p2, p3

    .line 162
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 163
    aget-byte v2, p1, v1

    invoke-static {p0, v2}, Lio/netty/util/internal/StringUtil;->byteToHexStringPadded(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public static toHexStringPadded([B)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B

    .line 140
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->toHexStringPadded([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexStringPadded([BII)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1, p2}, Lio/netty/util/internal/StringUtil;->toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimOws(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 630
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 631
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 632
    return-object p0

    .line 634
    :cond_0
    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->indexOfFirstNonOwsChar(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 635
    .local v1, "start":I
    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->indexOfLastNonOwsChar(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 636
    .local v2, "end":I
    if-nez v1, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    move-object v3, p0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public static unescapeCsv(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 424
    const-string v0, "value"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 425
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 426
    return-object p0

    .line 428
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 429
    .local v1, "last":I
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v0, v4, :cond_1

    move v2, v4

    .line 430
    .local v2, "quoted":Z
    :cond_1
    if-nez v2, :cond_2

    .line 431
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->validateCsvFormat(Ljava/lang/CharSequence;)V

    .line 432
    return-object p0

    .line 434
    :cond_2
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 435
    .local v3, "unescaped":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 436
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 437
    .local v6, "current":C
    const/16 v7, 0x22

    if-ne v6, v7, :cond_4

    .line 438
    add-int/lit8 v7, v5, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v7, v5, 0x1

    if-eq v7, v1, :cond_3

    .line 441
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 444
    :cond_3
    invoke-static {p0, v5}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 447
    :cond_4
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    .end local v6    # "current":C
    add-int/2addr v5, v4

    goto :goto_0

    .line 449
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static unescapeCsvFields(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 9
    .param p0, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 462
    .local v0, "unescaped":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 463
    .local v1, "current":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 464
    .local v2, "quoted":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 465
    .local v3, "last":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-gt v4, v3, :cond_5

    .line 466
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 467
    .local v5, "c":C
    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 468
    packed-switch v5, :pswitch_data_0

    .line 491
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 470
    :pswitch_0
    if-ne v4, v3, :cond_0

    .line 472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    return-object v0

    .line 475
    :cond_0
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 476
    .local v7, "next":C
    const/16 v8, 0x22

    if-ne v7, v8, :cond_1

    .line 478
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    goto :goto_1

    .line 481
    :cond_1
    const/16 v8, 0x2c

    if-ne v7, v8, :cond_2

    .line 483
    const/4 v2, 0x0

    .line 484
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 486
    goto :goto_1

    .line 489
    :cond_2
    add-int/lit8 v6, v4, -0x1

    invoke-static {p0, v6}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 494
    .end local v7    # "next":C
    :cond_3
    sparse-switch v5, :sswitch_data_0

    .line 513
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 497
    :sswitch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 499
    goto :goto_1

    .line 501
    :sswitch_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 502
    const/4 v2, 0x1

    .line 503
    goto :goto_1

    .line 511
    :cond_4
    :sswitch_2
    invoke-static {p0, v4}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6

    .line 465
    .end local v5    # "c":C
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 517
    .end local v4    # "i":I
    :cond_5
    if-nez v2, :cond_6

    .line 520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    return-object v0

    .line 518
    :cond_6
    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x22 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method private static validateCsvFormat(Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 530
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 531
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 532
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :sswitch_0
    invoke-static {p0, v1}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 542
    .end local v1    # "i":I
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x22 -> :sswitch_0
        0x2c -> :sswitch_0
    .end sparse-switch
.end method
