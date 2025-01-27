.class public Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;
.super Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;
.source "NonBlockingJsonParser.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/async/ByteArrayFeeder;


# static fields
.field private static final FEAT_MASK_ALLOW_JAVA_COMMENTS:I

.field private static final FEAT_MASK_ALLOW_MISSING:I

.field private static final FEAT_MASK_ALLOW_SINGLE_QUOTES:I

.field private static final FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

.field private static final FEAT_MASK_ALLOW_YAML_COMMENTS:I

.field private static final FEAT_MASK_LEADING_ZEROS:I

.field private static final FEAT_MASK_TRAILING_COMMA:I

.field protected static final _icLatin1:[I

.field private static final _icUTF8:[I


# instance fields
.field protected _inputBuffer:[B

.field protected _origBufferLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    .line 21
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_LEADING_ZEROS:I

    .line 23
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_MISSING:I

    .line 24
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    .line 25
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

    .line 26
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_JAVA_COMMENTS:I

    .line 27
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    .line 30
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icUTF8:[I

    .line 34
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "parserFeatures"    # I
    .param p3, "sym"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V

    .line 45
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->NO_BYTES:[B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 69
    return-void
.end method

.method private final _decodeCharEscape()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2749
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v0, v1

    .line 2750
    .local v0, "left":I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2751
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitEscaped(II)I

    move-result v1

    return v1

    .line 2753
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeFastCharEscape()I

    move-result v1

    return v1
.end method

.method private final _decodeFastCharEscape()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2758
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2759
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 2785
    int-to-char v1, v0

    .line 2786
    .local v1, "ch":C
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v2

    return v2

    .line 2779
    .end local v1    # "ch":C
    :sswitch_0
    nop

    .line 2790
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2791
    .local v1, "ch":I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    .line 2792
    .local v2, "digit":I
    move v3, v2

    .line 2794
    .local v3, "result":I
    if-ltz v2, :cond_0

    .line 2795
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v4, v5

    .line 2796
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    .line 2797
    if-ltz v2, :cond_0

    .line 2798
    shl-int/lit8 v4, v3, 0x4

    or-int v3, v4, v2

    .line 2799
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v4, v5

    .line 2800
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    .line 2801
    if-ltz v2, :cond_0

    .line 2802
    shl-int/lit8 v4, v3, 0x4

    or-int v3, v4, v2

    .line 2803
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v4, v5

    .line 2804
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    .line 2805
    if-ltz v2, :cond_0

    .line 2806
    shl-int/lit8 v4, v3, 0x4

    or-int/2addr v4, v2

    return v4

    .line 2811
    :cond_0
    and-int/lit16 v4, v1, 0xff

    const-string v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2812
    const/4 v4, -0x1

    return v4

    .line 2764
    .end local v1    # "ch":I
    .end local v2    # "digit":I
    .end local v3    # "result":I
    :sswitch_1
    const/16 v1, 0x9

    return v1

    .line 2770
    :sswitch_2
    const/16 v1, 0xd

    return v1

    .line 2766
    :sswitch_3
    const/16 v1, 0xa

    return v1

    .line 2768
    :sswitch_4
    const/16 v1, 0xc

    return v1

    .line 2762
    :sswitch_5
    const/16 v1, 0x8

    return v1

    .line 2776
    :sswitch_6
    int-to-char v1, v0

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_6
        0x2f -> :sswitch_6
        0x5c -> :sswitch_6
        0x62 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private _decodeSplitEscaped(II)I
    .locals 6
    .param p1, "value"    # I
    .param p2, "bytesRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2299
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    .line 2300
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quoted32:I

    .line 2301
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quotedDigits:I

    .line 2302
    return v2

    .line 2304
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2305
    .local v0, "c":I
    if-ne p2, v2, :cond_2

    .line 2306
    sparse-switch v0, :sswitch_data_0

    .line 2332
    int-to-char v1, v0

    .line 2333
    .local v1, "ch":C
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v2

    return v2

    .line 2326
    .end local v1    # "ch":C
    :sswitch_0
    nop

    .line 2336
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v3, :cond_1

    .line 2337
    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quotedDigits:I

    .line 2338
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quoted32:I

    .line 2339
    return v2

    .line 2341
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v1, v3

    .line 2342
    const/4 p2, 0x0

    goto :goto_0

    .line 2311
    :sswitch_1
    const/16 v1, 0x9

    return v1

    .line 2317
    :sswitch_2
    const/16 v1, 0xd

    return v1

    .line 2313
    :sswitch_3
    const/16 v1, 0xa

    return v1

    .line 2315
    :sswitch_4
    const/16 v1, 0xc

    return v1

    .line 2309
    :sswitch_5
    const/16 v1, 0x8

    return v1

    .line 2323
    :sswitch_6
    return v0

    .line 2344
    :cond_2
    :goto_0
    and-int/lit16 v0, v0, 0xff

    .line 2346
    :goto_1
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v1

    .line 2347
    .local v1, "digit":I
    if-gez v1, :cond_3

    .line 2348
    const-string v3, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2350
    :cond_3
    shl-int/lit8 v3, p1, 0x4

    or-int p1, v3, v1

    .line 2351
    add-int/lit8 p2, p2, 0x1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_4

    .line 2352
    return p1

    .line 2354
    :cond_4
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v3, v4, :cond_5

    .line 2355
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quotedDigits:I

    .line 2356
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quoted32:I

    .line 2357
    return v2

    .line 2359
    :cond_5
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 2360
    .end local v1    # "digit":I
    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_6
        0x2f -> :sswitch_6
        0x5c -> :sswitch_6
        0x62 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private final _decodeSplitMultiByte(IIZ)Z
    .locals 4
    .param p1, "c"    # I
    .param p2, "type"    # I
    .param p3, "gotNext"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2624
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 2662
    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    .line 2664
    const-string v0, "string value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_0

    .line 2653
    :pswitch_0
    and-int/lit8 p1, p1, 0x7

    .line 2654
    if-eqz p3, :cond_0

    .line 2655
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitUTF8_4(III)Z

    move-result v0

    return v0

    .line 2657
    :cond_0
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2658
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2659
    const/16 v1, 0x2c

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2660
    return v0

    .line 2644
    :pswitch_1
    and-int/lit8 p1, p1, 0xf

    .line 2645
    if-eqz p3, :cond_1

    .line 2646
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitUTF8_3(III)Z

    move-result v0

    return v0

    .line 2648
    :cond_1
    const/16 v2, 0x2b

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2649
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2650
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2651
    return v0

    .line 2634
    :pswitch_2
    if-eqz p3, :cond_2

    .line 2636
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_2(II)I

    move-result p1

    .line 2637
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v2, p1

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 2638
    return v1

    .line 2640
    :cond_2
    const/16 v1, 0x2a

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2641
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2642
    return v0

    .line 2626
    :pswitch_3
    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitEscaped(II)I

    move-result p1

    .line 2627
    if-gez p1, :cond_3

    .line 2628
    const/16 v1, 0x29

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2629
    return v0

    .line 2631
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v2, p1

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 2632
    return v1

    .line 2667
    :cond_4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidChar(I)V

    .line 2669
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v2, p1

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 2670
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final _decodeSplitUTF8_3(III)Z
    .locals 5
    .param p1, "prev"    # I
    .param p2, "prevCount"    # I
    .param p3, "next"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2677
    const/16 v0, 0x80

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 2678
    and-int/lit16 v2, p3, 0xc0

    if-eq v2, v0, :cond_0

    .line 2679
    and-int/lit16 v2, p3, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2681
    :cond_0
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, p3, 0x3f

    or-int p1, v2, v3

    .line 2682
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 2683
    const/16 v0, 0x2b

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2684
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2685
    const/4 v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2686
    const/4 v0, 0x0

    return v0

    .line 2688
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p3, v2, v3

    .line 2690
    :cond_2
    and-int/lit16 v2, p3, 0xc0

    if-eq v2, v0, :cond_3

    .line 2691
    and-int/lit16 v0, p3, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2693
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, p3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 2694
    return v1
.end method

.method private final _decodeSplitUTF8_4(III)Z
    .locals 8
    .param p1, "prev"    # I
    .param p2, "prevCount"    # I
    .param p3, "next"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2702
    const/4 v0, 0x0

    const/16 v1, 0x2c

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 2703
    and-int/lit16 v5, p3, 0xc0

    if-eq v5, v3, :cond_0

    .line 2704
    and-int/lit16 v5, p3, 0xff

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2706
    :cond_0
    shl-int/lit8 v5, p1, 0x6

    and-int/lit8 v6, p3, 0x3f

    or-int p1, v5, v6

    .line 2707
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v5, v6, :cond_1

    .line 2708
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2709
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2710
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2711
    return v0

    .line 2713
    :cond_1
    const/4 p2, 0x2

    .line 2714
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p3, v5, v6

    .line 2716
    :cond_2
    if-ne p2, v2, :cond_5

    .line 2717
    and-int/lit16 v2, p3, 0xc0

    if-eq v2, v3, :cond_3

    .line 2718
    and-int/lit16 v2, p3, 0xff

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v2, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2720
    :cond_3
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v5, p3, 0x3f

    or-int p1, v2, v5

    .line 2721
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v2, v5, :cond_4

    .line 2722
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2723
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2724
    const/4 v1, 0x3

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2725
    return v0

    .line 2727
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p3, v0, v1

    .line 2729
    :cond_5
    and-int/lit16 v0, p3, 0xc0

    if-eq v0, v3, :cond_6

    .line 2730
    and-int/lit16 v0, p3, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2732
    :cond_6
    shl-int/lit8 v0, p1, 0x6

    and-int/lit8 v1, p3, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    .line 2734
    .local v0, "c":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const v2, 0xd800

    shr-int/lit8 v3, v0, 0xa

    or-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 2735
    const v1, 0xdc00

    and-int/lit16 v2, v0, 0x3ff

    or-int v0, v2, v1

    .line 2737
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 2738
    return v4
.end method

.method private final _decodeUTF8_2(II)I
    .locals 2
    .param p1, "c"    # I
    .param p2, "d"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2823
    and-int/lit16 v0, p2, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 2824
    and-int/lit16 v0, p2, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2826
    :cond_0
    and-int/lit8 v0, p1, 0x1f

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, p2, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final _decodeUTF8_3(III)I
    .locals 3
    .param p1, "c"    # I
    .param p2, "d"    # I
    .param p3, "e"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2831
    and-int/lit8 p1, p1, 0xf

    .line 2832
    and-int/lit16 v0, p2, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 2833
    and-int/lit16 v0, p2, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2835
    :cond_0
    shl-int/lit8 v0, p1, 0x6

    and-int/lit8 v2, p2, 0x3f

    or-int p1, v0, v2

    .line 2836
    and-int/lit16 v0, p3, 0xc0

    if-eq v0, v1, :cond_1

    .line 2837
    and-int/lit16 v0, p3, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2839
    :cond_1
    shl-int/lit8 v0, p1, 0x6

    and-int/lit8 v1, p3, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final _decodeUTF8_4(IIII)I
    .locals 3
    .param p1, "c"    # I
    .param p2, "d"    # I
    .param p3, "e"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2846
    and-int/lit16 v0, p2, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 2847
    and-int/lit16 v0, p2, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2849
    :cond_0
    and-int/lit8 v0, p1, 0x7

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v2, p2, 0x3f

    or-int p1, v0, v2

    .line 2850
    and-int/lit16 v0, p3, 0xc0

    if-eq v0, v1, :cond_1

    .line 2851
    and-int/lit16 v0, p3, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2853
    :cond_1
    shl-int/lit8 v0, p1, 0x6

    and-int/lit8 v2, p3, 0x3f

    or-int p1, v0, v2

    .line 2854
    and-int/lit16 v0, p4, 0xc0

    if-eq v0, v1, :cond_2

    .line 2855
    and-int/lit16 v0, p4, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2857
    :cond_2
    shl-int/lit8 v0, p1, 0x6

    and-int/lit8 v1, p4, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    return v0
.end method

.method private final _fastParseName()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1795
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 1796
    .local v0, "input":[B
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    .line 1797
    .local v1, "codes":[I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1799
    .local v2, "ptr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptr":I
    .local v3, "ptr":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1800
    .local v2, "q0":I
    aget v4, v1, v2

    const/4 v5, 0x0

    const/16 v6, 0x22

    if-nez v4, :cond_8

    .line 1801
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ptr":I
    .local v4, "ptr":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1802
    .local v3, "i":I
    aget v7, v1, v3

    if-nez v7, :cond_6

    .line 1803
    shl-int/lit8 v7, v2, 0x8

    or-int/2addr v7, v3

    .line 1804
    .local v7, "q":I
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "ptr":I
    .local v8, "ptr":I
    aget-byte v4, v0, v4

    and-int/lit16 v3, v4, 0xff

    .line 1805
    aget v4, v1, v3

    if-nez v4, :cond_4

    .line 1806
    shl-int/lit8 v4, v7, 0x8

    or-int/2addr v4, v3

    .line 1807
    .end local v7    # "q":I
    .local v4, "q":I
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ptr":I
    .local v7, "ptr":I
    aget-byte v8, v0, v8

    and-int/lit16 v3, v8, 0xff

    .line 1808
    aget v8, v1, v3

    if-nez v8, :cond_2

    .line 1809
    shl-int/lit8 v8, v4, 0x8

    or-int v4, v8, v3

    .line 1810
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v8    # "ptr":I
    aget-byte v7, v0, v7

    and-int/lit16 v3, v7, 0xff

    .line 1811
    aget v7, v1, v3

    if-nez v7, :cond_0

    .line 1812
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    .line 1813
    invoke-direct {p0, v8, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseMediumName(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1815
    :cond_0
    if-ne v3, v6, :cond_1

    .line 1816
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1817
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1819
    :cond_1
    return-object v5

    .line 1821
    .end local v8    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_2
    if-ne v3, v6, :cond_3

    .line 1822
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1823
    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1825
    :cond_3
    return-object v5

    .line 1827
    .end local v4    # "q":I
    .local v7, "q":I
    .restart local v8    # "ptr":I
    :cond_4
    if-ne v3, v6, :cond_5

    .line 1828
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1829
    const/4 v4, 0x2

    invoke-virtual {p0, v7, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1831
    :cond_5
    return-object v5

    .line 1833
    .end local v7    # "q":I
    .end local v8    # "ptr":I
    .local v4, "ptr":I
    :cond_6
    if-ne v3, v6, :cond_7

    .line 1834
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1835
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1837
    :cond_7
    return-object v5

    .line 1839
    .end local v4    # "ptr":I
    .local v3, "ptr":I
    :cond_8
    if-ne v2, v6, :cond_9

    .line 1840
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1841
    const-string v4, ""

    return-object v4

    .line 1843
    :cond_9
    return-object v5
.end method

.method private _finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .param p1, "qlen"    # I
    .param p2, "currQuad"    # I
    .param p3, "currQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2151
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2152
    .local v0, "quads":[I
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    .line 2155
    .local v1, "codes":[I
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v4, 0x9

    if-lt v2, v3, :cond_0

    .line 2156
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    .line 2157
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2158
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2159
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2160
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 2162
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 2163
    .local v2, "ch":I
    const/16 v3, 0x27

    if-ne v2, v3, :cond_5

    .line 2164
    nop

    .line 2230
    .end local v2    # "ch":I
    if-lez p3, :cond_2

    .line 2231
    array-length v2, v0

    if-lt p1, v2, :cond_1

    .line 2232
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v2

    move-object v0, v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2234
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "qlen":I
    .local v2, "qlen":I
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_padLastQuad(II)I

    move-result v3

    aput v3, v0, p1

    move p1, v2

    goto :goto_1

    .line 2235
    .end local v2    # "qlen":I
    .restart local p1    # "qlen":I
    :cond_2
    if-nez p1, :cond_3

    .line 2236
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 2238
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v2, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v2

    .line 2239
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 2240
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_addName([III)Ljava/lang/String;

    move-result-object v2

    .line 2242
    :cond_4
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3

    .line 2167
    .local v2, "ch":I
    :cond_5
    const/16 v3, 0x22

    const/4 v5, 0x4

    if-eq v2, v3, :cond_d

    aget v3, v1, v2

    if-eqz v3, :cond_d

    .line 2168
    const/16 v3, 0x5c

    if-eq v2, v3, :cond_6

    .line 2170
    const-string v3, "name"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_2

    .line 2173
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeCharEscape()I

    move-result v2

    .line 2174
    if-gez v2, :cond_7

    .line 2175
    const/16 v3, 0x8

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2176
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    .line 2177
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    .line 2178
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2179
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2180
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    .line 2183
    :cond_7
    :goto_2
    const/16 v3, 0x7f

    if-le v2, v3, :cond_d

    .line 2185
    if-lt p3, v5, :cond_9

    .line 2186
    array-length v3, v0

    if-lt p1, v3, :cond_8

    .line 2187
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v3

    move-object v0, v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2189
    :cond_8
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "qlen":I
    .local v3, "qlen":I
    aput p2, v0, p1

    .line 2190
    const/4 p2, 0x0

    .line 2191
    const/4 p3, 0x0

    move p1, v3

    .line 2193
    .end local v3    # "qlen":I
    .restart local p1    # "qlen":I
    :cond_9
    const/16 v3, 0x800

    if-ge v2, v3, :cond_a

    .line 2194
    shl-int/lit8 v3, p2, 0x8

    shr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0xc0

    or-int p2, v3, v4

    .line 2195
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 2198
    :cond_a
    shl-int/lit8 v3, p2, 0x8

    shr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int p2, v3, v4

    .line 2199
    add-int/lit8 p3, p3, 0x1

    .line 2201
    if-lt p3, v5, :cond_c

    .line 2202
    array-length v3, v0

    if-lt p1, v3, :cond_b

    .line 2203
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v3

    move-object v0, v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2205
    :cond_b
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "qlen":I
    .restart local v3    # "qlen":I
    aput p2, v0, p1

    .line 2206
    const/4 p2, 0x0

    .line 2207
    const/4 p3, 0x0

    move p1, v3

    .line 2209
    .end local v3    # "qlen":I
    .restart local p1    # "qlen":I
    :cond_c
    shl-int/lit8 v3, p2, 0x8

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    or-int p2, v3, v4

    .line 2210
    add-int/lit8 p3, p3, 0x1

    .line 2213
    :goto_3
    and-int/lit8 v3, v2, 0x3f

    or-int/lit16 v2, v3, 0x80

    .line 2217
    :cond_d
    if-ge p3, v5, :cond_e

    .line 2218
    add-int/lit8 p3, p3, 0x1

    .line 2219
    shl-int/lit8 v3, p2, 0x8

    or-int p2, v3, v2

    goto :goto_4

    .line 2221
    :cond_e
    array-length v3, v0

    if-lt p1, v3, :cond_f

    .line 2222
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v3

    move-object v0, v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2224
    :cond_f
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "qlen":I
    .restart local v3    # "qlen":I
    aput p2, v0, p1

    .line 2225
    move p1, v2

    .line 2226
    .end local p2    # "currQuad":I
    .local p1, "currQuad":I
    const/4 p2, 0x1

    move p3, p2

    move p2, p1

    move p1, v3

    .line 2228
    .end local v2    # "ch":I
    .end local v3    # "qlen":I
    .local p1, "qlen":I
    .restart local p2    # "currQuad":I
    :goto_4
    goto/16 :goto_0
.end method

.method private final _finishAposString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2527
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icUTF8:[I

    .line 2528
    .local v0, "codes":[I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 2530
    .local v1, "inputBuffer":[B
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v2

    .line 2531
    .local v2, "outBuf":[C
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 2532
    .local v3, "outPtr":I
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2533
    .local v4, "ptr":I
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    add-int/lit8 v5, v5, -0x5

    .line 2539
    .local v5, "safeEnd":I
    :goto_0
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v7, 0x2d

    if-lt v4, v6, :cond_0

    .line 2540
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2541
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2542
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2543
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v6

    .line 2545
    :cond_0
    array-length v6, v2

    if-lt v3, v6, :cond_1

    .line 2546
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 2547
    const/4 v3, 0x0

    .line 2549
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    array-length v8, v2

    sub-int/2addr v8, v3

    add-int/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2550
    .local v6, "max":I
    :goto_1
    if-ge v4, v6, :cond_a

    .line 2551
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "ptr":I
    .local v8, "ptr":I
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 2552
    .local v4, "c":I
    aget v9, v0, v4

    if-eqz v9, :cond_8

    const/16 v9, 0x22

    if-eq v4, v9, :cond_8

    .line 2553
    nop

    .line 2565
    .end local v6    # "max":I
    if-lt v8, v5, :cond_4

    .line 2566
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2567
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2568
    aget v6, v0, v4

    iget v9, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v8, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-direct {p0, v4, v6, v9}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitMultiByte(IIZ)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2569
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    .line 2570
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v6

    .line 2572
    :cond_3
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v2

    .line 2573
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 2574
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2575
    .end local v8    # "ptr":I
    .local v6, "ptr":I
    move v4, v6

    goto :goto_0

    .line 2578
    .end local v6    # "ptr":I
    .restart local v8    # "ptr":I
    :cond_4
    aget v6, v0, v4

    packed-switch v6, :pswitch_data_0

    .line 2603
    const/16 v6, 0x20

    if-ge v4, v6, :cond_6

    .line 2605
    const-string v6, "string value"

    invoke-virtual {p0, v4, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_4

    .line 2591
    :pswitch_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ptr":I
    .local v7, "ptr":I
    aget-byte v8, v6, v8

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "ptr":I
    .local v9, "ptr":I
    aget-byte v7, v6, v7

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "ptr":I
    .local v10, "ptr":I
    aget-byte v6, v6, v9

    invoke-direct {p0, v4, v8, v7, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_4(IIII)I

    move-result v4

    .line 2594
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "outPtr":I
    .local v6, "outPtr":I
    const v7, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v2, v3

    .line 2595
    array-length v3, v2

    if-lt v6, v3, :cond_5

    .line 2596
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 2597
    const/4 v3, 0x0

    .end local v6    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto :goto_3

    .line 2595
    .end local v3    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_5
    move v3, v6

    .line 2599
    .end local v6    # "outPtr":I
    .restart local v3    # "outPtr":I
    :goto_3
    const v6, 0xdc00

    and-int/lit16 v7, v4, 0x3ff

    or-int v4, v7, v6

    .line 2601
    move v6, v10

    goto :goto_5

    .line 2588
    .end local v10    # "ptr":I
    .restart local v8    # "ptr":I
    :pswitch_1
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v8, v6, v8

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v9    # "ptr":I
    aget-byte v6, v6, v7

    invoke-direct {p0, v4, v8, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_3(III)I

    move-result v4

    .line 2589
    move v6, v9

    goto :goto_5

    .line 2585
    .end local v9    # "ptr":I
    .restart local v8    # "ptr":I
    :pswitch_2
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v6, v6, v8

    invoke-direct {p0, v4, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_2(II)I

    move-result v4

    .line 2586
    move v6, v7

    goto :goto_5

    .line 2580
    .end local v7    # "ptr":I
    .restart local v8    # "ptr":I
    :pswitch_3
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2581
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeFastCharEscape()I

    move-result v4

    .line 2582
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2583
    .end local v8    # "ptr":I
    .local v6, "ptr":I
    goto :goto_5

    .line 2608
    .end local v6    # "ptr":I
    .restart local v8    # "ptr":I
    :cond_6
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidChar(I)V

    .line 2612
    :goto_4
    move v6, v8

    .end local v8    # "ptr":I
    .restart local v6    # "ptr":I
    :goto_5
    array-length v7, v2

    if-lt v3, v7, :cond_7

    .line 2613
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 2614
    const/4 v3, 0x0

    .line 2617
    :cond_7
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "outPtr":I
    .local v7, "outPtr":I
    int-to-char v8, v4

    aput-char v8, v2, v3

    move v4, v6

    move v3, v7

    goto/16 :goto_0

    .line 2555
    .end local v7    # "outPtr":I
    .restart local v3    # "outPtr":I
    .local v6, "max":I
    .restart local v8    # "ptr":I
    :cond_8
    const/16 v9, 0x27

    if-ne v4, v9, :cond_9

    .line 2556
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2557
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2558
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    return-object v7

    .line 2560
    :cond_9
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "outPtr":I
    .local v9, "outPtr":I
    int-to-char v10, v4

    aput-char v10, v2, v3

    move v4, v8

    move v3, v9

    goto/16 :goto_1

    .line 2562
    .end local v6    # "max":I
    .end local v8    # "ptr":I
    .end local v9    # "outPtr":I
    .restart local v3    # "outPtr":I
    .local v4, "ptr":I
    :cond_a
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final _finishBOM(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .param p1, "bytesHandled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 467
    .local v0, "ch":I
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 471
    :pswitch_0
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputProcessed:J

    const-wide/16 v3, 0x3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputProcessed:J

    .line 472
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startDocument(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 474
    :pswitch_1
    const/16 v1, 0xbf

    if-eq v0, v1, :cond_0

    .line 475
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unexpected byte 0x%02x following 0xEF 0xBB; should get 0xBF as third byte of UTF-8 BOM"

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 479
    :pswitch_2
    const/16 v1, 0xbb

    if-eq v0, v1, :cond_0

    .line 480
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unexpected byte 0x%02x following 0xEF; should get 0xBB as second byte UTF-8 BOM"

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    :cond_0
    :goto_1
    nop

    .end local v0    # "ch":I
    add-int/lit8 p1, p1, 0x1

    .line 485
    goto :goto_0

    .line 486
    :cond_1
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 487
    const/4 v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 488
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final _finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "fromMinorState"    # I
    .param p2, "gotStar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1037
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    .line 1038
    if-eqz p2, :cond_0

    const/16 v0, 0x34

    goto :goto_1

    :cond_0
    const/16 v0, 0x35

    :goto_1
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1039
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1040
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1042
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1043
    .local v0, "ch":I
    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    .line 1044
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1045
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    .line 1046
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_2

    .line 1047
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1048
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    .line 1049
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_2

    .line 1050
    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    .line 1051
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 1053
    :cond_4
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_5

    .line 1054
    const/4 p2, 0x1

    .line 1055
    goto :goto_0

    .line 1056
    :cond_5
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    .line 1057
    if-eqz p2, :cond_6

    .line 1058
    nop

    .line 1063
    .end local v0    # "ch":I
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1061
    .restart local v0    # "ch":I
    :cond_6
    :goto_2
    const/4 p2, 0x0

    .line 1062
    .end local v0    # "ch":I
    goto :goto_0
.end method

.method private final _finishCppComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "fromMinorState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1012
    const/16 v0, 0x36

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1013
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1014
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1017
    .local v0, "ch":I
    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    .line 1018
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1019
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    .line 1020
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    .line 1021
    goto :goto_1

    .line 1022
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1023
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    .line 1024
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    .line 1025
    nop

    .line 1031
    .end local v0    # "ch":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1026
    .restart local v0    # "ch":I
    :cond_2
    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    .line 1027
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwInvalidSpace(I)V

    .line 1030
    .end local v0    # "ch":I
    :cond_3
    goto :goto_0
.end method

.method private final _finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "fromMinorState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 981
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 982
    const/16 v0, 0x23

    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_YAML_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 985
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    .line 986
    const/16 v0, 0x37

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 987
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 988
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 991
    .local v0, "ch":I
    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    .line 992
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 993
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    .line 994
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    .line 995
    goto :goto_1

    .line 996
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 997
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    .line 998
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    .line 999
    nop

    .line 1005
    .end local v0    # "ch":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1000
    .restart local v0    # "ch":I
    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    .line 1001
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwInvalidSpace(I)V

    .line 1004
    .end local v0    # "ch":I
    :cond_4
    goto :goto_0
.end method

.method private final _finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2401
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icUTF8:[I

    .line 2402
    .local v0, "codes":[I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 2404
    .local v1, "inputBuffer":[B
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v2

    .line 2405
    .local v2, "outBuf":[C
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 2406
    .local v3, "outPtr":I
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2407
    .local v4, "ptr":I
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    add-int/lit8 v5, v5, -0x5

    .line 2414
    .local v5, "safeEnd":I
    :goto_0
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v7, 0x28

    if-lt v4, v6, :cond_0

    .line 2415
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2416
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2417
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2418
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v6

    .line 2420
    :cond_0
    array-length v6, v2

    if-lt v3, v6, :cond_1

    .line 2421
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 2422
    const/4 v3, 0x0

    .line 2424
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    array-length v8, v2

    sub-int/2addr v8, v3

    add-int/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2425
    .local v6, "max":I
    :goto_1
    if-ge v4, v6, :cond_a

    .line 2426
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "ptr":I
    .local v8, "ptr":I
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 2427
    .local v4, "c":I
    aget v9, v0, v4

    if-eqz v9, :cond_9

    .line 2428
    nop

    .line 2434
    .end local v6    # "max":I
    const/16 v6, 0x22

    if-ne v4, v6, :cond_2

    .line 2435
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2436
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2437
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    return-object v6

    .line 2440
    :cond_2
    if-lt v8, v5, :cond_5

    .line 2441
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2442
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2443
    aget v6, v0, v4

    iget v9, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v8, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    invoke-direct {p0, v4, v6, v9}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitMultiByte(IIZ)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2444
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    .line 2445
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v6

    .line 2447
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v2

    .line 2448
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 2449
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2450
    .end local v8    # "ptr":I
    .local v6, "ptr":I
    move v4, v6

    goto :goto_0

    .line 2453
    .end local v6    # "ptr":I
    .restart local v8    # "ptr":I
    :cond_5
    aget v6, v0, v4

    packed-switch v6, :pswitch_data_0

    .line 2478
    const/16 v6, 0x20

    if-ge v4, v6, :cond_7

    .line 2480
    const-string v6, "string value"

    invoke-virtual {p0, v4, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_4

    .line 2466
    :pswitch_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ptr":I
    .local v7, "ptr":I
    aget-byte v8, v6, v8

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "ptr":I
    .local v9, "ptr":I
    aget-byte v7, v6, v7

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "ptr":I
    .local v10, "ptr":I
    aget-byte v6, v6, v9

    invoke-direct {p0, v4, v8, v7, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_4(IIII)I

    move-result v4

    .line 2469
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "outPtr":I
    .local v6, "outPtr":I
    const v7, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v2, v3

    .line 2470
    array-length v3, v2

    if-lt v6, v3, :cond_6

    .line 2471
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 2472
    const/4 v3, 0x0

    .end local v6    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto :goto_3

    .line 2470
    .end local v3    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_6
    move v3, v6

    .line 2474
    .end local v6    # "outPtr":I
    .restart local v3    # "outPtr":I
    :goto_3
    const v6, 0xdc00

    and-int/lit16 v7, v4, 0x3ff

    or-int v4, v7, v6

    .line 2476
    move v6, v10

    goto :goto_5

    .line 2463
    .end local v10    # "ptr":I
    .restart local v8    # "ptr":I
    :pswitch_1
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v8, v6, v8

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v9    # "ptr":I
    aget-byte v6, v6, v7

    invoke-direct {p0, v4, v8, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_3(III)I

    move-result v4

    .line 2464
    move v6, v9

    goto :goto_5

    .line 2460
    .end local v9    # "ptr":I
    .restart local v8    # "ptr":I
    :pswitch_2
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v6, v6, v8

    invoke-direct {p0, v4, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_2(II)I

    move-result v4

    .line 2461
    move v6, v7

    goto :goto_5

    .line 2455
    .end local v7    # "ptr":I
    .restart local v8    # "ptr":I
    :pswitch_3
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2456
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeFastCharEscape()I

    move-result v4

    .line 2457
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2458
    .end local v8    # "ptr":I
    .local v6, "ptr":I
    goto :goto_5

    .line 2483
    .end local v6    # "ptr":I
    .restart local v8    # "ptr":I
    :cond_7
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidChar(I)V

    .line 2487
    :goto_4
    move v6, v8

    .end local v8    # "ptr":I
    .restart local v6    # "ptr":I
    :goto_5
    array-length v7, v2

    if-lt v3, v7, :cond_8

    .line 2488
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 2489
    const/4 v3, 0x0

    .line 2492
    :cond_8
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "outPtr":I
    .local v7, "outPtr":I
    int-to-char v8, v4

    aput-char v8, v2, v3

    move v4, v6

    move v3, v7

    goto/16 :goto_0

    .line 2430
    .end local v7    # "outPtr":I
    .restart local v3    # "outPtr":I
    .local v6, "max":I
    .restart local v8    # "ptr":I
    :cond_9
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "outPtr":I
    .local v9, "outPtr":I
    int-to-char v10, v4

    aput-char v10, v2, v3

    move v4, v8

    move v3, v9

    goto/16 :goto_1

    .line 2432
    .end local v6    # "max":I
    .end local v8    # "ptr":I
    .end local v9    # "outPtr":I
    .restart local v3    # "outPtr":I
    .local v4, "ptr":I
    :cond_a
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private _finishUnquotedName(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "qlen"    # I
    .param p2, "currQuad"    # I
    .param p3, "currQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2103
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2104
    .local v0, "quads":[I
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v1

    .line 2109
    .local v1, "codes":[I
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2110
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    .line 2111
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2112
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2113
    const/16 v2, 0xa

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2114
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 2116
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 2117
    .local v2, "ch":I
    aget v3, v1, v2

    if-eqz v3, :cond_4

    .line 2118
    nop

    .line 2135
    .end local v2    # "ch":I
    if-lez p3, :cond_2

    .line 2136
    array-length v2, v0

    if-lt p1, v2, :cond_1

    .line 2137
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v2

    move-object v0, v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2139
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "qlen":I
    .local v2, "qlen":I
    aput p2, v0, p1

    move p1, v2

    .line 2141
    .end local v2    # "qlen":I
    .restart local p1    # "qlen":I
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v2, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v2

    .line 2142
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 2143
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_addName([III)Ljava/lang/String;

    move-result-object v2

    .line 2145
    :cond_3
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3

    .line 2120
    .local v2, "ch":I
    :cond_4
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2122
    const/4 v3, 0x4

    if-ge p3, v3, :cond_5

    .line 2123
    add-int/lit8 p3, p3, 0x1

    .line 2124
    shl-int/lit8 v3, p2, 0x8

    or-int p2, v3, v2

    goto :goto_1

    .line 2126
    :cond_5
    array-length v3, v0

    if-lt p1, v3, :cond_6

    .line 2127
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v3

    move-object v0, v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2129
    :cond_6
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "qlen":I
    .local v3, "qlen":I
    aput p2, v0, p1

    .line 2130
    move p1, v2

    .line 2131
    .end local p2    # "currQuad":I
    .local p1, "currQuad":I
    const/4 p2, 0x1

    move p3, p2

    move p2, p1

    move p1, v3

    .line 2133
    .end local v2    # "ch":I
    .end local v3    # "qlen":I
    .local p1, "qlen":I
    .restart local p2    # "currQuad":I
    :goto_1
    goto :goto_0
.end method

.method private _handleOddName(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2059
    const/4 v0, 0x4

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2075
    :sswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2068
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2070
    :sswitch_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v2, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 2071
    invoke-direct {p0, v1, v1, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2063
    :sswitch_3
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v3, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 2064
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2078
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v2, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 2081
    int-to-char v0, p1

    .line 2082
    .local v0, "c":C
    const-string v2, "was expecting double-quote to start field name"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2086
    .end local v0    # "c":C
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v0

    .line 2088
    .local v0, "codes":[I
    aget v2, v0, p1

    if-eqz v2, :cond_2

    .line 2089
    const-string v2, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2092
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishUnquotedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x27 -> :sswitch_2
        0x2f -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private final _parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .param p1, "qlen"    # I
    .param p2, "currQuad"    # I
    .param p3, "currQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1945
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 1946
    .local v0, "quads":[I
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    .line 1949
    .local v1, "codes":[I
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/4 v4, 0x7

    if-lt v2, v3, :cond_0

    .line 1950
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    .line 1951
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1952
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 1953
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1954
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 1956
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 1957
    .local v2, "ch":I
    aget v3, v1, v2

    const/4 v5, 0x4

    if-nez v3, :cond_3

    .line 1958
    if-ge p3, v5, :cond_1

    .line 1959
    add-int/lit8 p3, p3, 0x1

    .line 1960
    shl-int/lit8 v3, p2, 0x8

    or-int p2, v3, v2

    .line 1961
    goto :goto_0

    .line 1963
    :cond_1
    array-length v3, v0

    if-lt p1, v3, :cond_2

    .line 1964
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v3

    move-object v0, v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 1966
    :cond_2
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "qlen":I
    .local v3, "qlen":I
    aput p2, v0, p1

    .line 1967
    move p2, v2

    .line 1968
    const/4 p3, 0x1

    .line 1969
    move p1, v3

    goto :goto_0

    .line 1973
    .end local v3    # "qlen":I
    .restart local p1    # "qlen":I
    :cond_3
    const/16 v3, 0x22

    if-ne v2, v3, :cond_8

    .line 1974
    nop

    .line 2035
    .end local v2    # "ch":I
    if-lez p3, :cond_5

    .line 2036
    array-length v2, v0

    if-lt p1, v2, :cond_4

    .line 2037
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v2

    move-object v0, v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2039
    :cond_4
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "qlen":I
    .local v2, "qlen":I
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_padLastQuad(II)I

    move-result v3

    aput v3, v0, p1

    move p1, v2

    goto :goto_1

    .line 2040
    .end local v2    # "qlen":I
    .restart local p1    # "qlen":I
    :cond_5
    if-nez p1, :cond_6

    .line 2041
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 2043
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v2, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v2

    .line 2044
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 2045
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_addName([III)Ljava/lang/String;

    move-result-object v2

    .line 2047
    :cond_7
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3

    .line 1977
    .local v2, "ch":I
    :cond_8
    const/16 v3, 0x5c

    if-eq v2, v3, :cond_9

    .line 1979
    const-string v3, "name"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_2

    .line 1982
    :cond_9
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeCharEscape()I

    move-result v2

    .line 1983
    if-gez v2, :cond_a

    .line 1984
    const/16 v3, 0x8

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1985
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    .line 1986
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    .line 1987
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1988
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 1989
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    .line 1996
    :cond_a
    :goto_2
    array-length v3, v0

    if-lt p1, v3, :cond_b

    .line 1997
    array-length v3, v0

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v3

    move-object v0, v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 1999
    :cond_b
    const/16 v3, 0x7f

    if-le v2, v3, :cond_f

    .line 2001
    if-lt p3, v5, :cond_c

    .line 2002
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "qlen":I
    .restart local v3    # "qlen":I
    aput p2, v0, p1

    .line 2003
    const/4 p2, 0x0

    .line 2004
    const/4 p3, 0x0

    move p1, v3

    .line 2006
    .end local v3    # "qlen":I
    .restart local p1    # "qlen":I
    :cond_c
    const/16 v3, 0x800

    if-ge v2, v3, :cond_d

    .line 2007
    shl-int/lit8 v3, p2, 0x8

    shr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0xc0

    or-int p2, v3, v4

    .line 2008
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 2011
    :cond_d
    shl-int/lit8 v3, p2, 0x8

    shr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int p2, v3, v4

    .line 2012
    add-int/lit8 p3, p3, 0x1

    .line 2014
    if-lt p3, v5, :cond_e

    .line 2015
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "qlen":I
    .restart local v3    # "qlen":I
    aput p2, v0, p1

    .line 2016
    const/4 p2, 0x0

    .line 2017
    const/4 p3, 0x0

    move p1, v3

    .line 2019
    .end local v3    # "qlen":I
    .restart local p1    # "qlen":I
    :cond_e
    shl-int/lit8 v3, p2, 0x8

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    or-int p2, v3, v4

    .line 2020
    add-int/lit8 p3, p3, 0x1

    .line 2023
    :goto_3
    and-int/lit8 v3, v2, 0x3f

    or-int/lit16 v2, v3, 0x80

    .line 2025
    :cond_f
    if-ge p3, v5, :cond_10

    .line 2026
    add-int/lit8 p3, p3, 0x1

    .line 2027
    shl-int/lit8 v3, p2, 0x8

    or-int p2, v3, v2

    .line 2028
    goto/16 :goto_0

    .line 2030
    :cond_10
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "qlen":I
    .restart local v3    # "qlen":I
    aput p2, v0, p1

    .line 2031
    move p2, v2

    .line 2032
    const/4 p3, 0x1

    .line 2033
    .end local v2    # "ch":I
    move p1, v3

    goto/16 :goto_0
.end method

.method private final _parseMediumName(II)Ljava/lang/String;
    .locals 6
    .param p1, "ptr"    # I
    .param p2, "q2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1848
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 1849
    .local v0, "input":[B
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    .line 1852
    .local v1, "codes":[I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "ptr":I
    .local v2, "ptr":I
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 1853
    .local p1, "i":I
    aget v3, v1, p1

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-nez v3, :cond_6

    .line 1854
    shl-int/lit8 v3, p2, 0x8

    or-int p2, v3, p1

    .line 1855
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptr":I
    .local v3, "ptr":I
    aget-byte v2, v0, v2

    and-int/lit16 p1, v2, 0xff

    .line 1856
    aget v2, v1, p1

    if-nez v2, :cond_4

    .line 1857
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, p1

    .line 1858
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v3, v0, v3

    and-int/lit16 p1, v3, 0xff

    .line 1859
    aget v3, v1, p1

    if-nez v3, :cond_2

    .line 1860
    shl-int/lit8 v3, p2, 0x8

    or-int p2, v3, p1

    .line 1861
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptr":I
    .restart local v3    # "ptr":I
    aget-byte v2, v0, v2

    and-int/lit16 p1, v2, 0xff

    .line 1862
    aget v2, v1, p1

    if-nez v2, :cond_0

    .line 1863
    invoke-direct {p0, v3, p1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseMediumName2(III)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1865
    :cond_0
    if-ne p1, v5, :cond_1

    .line 1866
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1867
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v4, 0x4

    invoke-virtual {p0, v2, p2, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(III)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1869
    :cond_1
    return-object v4

    .line 1871
    .end local v3    # "ptr":I
    .restart local v2    # "ptr":I
    :cond_2
    if-ne p1, v5, :cond_3

    .line 1872
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1873
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v4, 0x3

    invoke-virtual {p0, v3, p2, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(III)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1875
    :cond_3
    return-object v4

    .line 1877
    .end local v2    # "ptr":I
    .restart local v3    # "ptr":I
    :cond_4
    if-ne p1, v5, :cond_5

    .line 1878
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1879
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v4, 0x2

    invoke-virtual {p0, v2, p2, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(III)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1881
    :cond_5
    return-object v4

    .line 1883
    .end local v3    # "ptr":I
    .restart local v2    # "ptr":I
    :cond_6
    if-ne p1, v5, :cond_7

    .line 1884
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1885
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p2, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(III)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1887
    :cond_7
    return-object v4
.end method

.method private final _parseMediumName2(III)Ljava/lang/String;
    .locals 6
    .param p1, "ptr"    # I
    .param p2, "q3"    # I
    .param p3, "q2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 1893
    .local v0, "input":[B
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    .line 1896
    .local v1, "codes":[I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "ptr":I
    .local v2, "ptr":I
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 1897
    .local p1, "i":I
    aget v3, v1, p1

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-eqz v3, :cond_1

    .line 1898
    if-ne p1, v5, :cond_0

    .line 1899
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1900
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p3, p2, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(IIII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1902
    :cond_0
    return-object v4

    .line 1904
    :cond_1
    shl-int/lit8 v3, p2, 0x8

    or-int p2, v3, p1

    .line 1905
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptr":I
    .local v3, "ptr":I
    aget-byte v2, v0, v2

    and-int/lit16 p1, v2, 0xff

    .line 1906
    aget v2, v1, p1

    if-eqz v2, :cond_3

    .line 1907
    if-ne p1, v5, :cond_2

    .line 1908
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1909
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v4, 0x2

    invoke-virtual {p0, v2, p3, p2, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1911
    :cond_2
    return-object v4

    .line 1913
    :cond_3
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, p1

    .line 1914
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v3, v0, v3

    and-int/lit16 p1, v3, 0xff

    .line 1915
    aget v3, v1, p1

    if-eqz v3, :cond_5

    .line 1916
    if-ne p1, v5, :cond_4

    .line 1917
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1918
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v4, 0x3

    invoke-virtual {p0, v3, p3, p2, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(IIII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1920
    :cond_4
    return-object v4

    .line 1922
    :cond_5
    shl-int/lit8 v3, p2, 0x8

    or-int p2, v3, p1

    .line 1923
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ptr":I
    .restart local v3    # "ptr":I
    aget-byte v2, v0, v2

    and-int/lit16 p1, v2, 0xff

    .line 1924
    if-ne p1, v5, :cond_6

    .line 1925
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1926
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v4, 0x4

    invoke-virtual {p0, v2, p3, p2, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1929
    :cond_6
    return-object v4
.end method

.method private final _skipWS(I)I
    .locals 4
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    :goto_0
    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    .line 936
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 937
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    .line 938
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_1

    .line 939
    :cond_0
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 940
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    .line 941
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_1

    .line 942
    :cond_1
    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    .line 943
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwInvalidSpace(I)V

    .line 946
    :cond_2
    :goto_1
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_3

    .line 947
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 948
    const/4 v0, 0x0

    return v0

    .line 950
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 p1, v1, 0xff

    .line 951
    if-le p1, v0, :cond_4

    .line 952
    return p1

    .line 951
    :cond_4
    goto :goto_0
.end method

.method private final _startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "fromMinorState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1070
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1071
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1074
    .local v0, "ch":I
    sparse-switch p1, :sswitch_data_0

    .line 1089
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    .line 1090
    const/4 v1, 0x0

    return-object v1

    .line 1086
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1084
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1082
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1080
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1078
    :sswitch_4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1076
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0xe -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private final _startDocument(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    and-int/lit16 p1, p1, 0xff

    .line 426
    const/4 v0, 0x1

    const/16 v1, 0xef

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    if-eq v1, v0, :cond_0

    .line 427
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishBOM(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 431
    :cond_0
    :goto_0
    const/16 v1, 0x20

    if-gt p1, v1, :cond_7

    .line 432
    if-eq p1, v1, :cond_3

    .line 433
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 434
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    .line 435
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_1

    .line 436
    :cond_1
    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    .line 437
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    .line 438
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_1

    .line 439
    :cond_2
    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    .line 440
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwInvalidSpace(I)V

    .line 443
    :cond_3
    :goto_1
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_6

    .line 444
    const/4 v0, 0x3

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 445
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closed:Z

    if-eqz v0, :cond_4

    .line 446
    const/4 v0, 0x0

    return-object v0

    .line 449
    :cond_4
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_endOfInput:Z

    if-eqz v0, :cond_5

    .line 450
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 452
    :cond_5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 454
    :cond_6
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 p1, v1, 0xff

    goto :goto_0

    .line 456
    :cond_7
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private final _startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 505
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    .line 506
    if-gtz p1, :cond_0

    .line 507
    const/4 v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 508
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    .line 512
    const/16 v0, 0x22

    if-eq p1, v0, :cond_2

    .line 513
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 516
    :cond_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_handleOddName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 519
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-gt v0, v1, :cond_3

    .line 520
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fastParseName()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "n":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 525
    .end local v0    # "n":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private final _startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    const/16 v0, 0x20

    const/4 v1, 0x5

    if-gt p1, v0, :cond_0

    .line 532
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    .line 533
    if-gtz p1, :cond_0

    .line 534
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 535
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 538
    :cond_0
    const/16 v2, 0x2c

    const/16 v3, 0x7d

    if-eq p1, v2, :cond_4

    .line 539
    if-ne p1, v3, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 542
    :cond_1
    const/16 v2, 0x23

    if-ne p1, v2, :cond_2

    .line 543
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 545
    :cond_2
    const/16 v2, 0x2f

    if-ne p1, v2, :cond_3

    .line 546
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 548
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->typeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 550
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 551
    .local v1, "ptr":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/4 v4, 0x4

    if-lt v1, v2, :cond_5

    .line 552
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 553
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 555
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    aget-byte p1, v2, v1

    .line 556
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 557
    if-gt p1, v0, :cond_6

    .line 558
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    .line 559
    if-gtz p1, :cond_6

    .line 560
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 561
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 564
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    .line 565
    const/16 v0, 0x22

    if-eq p1, v0, :cond_8

    .line 566
    if-ne p1, v3, :cond_7

    .line 567
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v2, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    .line 568
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 571
    :cond_7
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_handleOddName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 574
    :cond_8
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0xd

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-gt v0, v2, :cond_9

    .line 575
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fastParseName()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "n":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 577
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 580
    .end local v0    # "n":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private final _startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "fromMinorState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_JAVA_COMMENTS:I

    and-int/2addr v0, v1

    const/16 v1, 0x2f

    if-nez v0, :cond_0

    .line 958
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 962
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_1

    .line 963
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 964
    const/16 v0, 0x33

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 965
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    .line 968
    .local v0, "ch":I
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_2

    .line 969
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 971
    :cond_2
    if-ne v0, v1, :cond_3

    .line 972
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishCppComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 974
    :cond_3
    and-int/lit16 v1, v0, 0xff

    const-string v2, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 975
    const/4 v1, 0x0

    return-object v1
.end method

.method private final _startValue(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    const/16 v0, 0xc

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    .line 598
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    .line 599
    if-gtz p1, :cond_0

    .line 600
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 601
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    .line 605
    const/16 v1, 0x22

    if-ne p1, v1, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 608
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 644
    :sswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 642
    :sswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 636
    :sswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 634
    :sswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 632
    :sswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 640
    :sswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 638
    :sswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 630
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 620
    :sswitch_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 614
    :sswitch_9
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 612
    :sswitch_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 610
    :sswitch_b
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_b
        0x2d -> :sswitch_a
        0x2f -> :sswitch_9
        0x30 -> :sswitch_8
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_6
        0x5d -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x74 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private final _startValueAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    const/16 v0, 0xf

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    .line 828
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    .line 829
    if-gtz p1, :cond_0

    .line 830
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 831
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    .line 835
    const/16 v1, 0x22

    if-ne p1, v1, :cond_1

    .line 836
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 838
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 879
    :sswitch_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 880
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 876
    :sswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 866
    :sswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 864
    :sswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 862
    :sswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 871
    :sswitch_5
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 872
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 868
    :sswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 860
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 850
    :sswitch_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 844
    :sswitch_9
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 842
    :sswitch_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 840
    :sswitch_b
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 885
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_b
        0x2d -> :sswitch_a
        0x2f -> :sswitch_9
        0x30 -> :sswitch_8
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_6
        0x5d -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x74 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private final _startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    const/16 v0, 0x20

    const/16 v1, 0xe

    if-gt p1, v0, :cond_0

    .line 753
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    .line 754
    if-gtz p1, :cond_0

    .line 755
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 756
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 759
    :cond_0
    const/16 v2, 0x3a

    if-eq p1, v2, :cond_3

    .line 760
    const/16 v2, 0x2f

    if-ne p1, v2, :cond_1

    .line 761
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 763
    :cond_1
    const/16 v2, 0x23

    if-ne p1, v2, :cond_2

    .line 764
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 767
    :cond_2
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 769
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 770
    .local v1, "ptr":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v3, 0xc

    if-lt v1, v2, :cond_4

    .line 771
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 772
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 774
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    aget-byte p1, v2, v1

    .line 775
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 776
    if-gt p1, v0, :cond_5

    .line 777
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    .line 778
    if-gtz p1, :cond_5

    .line 779
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 780
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 783
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    .line 784
    const/16 v0, 0x22

    if-ne p1, v0, :cond_6

    .line 785
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 787
    :cond_6
    sparse-switch p1, :sswitch_data_0

    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 816
    :sswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 812
    :sswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 810
    :sswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 808
    :sswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 814
    :sswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 806
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 799
    :sswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 793
    :sswitch_7
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 791
    :sswitch_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 789
    :sswitch_9
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_9
        0x2d -> :sswitch_8
        0x2f -> :sswitch_7
        0x30 -> :sswitch_6
        0x31 -> :sswitch_5
        0x32 -> :sswitch_5
        0x33 -> :sswitch_5
        0x34 -> :sswitch_5
        0x35 -> :sswitch_5
        0x36 -> :sswitch_5
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x39 -> :sswitch_5
        0x5b -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x74 -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private final _startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    const/16 v0, 0x20

    const/16 v1, 0xd

    if-gt p1, v0, :cond_0

    .line 658
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    .line 659
    if-gtz p1, :cond_0

    .line 660
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 661
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 664
    :cond_0
    const/16 v2, 0x2c

    if-eq p1, v2, :cond_5

    .line 665
    const/16 v2, 0x5d

    if-ne p1, v2, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 668
    :cond_1
    const/16 v2, 0x7d

    if-ne p1, v2, :cond_2

    .line 669
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 671
    :cond_2
    const/16 v2, 0x2f

    if-ne p1, v2, :cond_3

    .line 672
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 674
    :cond_3
    const/16 v2, 0x23

    if-ne p1, v2, :cond_4

    .line 675
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 677
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->typeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 679
    :cond_5
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 680
    .local v1, "ptr":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v3, 0xf

    if-lt v1, v2, :cond_6

    .line 681
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 682
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 684
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    aget-byte p1, v2, v1

    .line 685
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 686
    if-gt p1, v0, :cond_7

    .line 687
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    .line 688
    if-gtz p1, :cond_7

    .line 689
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 690
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 693
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    .line 694
    const/16 v0, 0x22

    if-ne p1, v0, :cond_8

    .line 695
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 697
    :cond_8
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 735
    :sswitch_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v2, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    .line 736
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 732
    :sswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 722
    :sswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 720
    :sswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 718
    :sswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 727
    :sswitch_5
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v2, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    .line 728
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 724
    :sswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 716
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 709
    :sswitch_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 703
    :sswitch_9
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 701
    :sswitch_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 699
    :sswitch_b
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 741
    :cond_9
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_b
        0x2d -> :sswitch_a
        0x2f -> :sswitch_9
        0x30 -> :sswitch_8
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_6
        0x5d -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x74 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected _decodeEscaped()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    .line 151
    const/16 v0, 0x20

    return v0
.end method

.method protected _finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1237
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 1243
    .local v0, "i":I
    int-to-char v1, v0

    .line 1244
    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1247
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 1248
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v2

    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    .line 1249
    goto :goto_0

    .line 1252
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportErrorToken(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 1254
    .end local v0    # "i":I
    .end local v1    # "ch":C
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected _finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportErrorToken(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected final _finishFieldWithEscape()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2248
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quoted32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quotedDigits:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitEscaped(II)I

    move-result v0

    .line 2249
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 2250
    const/16 v1, 0x8

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2251
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 2253
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 2254
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2256
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2257
    .local v1, "currQuad":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2258
    .local v2, "currQuadBytes":I
    const/16 v3, 0x7f

    const/4 v4, 0x4

    if-le v0, v3, :cond_5

    .line 2260
    if-lt v2, v4, :cond_2

    .line 2261
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    aput v1, v3, v5

    .line 2262
    const/4 v1, 0x0

    .line 2263
    const/4 v2, 0x0

    .line 2265
    :cond_2
    const/16 v3, 0x800

    if-ge v0, v3, :cond_3

    .line 2266
    shl-int/lit8 v3, v1, 0x8

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    or-int v1, v3, v5

    .line 2267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2270
    :cond_3
    shl-int/lit8 v3, v1, 0x8

    shr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0xe0

    or-int v1, v3, v5

    .line 2272
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_4

    .line 2273
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    aput v1, v3, v5

    .line 2274
    const/4 v1, 0x0

    .line 2275
    const/4 v2, 0x0

    .line 2277
    :cond_4
    shl-int/lit8 v3, v1, 0x8

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    or-int v1, v3, v5

    .line 2278
    add-int/lit8 v2, v2, 0x1

    .line 2281
    :goto_0
    and-int/lit8 v3, v0, 0x3f

    or-int/lit16 v0, v3, 0x80

    .line 2283
    :cond_5
    if-ge v2, v4, :cond_6

    .line 2284
    add-int/lit8 v2, v2, 0x1

    .line 2285
    shl-int/lit8 v3, v1, 0x8

    or-int v1, v3, v0

    goto :goto_1

    .line 2287
    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    aput v1, v3, v4

    .line 2288
    move v1, v0

    .line 2289
    const/4 v2, 0x1

    .line 2291
    :goto_1
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_7

    .line 2292
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    invoke-direct {p0, v3, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3

    .line 2294
    :cond_7
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    invoke-direct {p0, v3, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3
.end method

.method protected _finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .param p1, "checkSign"    # Z
    .param p2, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1739
    if-eqz p1, :cond_2

    .line 1740
    const/16 v0, 0x20

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1741
    const/16 v1, 0x2d

    if-eq p2, v1, :cond_0

    const/16 v1, 0x2b

    if-ne p2, v1, :cond_2

    .line 1742
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 1743
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 1744
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1745
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1746
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1748
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, v0, v1

    .line 1752
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v0

    .line 1753
    .local v0, "outBuf":[C
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v1

    .line 1754
    .local v1, "outPtr":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1756
    .local v2, "expLen":I
    :goto_0
    const/16 v3, 0x30

    if-lt p2, v3, :cond_5

    const/16 v3, 0x39

    if-gt p2, v3, :cond_5

    .line 1757
    add-int/lit8 v2, v2, 0x1

    .line 1758
    array-length v3, v0

    if-lt v1, v3, :cond_3

    .line 1759
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v0

    .line 1761
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "outPtr":I
    .local v3, "outPtr":I
    int-to-char v4, p2

    aput-char v4, v0, v1

    .line 1762
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v4, :cond_4

    .line 1763
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1764
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1765
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 1767
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, v1, v4

    move v1, v3

    goto :goto_0

    .line 1770
    .end local v3    # "outPtr":I
    .restart local v1    # "outPtr":I
    :cond_5
    and-int/lit16 p2, p2, 0xff

    .line 1771
    if-nez v2, :cond_6

    .line 1772
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1775
    :cond_6
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1776
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1778
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1779
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3
.end method

.method protected _finishFloatFraction()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1690
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fractLength:I

    .line 1691
    .local v0, "fractLen":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v1

    .line 1692
    .local v1, "outBuf":[C
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v2

    .line 1696
    .local v2, "outPtr":I
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    move v4, v3

    .local v4, "ch":I
    const/16 v5, 0x30

    if-lt v3, v5, :cond_2

    const/16 v3, 0x39

    if-gt v4, v3, :cond_2

    .line 1697
    add-int/lit8 v0, v0, 0x1

    .line 1698
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 1699
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v1

    .line 1701
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outPtr":I
    .local v3, "outPtr":I
    int-to-char v5, v4

    aput-char v5, v1, v2

    .line 1702
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v2, v5, :cond_1

    .line 1703
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1704
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fractLength:I

    .line 1705
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 1702
    :cond_1
    move v2, v3

    goto :goto_0

    .line 1711
    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    :cond_2
    if-nez v0, :cond_3

    .line 1712
    const-string v3, "Decimal point not followed by a digit"

    invoke-virtual {p0, v4, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1714
    :cond_3
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fractLength:I

    .line 1715
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1718
    const/16 v3, 0x65

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v3, :cond_5

    const/16 v3, 0x45

    if-ne v4, v3, :cond_4

    goto :goto_1

    .line 1730
    :cond_4
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1731
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1733
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1734
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3

    .line 1719
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v7, v4

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 1720
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1721
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v3, v5, :cond_6

    .line 1722
    const/16 v3, 0x1f

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1723
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    .line 1725
    :cond_6
    const/16 v3, 0x20

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1726
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v6, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3
.end method

.method protected _finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "expToken"    # Ljava/lang/String;
    .param p2, "matched"    # I
    .param p3, "result"    # Lcom/fasterxml/jackson/core/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1163
    .local v0, "end":I
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1164
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1165
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 1167
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 1168
    .local v1, "ch":I
    if-ne p2, v0, :cond_2

    .line 1169
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    .line 1170
    :cond_1
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 1174
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1175
    nop

    .line 1180
    .end local v1    # "ch":I
    :cond_3
    const/16 v1, 0x32

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1181
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1182
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1177
    .restart local v1    # "ch":I
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 1178
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1179
    .end local v1    # "ch":I
    goto :goto_0
.end method

.method protected _finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .param p1, "expToken"    # Ljava/lang/String;
    .param p2, "matched"    # I
    .param p3, "result"    # Lcom/fasterxml/jackson/core/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1189
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p3

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1192
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "type"    # I
    .param p2, "matched"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1197
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_nonStdToken(I)Ljava/lang/String;

    move-result-object v0

    .line 1198
    .local v0, "expToken":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1201
    .local v1, "end":I
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1202
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_nonStdTokenType:I

    .line 1203
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1204
    const/16 v2, 0x13

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1205
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 1207
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v3

    .line 1208
    .local v2, "ch":I
    if-ne p2, v1, :cond_2

    .line 1209
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_3

    .line 1210
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueNonStdNumberComplete(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3

    .line 1214
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1215
    nop

    .line 1220
    .end local v2    # "ch":I
    :cond_3
    const/16 v2, 0x32

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1221
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1222
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 1217
    .restart local v2    # "ch":I
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 1218
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1219
    .end local v2    # "ch":I
    goto :goto_0
.end method

.method protected _finishNonStdTokenWithEOF(II)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "type"    # I
    .param p2, "matched"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_nonStdToken(I)Ljava/lang/String;

    move-result-object v0

    .line 1228
    .local v0, "expToken":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 1229
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueNonStdNumberComplete(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1231
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1232
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected _finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "outBuf"    # [C
    .param p2, "outPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1564
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numberNegative:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1567
    .local v0, "negMod":I
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 1568
    const/16 v1, 0x1a

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1569
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1570
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 1572
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1573
    .local v1, "ch":I
    const/16 v2, 0x30

    if-ge v1, v2, :cond_2

    .line 1574
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    .line 1575
    add-int v2, p2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1576
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1577
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 1581
    :cond_2
    const/16 v2, 0x39

    if-le v1, v2, :cond_5

    .line 1582
    const/16 v2, 0x65

    if-eq v1, v2, :cond_4

    const/16 v2, 0x45

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 1597
    .end local v1    # "ch":I
    :cond_3
    add-int v1, p2, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1598
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1599
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1583
    .restart local v1    # "ch":I
    :cond_4
    :goto_1
    add-int v2, p2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1584
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1585
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 1589
    :cond_5
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1590
    array-length v2, p1

    if-lt p2, v2, :cond_6

    .line 1593
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    .line 1595
    :cond_6
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outPtr":I
    .local v2, "outPtr":I
    int-to-char v3, v1

    aput-char v3, p1, p2

    .line 1596
    .end local v1    # "ch":I
    move p2, v2

    goto :goto_0
.end method

.method protected _finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1513
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1514
    const/16 v0, 0x19

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1515
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1518
    .local v0, "ch":I
    const/4 v1, 0x2

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-ge v0, v4, :cond_1

    .line 1519
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_3

    .line 1520
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v6

    .line 1521
    .local v6, "outBuf":[C
    aput-char v2, v6, v3

    .line 1522
    aput-char v4, v6, v5

    .line 1523
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1524
    invoke-virtual {p0, v6, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1526
    .end local v6    # "outBuf":[C
    :cond_1
    const/16 v6, 0x39

    if-le v0, v6, :cond_5

    .line 1527
    const/16 v6, 0x65

    if-eq v0, v6, :cond_4

    const/16 v6, 0x45

    if-ne v0, v6, :cond_2

    goto :goto_1

    .line 1537
    :cond_2
    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    .line 1538
    const-string v1, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1557
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1558
    const-string v1, "0"

    invoke-virtual {p0, v3, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1528
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v6

    .line 1529
    .restart local v6    # "outBuf":[C
    aput-char v2, v6, v3

    .line 1530
    aput-char v4, v6, v5

    .line 1531
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1532
    invoke-virtual {p0, v6, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1544
    .end local v6    # "outBuf":[C
    :cond_5
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v7, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_LEADING_ZEROS:I

    and-int/2addr v6, v7

    if-nez v6, :cond_6

    .line 1545
    const-string v6, "Leading zeroes not allowed"

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1547
    :cond_6
    if-ne v0, v4, :cond_7

    .line 1548
    goto :goto_0

    .line 1550
    :cond_7
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1552
    .local v4, "outBuf":[C
    aput-char v2, v4, v3

    .line 1553
    int-to-char v2, v0

    aput-char v2, v4, v5

    .line 1554
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1555
    invoke-virtual {p0, v4, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected _finishNumberLeadingZeroes()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1462
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1463
    const/16 v0, 0x18

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1464
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1467
    .local v0, "ch":I
    const/4 v1, 0x0

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 1468
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_3

    .line 1469
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1470
    .local v4, "outBuf":[C
    aput-char v2, v4, v1

    .line 1471
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1472
    invoke-virtual {p0, v4, v3, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1474
    .end local v4    # "outBuf":[C
    :cond_1
    const/16 v4, 0x39

    if-le v0, v4, :cond_5

    .line 1475
    const/16 v4, 0x65

    if-eq v0, v4, :cond_4

    const/16 v4, 0x45

    if-ne v0, v4, :cond_2

    goto :goto_1

    .line 1484
    :cond_2
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_3

    .line 1485
    const-string v2, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1503
    :cond_3
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1504
    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1476
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1477
    .restart local v4    # "outBuf":[C
    aput-char v2, v4, v1

    .line 1478
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1479
    invoke-virtual {p0, v4, v3, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1491
    .end local v4    # "outBuf":[C
    :cond_5
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v5, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_LEADING_ZEROS:I

    and-int/2addr v4, v5

    if-nez v4, :cond_6

    .line 1492
    const-string v4, "Leading zeroes not allowed"

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1494
    :cond_6
    if-ne v0, v2, :cond_7

    .line 1495
    goto :goto_0

    .line 1497
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 1499
    .local v2, "outBuf":[C
    int-to-char v4, v0

    aput-char v4, v2, v1

    .line 1500
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1501
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected _finishNumberMinus(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1439
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    const/4 v1, 0x2

    const/16 v2, 0x30

    if-gt p1, v2, :cond_1

    .line 1440
    if-ne p1, v2, :cond_0

    .line 1441
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1443
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    goto :goto_0

    .line 1444
    :cond_1
    const/16 v2, 0x39

    if-le p1, v2, :cond_3

    .line 1445
    const/16 v2, 0x49

    if-ne p1, v2, :cond_2

    .line 1446
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1448
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1450
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 1451
    .local v0, "outBuf":[C
    const/4 v2, 0x0

    const/16 v3, 0x2d

    aput-char v3, v0, v2

    .line 1452
    int-to-char v2, p1

    const/4 v3, 0x1

    aput-char v2, v0, v3

    .line 1453
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1454
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected final _finishToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    const/4 v1, 0x0

    const/16 v2, 0x2d

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 338
    :pswitch_0
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    .line 339
    const/4 v0, 0x0

    return-object v0

    .line 336
    :pswitch_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 334
    :pswitch_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishCppComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 332
    :pswitch_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 330
    :pswitch_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 328
    :pswitch_5
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 323
    :pswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 320
    :pswitch_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 298
    :pswitch_8
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    invoke-direct {p0, v0, v1, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitUTF8_4(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 301
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    if-ne v0, v2, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 304
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 290
    :pswitch_9
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    invoke-direct {p0, v0, v1, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitUTF8_3(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 293
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    if-ne v0, v2, :cond_3

    .line 294
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 296
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 284
    :pswitch_a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_2(II)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 285
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    if-ne v0, v2, :cond_4

    .line 286
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 288
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 308
    :pswitch_b
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quoted32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quotedDigits:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitEscaped(II)I

    move-result v0

    .line 309
    .local v0, "c":I
    if-gez v0, :cond_5

    .line 310
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 312
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v3, v0

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 314
    .end local v0    # "c":I
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    if-ne v0, v2, :cond_6

    .line 315
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 317
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_c
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 279
    :pswitch_d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 277
    :pswitch_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_f
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishFloatFraction()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 272
    :pswitch_10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 273
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v1

    .line 272
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 270
    :pswitch_11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberLeadingZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 266
    :pswitch_13
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberMinus(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 263
    :pswitch_14
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_nonStdTokenType:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_15
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "false"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 259
    :pswitch_16
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "true"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 257
    :pswitch_17
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "null"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 250
    :pswitch_18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 254
    :pswitch_19
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 252
    :pswitch_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 248
    :pswitch_1b
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 243
    :pswitch_1c
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishUnquotedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 241
    :pswitch_1d
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 239
    :pswitch_1e
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishFieldWithEscape()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 237
    :pswitch_1f
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 233
    :pswitch_20
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 231
    :pswitch_21
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 229
    :pswitch_22
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishBOM(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final _finishTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 352
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": was expecting rest of token (internal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 412
    return-object v0

    .line 368
    :sswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 394
    :sswitch_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, ": was expecting fraction after exponent marker"

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 402
    :sswitch_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, ": was expecting closing \'*/\' for comment"

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 407
    :sswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 388
    :sswitch_4
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 391
    :sswitch_5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 379
    :sswitch_6
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v1

    .line 380
    .local v1, "len":I
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numberNegative:Z

    if-eqz v2, :cond_0

    .line 381
    add-int/lit8 v1, v1, -0x1

    .line 383
    :cond_0
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 385
    .end local v1    # "len":I
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 375
    :sswitch_7
    const-string v1, "0"

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 366
    :sswitch_8
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_nonStdTokenType:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdTokenWithEOF(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 364
    :sswitch_9
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, "false"

    invoke-virtual {p0, v3, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 362
    :sswitch_a
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, "true"

    invoke-virtual {p0, v3, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 360
    :sswitch_b
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, "null"

    invoke-virtual {p0, v3, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 356
    :sswitch_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 354
    :sswitch_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_d
        0xc -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_a
        0x12 -> :sswitch_9
        0x13 -> :sswitch_8
        0x18 -> :sswitch_7
        0x19 -> :sswitch_7
        0x1a -> :sswitch_6
        0x1e -> :sswitch_4
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x32 -> :sswitch_0
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
    .end sparse-switch
.end method

.method protected _reportErrorToken(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "actualToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1265
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 1266
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_validJsonTokenList()Ljava/lang/String;

    move-result-object v1

    .line 1265
    const-string v2, "Unrecognized token \'%s\': was expecting %s"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1267
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected _startAposString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2498
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2499
    .local v0, "ptr":I
    const/4 v1, 0x0

    .line 2500
    .local v1, "outPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 2501
    .local v2, "outBuf":[C
    sget-object v3, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icUTF8:[I

    .line 2503
    .local v3, "codes":[I
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    array-length v5, v2

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2504
    .local v4, "max":I
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 2505
    .local v5, "inputBuffer":[B
    :goto_0
    if-ge v0, v4, :cond_2

    .line 2506
    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    .line 2507
    .local v6, "c":I
    const/16 v7, 0x27

    if-ne v6, v7, :cond_0

    .line 2508
    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2509
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2510
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    return-object v7

    .line 2513
    :cond_0
    aget v7, v3, v6

    if-eqz v7, :cond_1

    .line 2514
    goto :goto_1

    .line 2516
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 2517
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "outPtr":I
    .local v7, "outPtr":I
    int-to-char v8, v6

    aput-char v8, v2, v1

    .line 2518
    .end local v6    # "c":I
    move v1, v7

    goto :goto_0

    .line 2519
    .end local v7    # "outPtr":I
    .restart local v1    # "outPtr":I
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2520
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2521
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    return-object v6
.end method

.method protected _startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1101
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1102
    .local v0, "ptr":I
    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_2

    .line 1103
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 1104
    .local v1, "buf":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ptr":I
    .local v2, "ptr":I
    aget-byte v0, v1, v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    .end local v2    # "ptr":I
    .restart local v0    # "ptr":I
    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v0, v1, v0

    const/16 v3, 0x73

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    .end local v2    # "ptr":I
    .restart local v0    # "ptr":I
    aget-byte v2, v1, v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    .line 1108
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    .line 1109
    .local v2, "ch":I
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_2

    .line 1110
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1111
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3

    .line 1104
    .end local v0    # "ptr":I
    .local v2, "ptr":I
    :cond_1
    move v0, v2

    .line 1115
    .end local v1    # "buf":[B
    .end local v2    # "ptr":I
    .restart local v0    # "ptr":I
    :cond_2
    const/16 v1, 0x12

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1116
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "false"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected _startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .param p1, "outBuf"    # [C
    .param p2, "outPtr"    # I
    .param p3, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1604
    const/4 v0, 0x0

    .line 1605
    .local v0, "fractLen":I
    const/16 v1, 0x39

    const/16 v2, 0x30

    const/16 v3, 0x2e

    if-ne p3, v3, :cond_5

    .line 1606
    array-length v4, p1

    if-lt p2, v4, :cond_0

    .line 1607
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    .line 1609
    :cond_0
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "outPtr":I
    .local v4, "outPtr":I
    aput-char v3, p1, p2

    move p2, v4

    .line 1611
    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    .line 1612
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1613
    const/16 v1, 0x1e

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1614
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fractLength:I

    .line 1615
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 1617
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p3, v3, v4

    .line 1618
    if-lt p3, v2, :cond_4

    if-le p3, v1, :cond_2

    goto :goto_1

    .line 1626
    :cond_2
    array-length v3, p1

    if-lt p2, v3, :cond_3

    .line 1627
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    .line 1629
    :cond_3
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "outPtr":I
    .local v3, "outPtr":I
    int-to-char v4, p3

    aput-char v4, p1, p2

    .line 1630
    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    .line 1619
    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    :cond_4
    :goto_1
    and-int/lit16 p3, p3, 0xff

    .line 1621
    if-nez v0, :cond_5

    .line 1622
    const-string v3, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1633
    :cond_5
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fractLength:I

    .line 1634
    const/4 v3, 0x0

    .line 1635
    .local v3, "expLen":I
    const/16 v4, 0x65

    if-eq p3, v4, :cond_6

    const/16 v4, 0x45

    if-ne p3, v4, :cond_11

    .line 1636
    :cond_6
    array-length v4, p1

    if-lt p2, v4, :cond_7

    .line 1637
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    .line 1639
    :cond_7
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "outPtr":I
    .restart local v4    # "outPtr":I
    int-to-char v5, p3

    aput-char v5, p1, p2

    .line 1640
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/4 v6, 0x0

    if-lt p2, v5, :cond_8

    .line 1641
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1642
    const/16 p2, 0x1f

    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1643
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1644
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p2

    .line 1646
    :cond_8
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, p2, v5

    .line 1647
    .end local p3    # "ch":I
    .local p2, "ch":I
    const/16 p3, 0x2d

    const/16 v5, 0x20

    if-eq p2, p3, :cond_a

    const/16 p3, 0x2b

    if-ne p2, p3, :cond_9

    goto :goto_2

    :cond_9
    move p3, v4

    goto :goto_3

    .line 1648
    :cond_a
    :goto_2
    array-length p3, p1

    if-lt v4, p3, :cond_b

    .line 1649
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    .line 1651
    :cond_b
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "outPtr":I
    .local p3, "outPtr":I
    int-to-char v7, p2

    aput-char v7, p1, v4

    .line 1652
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v4, v7, :cond_c

    .line 1653
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1654
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1655
    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1656
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 1658
    :cond_c
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, v4, v6

    .line 1660
    :goto_3
    if-lt p2, v2, :cond_f

    if-gt p2, v1, :cond_f

    .line 1661
    add-int/lit8 v3, v3, 0x1

    .line 1662
    array-length v4, p1

    if-lt p3, v4, :cond_d

    .line 1663
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    .line 1665
    :cond_d
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "outPtr":I
    .restart local v4    # "outPtr":I
    int-to-char v6, p2

    aput-char v6, p1, p3

    .line 1666
    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p3, v6, :cond_e

    .line 1667
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p3, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1668
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1669
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1670
    sget-object p3, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p3

    .line 1672
    :cond_e
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, p3, v6

    move p3, v4

    goto :goto_3

    .line 1675
    .end local v4    # "outPtr":I
    .restart local p3    # "outPtr":I
    :cond_f
    and-int/lit16 p2, p2, 0xff

    .line 1676
    if-nez v3, :cond_10

    .line 1677
    const-string v1, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1681
    :cond_10
    move v8, p3

    move p3, p2

    move p2, v8

    .local p2, "outPtr":I
    .local p3, "ch":I
    :cond_11
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1682
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1684
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1685
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected _startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numberNegative:Z

    .line 1329
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1330
    const/16 v0, 0x17

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1331
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1333
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1334
    .local v1, "ch":I
    const/4 v2, 0x2

    const-string v3, "expected digit (0-9) to follow minus sign, for valid numeric value"

    const/16 v4, 0x39

    const/16 v5, 0x30

    if-gt v1, v5, :cond_2

    .line 1335
    if-ne v1, v5, :cond_1

    .line 1336
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1339
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    goto :goto_0

    .line 1340
    :cond_2
    if-le v1, v4, :cond_4

    .line 1341
    const/16 v6, 0x49

    if-ne v1, v6, :cond_3

    .line 1342
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1344
    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1346
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 1347
    .local v3, "outBuf":[C
    const/4 v6, 0x0

    const/16 v7, 0x2d

    aput-char v7, v3, v6

    .line 1348
    int-to-char v6, v1

    aput-char v6, v3, v0

    .line 1349
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v8, 0x1a

    if-lt v6, v7, :cond_5

    .line 1350
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1351
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1352
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1353
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1355
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v2, v6

    .line 1356
    const/4 v2, 0x2

    .line 1359
    .local v2, "outPtr":I
    :goto_1
    if-ge v1, v5, :cond_6

    .line 1360
    const/16 v4, 0x2e

    if-ne v1, v4, :cond_7

    .line 1361
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1362
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1363
    invoke-virtual {p0, v3, v2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1367
    :cond_6
    if-le v1, v4, :cond_9

    .line 1368
    const/16 v4, 0x65

    if-eq v1, v4, :cond_8

    const/16 v4, 0x45

    if-ne v1, v4, :cond_7

    goto :goto_2

    .line 1387
    :cond_7
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1388
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1389
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1369
    :cond_8
    :goto_2
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1370
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1371
    invoke-virtual {p0, v3, v2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1375
    :cond_9
    array-length v6, v3

    if-lt v2, v6, :cond_a

    .line 1377
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v3

    .line 1379
    :cond_a
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outPtr":I
    .local v6, "outPtr":I
    int-to-char v7, v1

    aput-char v7, v3, v2

    .line 1380
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v2, v7, :cond_b

    .line 1381
    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1382
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1383
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1385
    :cond_b
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v7

    and-int/lit16 v1, v2, 0xff

    move v2, v6

    goto :goto_1
.end method

.method protected _startNullToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1140
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1141
    .local v0, "ptr":I
    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_3

    .line 1142
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 1143
    .local v1, "buf":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ptr":I
    .local v2, "ptr":I
    aget-byte v0, v1, v0

    const/16 v3, 0x75

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    .end local v2    # "ptr":I
    .restart local v0    # "ptr":I
    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_1

    .line 1146
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    .line 1147
    .local v0, "ch":I
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_1

    .line 1148
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1149
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3

    .line 1153
    .end local v0    # "ch":I
    .end local v1    # "buf":[B
    :cond_1
    move v0, v2

    goto :goto_0

    .line 1143
    .restart local v1    # "buf":[B
    :cond_2
    move v0, v2

    .line 1153
    .end local v1    # "buf":[B
    .end local v2    # "ptr":I
    .local v0, "ptr":I
    :cond_3
    :goto_0
    const/16 v1, 0x10

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1154
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "null"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected _startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1394
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1395
    .local v0, "ptr":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1396
    const/16 v1, 0x18

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1397
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 1404
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ptr":I
    .local v2, "ptr":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 1406
    .local v0, "ch":I
    const/4 v1, 0x0

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1

    .line 1407
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3

    .line 1408
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1409
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1410
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 1411
    .local v5, "outBuf":[C
    aput-char v3, v5, v1

    .line 1412
    invoke-virtual {p0, v5, v4, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1414
    .end local v5    # "outBuf":[C
    :cond_1
    const/16 v5, 0x39

    if-le v0, v5, :cond_5

    .line 1415
    const/16 v5, 0x65

    if-eq v0, v5, :cond_4

    const/16 v5, 0x45

    if-ne v0, v5, :cond_2

    goto :goto_0

    .line 1425
    :cond_2
    const/16 v3, 0x5d

    if-eq v0, v3, :cond_3

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_3

    .line 1426
    const-string v3, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1434
    :cond_3
    const-string v3, "0"

    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1416
    :cond_4
    :goto_0
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1417
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1418
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 1419
    .restart local v5    # "outBuf":[C
    aput-char v3, v5, v1

    .line 1420
    invoke-virtual {p0, v5, v4, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1431
    .end local v5    # "outBuf":[C
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberLeadingZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected _startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numberNegative:Z

    .line 1279
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1280
    .local v1, "outBuf":[C
    int-to-char v2, p1

    aput-char v2, v1, v0

    .line 1282
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-lt v0, v2, :cond_0

    .line 1283
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1284
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1285
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1288
    :cond_0
    const/4 v0, 0x1

    .line 1290
    .local v0, "outPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v5

    and-int/lit16 p1, v2, 0xff

    .line 1292
    :goto_0
    const/16 v2, 0x30

    if-ge p1, v2, :cond_1

    .line 1293
    const/16 v2, 0x2e

    if-ne p1, v2, :cond_2

    .line 1294
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1295
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1296
    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 1300
    :cond_1
    const/16 v2, 0x39

    if-le p1, v2, :cond_4

    .line 1301
    const/16 v2, 0x65

    if-eq p1, v2, :cond_3

    const/16 v2, 0x45

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 1321
    :cond_2
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1322
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1323
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 1302
    :cond_3
    :goto_1
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1303
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1304
    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 1308
    :cond_4
    array-length v2, v1

    if-lt v0, v2, :cond_5

    .line 1311
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v1

    .line 1313
    :cond_5
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "outPtr":I
    .local v2, "outPtr":I
    int-to-char v5, p1

    aput-char v5, v1, v0

    .line 1314
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v5, :cond_6

    .line 1315
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1316
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1317
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1319
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v5

    and-int/lit16 p1, v0, 0xff

    move v0, v2

    goto :goto_0
.end method

.method protected _startString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2371
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2372
    .local v0, "ptr":I
    const/4 v1, 0x0

    .line 2373
    .local v1, "outPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 2374
    .local v2, "outBuf":[C
    sget-object v3, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icUTF8:[I

    .line 2376
    .local v3, "codes":[I
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    array-length v5, v2

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2377
    .local v4, "max":I
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 2378
    .local v5, "inputBuffer":[B
    :goto_0
    if-ge v0, v4, :cond_1

    .line 2379
    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    .line 2380
    .local v6, "c":I
    aget v7, v3, v6

    if-eqz v7, :cond_0

    .line 2381
    const/16 v7, 0x22

    if-ne v6, v7, :cond_1

    .line 2382
    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2383
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2384
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    return-object v7

    .line 2388
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2389
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "outPtr":I
    .local v7, "outPtr":I
    int-to-char v8, v6

    aput-char v8, v2, v1

    .line 2390
    .end local v6    # "c":I
    move v1, v7

    goto :goto_0

    .line 2391
    .end local v7    # "outPtr":I
    .restart local v1    # "outPtr":I
    :cond_1
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2392
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2393
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    return-object v6
.end method

.method protected _startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1122
    .local v0, "ptr":I
    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_3

    .line 1123
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 1124
    .local v1, "buf":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ptr":I
    .local v2, "ptr":I
    aget-byte v0, v1, v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    .end local v2    # "ptr":I
    .restart local v0    # "ptr":I
    aget-byte v2, v1, v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v0, v1, v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    .line 1127
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    .line 1128
    .local v0, "ch":I
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_1

    .line 1129
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1130
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    return-object v3

    .line 1134
    .end local v0    # "ch":I
    .end local v1    # "buf":[B
    :cond_1
    move v0, v2

    goto :goto_0

    .line 1124
    .restart local v1    # "buf":[B
    :cond_2
    move v0, v2

    .line 1134
    .end local v1    # "buf":[B
    .end local v2    # "ptr":I
    .local v0, "ptr":I
    :cond_3
    :goto_0
    const/16 v1, 0x11

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1135
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "true"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected _startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "leadingComma"    # Z
    .param p2, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 890
    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 892
    :sswitch_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 893
    goto :goto_0

    .line 917
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 919
    :sswitch_2
    invoke-virtual {p0, v0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 900
    :cond_0
    :sswitch_3
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v2, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_MISSING:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 901
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 902
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 908
    :cond_1
    :sswitch_4
    goto :goto_0

    .line 915
    :sswitch_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 910
    :sswitch_6
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 911
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 922
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected a valid value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_validJsonValueList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 923
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_6
        0x2b -> :sswitch_5
        0x2c -> :sswitch_3
        0x49 -> :sswitch_2
        0x4e -> :sswitch_1
        0x5d -> :sswitch_0
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method public endOfInput()V
    .locals 1

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_endOfInput:Z

    .line 118
    return-void
.end method

.method public feedInput([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_0

    .line 92
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Still have %d undecoded bytes, should not call \'feedInput\'"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_0
    if-ge p3, p2, :cond_1

    .line 95
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Input end (%d) may not be before start (%d)"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_endOfInput:Z

    if-eqz v0, :cond_2

    .line 99
    const-string v0, "Already closed, can not feed more input"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;)V

    .line 102
    :cond_2
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputProcessed:J

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_origBufferLen:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputProcessed:J

    .line 105
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    sub-int/2addr v0, v1

    sub-int v0, p2, v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    .line 108
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currBufferStart:I

    .line 109
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 110
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 111
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    .line 112
    sub-int v0, p3, p2

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_origBufferLen:I

    .line 113
    return-void
.end method

.method public getNonBlockingInputFeeder()Lcom/fasterxml/jackson/core/async/ByteArrayFeeder;
    .locals 0

    .line 79
    return-object p0
.end method

.method public bridge synthetic getNonBlockingInputFeeder()Lcom/fasterxml/jackson/core/async/NonBlockingInputFeeder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->getNonBlockingInputFeeder()Lcom/fasterxml/jackson/core/async/ByteArrayFeeder;

    move-result-object v0

    return-object v0
.end method

.method public final needMoreInput()Z
    .locals 2

    .line 84
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_endOfInput:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 166
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closed:Z

    if-eqz v0, :cond_0

    .line 167
    return-object v2

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_endOfInput:Z

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 178
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    .line 182
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 186
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numTypesValid:I

    .line 187
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputProcessed:J

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_tokenInputTotal:J

    .line 189
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_binaryValue:[B

    .line 190
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 192
    .local v0, "ch":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_majorState:I

    packed-switch v1, :pswitch_data_0

    .line 215
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    .line 216
    return-object v2

    .line 211
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 208
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 205
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 202
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 200
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 197
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 194
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startDocument(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v0, v1

    .line 140
    .local v0, "avail":I
    if-lez v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 143
    :cond_0
    return v0
.end method
