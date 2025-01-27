.class public Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "UTF8DataInputJsonParser.java"


# static fields
.field static final BYTE_LF:B = 0xat

.field private static final FEAT_MASK_ALLOW_JAVA_COMMENTS:I

.field private static final FEAT_MASK_ALLOW_MISSING:I

.field private static final FEAT_MASK_ALLOW_SINGLE_QUOTES:I

.field private static final FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

.field private static final FEAT_MASK_ALLOW_YAML_COMMENTS:I

.field private static final FEAT_MASK_LEADING_ZEROS:I

.field private static final FEAT_MASK_NON_NUM_NUMBERS:I

.field private static final FEAT_MASK_TRAILING_COMMA:I

.field protected static final _icLatin1:[I

.field private static final _icUTF8:[I


# instance fields
.field protected _inputData:Ljava/io/DataInput;

.field protected _nextByte:I

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field private _quad1:I

.field protected _quadBuffer:[I

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    .line 43
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_LEADING_ZEROS:I

    .line 45
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_NON_NUM_NUMBERS:I

    .line 47
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_MISSING:I

    .line 48
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    .line 49
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

    .line 50
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_JAVA_COMMENTS:I

    .line 51
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    .line 54
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 58
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/DataInput;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;I)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "features"    # I
    .param p3, "inputData"    # Ljava/io/DataInput;
    .param p4, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p5, "sym"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .param p6, "firstByte"    # I

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 87
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 126
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 127
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 128
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    .line 129
    iput p6, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 130
    return-void
.end method

.method private final _checkMatchEnd(Ljava/lang/String;II)V
    .locals 2
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2190
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeCharForError(I)I

    move-result v0

    int-to-char v0, v0

    .line 2191
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2192
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidToken(ILjava/lang/String;)V

    .line 2194
    :cond_0
    return-void
.end method

.method private _closeScope(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 2861
    const/16 v0, 0x7d

    const/16 v1, 0x5d

    if-ne p1, v1, :cond_1

    .line 2862
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2863
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 2865
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->clearAndGetParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 2866
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 2868
    :cond_1
    if-ne p1, v0, :cond_3

    .line 2869
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2870
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 2872
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->clearAndGetParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 2873
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 2875
    :cond_3
    return-void
.end method

.method private final _decodeUtf8_2(I)I
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2578
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2579
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 2580
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2582
    :cond_0
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    return v1
.end method

.method private final _decodeUtf8_3(I)I
    .locals 4
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2587
    and-int/lit8 p1, p1, 0xf

    .line 2588
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2589
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 2590
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2592
    :cond_0
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v3, v0, 0x3f

    or-int/2addr v1, v3

    .line 2593
    .local v1, "c":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2594
    and-int/lit16 v3, v0, 0xc0

    if-eq v3, v2, :cond_1

    .line 2595
    and-int/lit16 v2, v0, 0xff

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2597
    :cond_1
    shl-int/lit8 v2, v1, 0x6

    and-int/lit8 v3, v0, 0x3f

    or-int v1, v2, v3

    .line 2598
    return v1
.end method

.method private final _decodeUtf8_4(I)I
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2607
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2608
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 2609
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2611
    :cond_0
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v3, v0, 0x3f

    or-int p1, v1, v3

    .line 2612
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2613
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_1

    .line 2614
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2616
    :cond_1
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v3, v0, 0x3f

    or-int p1, v1, v3

    .line 2617
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2618
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_2

    .line 2619
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2625
    :cond_2
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    return v1
.end method

.method private _finishAndReturnString()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1875
    const/4 v0, 0x0

    .line 1876
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1877
    .local v1, "outBuf":[C
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 1878
    .local v2, "codes":[I
    array-length v3, v1

    .line 1881
    .local v3, "outEnd":I
    :goto_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1882
    .local v4, "c":I
    aget v5, v2, v4

    if-eqz v5, :cond_1

    .line 1883
    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    .line 1884
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentAndReturn(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1886
    :cond_0
    invoke-direct {p0, v1, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString2([CII)V

    .line 1887
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1889
    :cond_1
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .local v5, "outPtr":I
    int-to-char v6, v4

    aput-char v6, v1, v0

    .line 1890
    .end local v4    # "c":I
    if-lt v5, v3, :cond_2

    .line 1891
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-direct {p0, v1, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString2([CII)V

    .line 1892
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1890
    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method private final _finishString2([CII)V
    .locals 5
    .param p1, "outBuf"    # [C
    .param p2, "outPtr"    # I
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1899
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 1900
    .local v0, "codes":[I
    array-length v1, p1

    .line 1905
    .local v1, "outEnd":I
    :goto_0
    aget v2, v0, p3

    if-nez v2, :cond_1

    .line 1906
    if-lt p2, v1, :cond_0

    .line 1907
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1908
    const/4 p2, 0x0

    .line 1909
    array-length v1, p1

    .line 1911
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outPtr":I
    .local v2, "outPtr":I
    int-to-char v3, p3

    aput-char v3, p1, p2

    .line 1912
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p3

    move p2, v2

    goto :goto_0

    .line 1915
    .end local v2    # "outPtr":I
    .restart local p2    # "outPtr":I
    :cond_1
    const/16 v2, 0x22

    if-ne p3, v2, :cond_2

    .line 1916
    nop

    .line 1957
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1958
    return-void

    .line 1918
    :cond_2
    aget v2, v0, p3

    packed-switch v2, :pswitch_data_0

    .line 1941
    const/16 v2, 0x20

    if-ge p3, v2, :cond_4

    .line 1942
    const-string v2, "string value"

    invoke-virtual {p0, p3, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_2

    .line 1929
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_4(I)I

    move-result p3

    .line 1931
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outPtr":I
    .restart local v2    # "outPtr":I
    const v3, 0xd800

    shr-int/lit8 v4, p3, 0xa

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, p2

    .line 1932
    array-length p2, p1

    if-lt v2, p2, :cond_3

    .line 1933
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1934
    const/4 p2, 0x0

    .line 1935
    .end local v2    # "outPtr":I
    .restart local p2    # "outPtr":I
    array-length v1, p1

    goto :goto_1

    .line 1932
    .end local p2    # "outPtr":I
    .restart local v2    # "outPtr":I
    :cond_3
    move p2, v2

    .line 1937
    .end local v2    # "outPtr":I
    .restart local p2    # "outPtr":I
    :goto_1
    const v2, 0xdc00

    and-int/lit16 v3, p3, 0x3ff

    or-int p3, v3, v2

    .line 1939
    goto :goto_2

    .line 1926
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_3(I)I

    move-result p3

    .line 1927
    goto :goto_2

    .line 1923
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_2(I)I

    move-result p3

    .line 1924
    goto :goto_2

    .line 1920
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeEscaped()C

    move-result p3

    .line 1921
    goto :goto_2

    .line 1945
    :cond_4
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidChar(I)V

    .line 1949
    :goto_2
    array-length v2, p1

    if-lt p2, v2, :cond_5

    .line 1950
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1951
    const/4 p2, 0x0

    .line 1952
    array-length v1, p1

    .line 1955
    :cond_5
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "outPtr":I
    .restart local v2    # "outPtr":I
    int-to-char v3, p3

    aput-char v3, p1, p2

    .line 1903
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p3

    move p2, v2

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

.method private static _growArrayBy([II)[I
    .locals 1
    .param p0, "arr"    # [I
    .param p1, "more"    # I

    .line 2723
    if-nez p0, :cond_0

    .line 2724
    new-array v0, p1, [I

    return-object v0

    .line 2726
    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method private final _handleLeadingZeroes()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 1091
    .local v0, "ch":I
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v2, 0x39

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 1095
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v3, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_LEADING_ZEROS:I

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 1096
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1099
    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 1100
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 1102
    :cond_2
    return v0

    .line 1092
    :cond_3
    :goto_1
    return v0
.end method

.method private final _nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 744
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 745
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 748
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 750
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 751
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 753
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    const/4 v0, 0x1

    const/16 v1, 0x22

    if-ne p1, v1, :cond_0

    .line 701
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 702
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 704
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 738
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 709
    :sswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 710
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 712
    :sswitch_1
    const-string v1, "true"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 713
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 718
    :sswitch_2
    const-string v1, "null"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 719
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 715
    :sswitch_3
    const-string v1, "false"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 716
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 706
    :sswitch_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 707
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 736
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 721
    :sswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_5
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

.method private final _parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .param p1, "outBuf"    # [C
    .param p2, "outPtr"    # I
    .param p3, "c"    # I
    .param p4, "negative"    # Z
    .param p5, "integerPartLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    const/4 v0, 0x0

    .line 1111
    .local v0, "fractLen":I
    const/16 v1, 0x39

    const/16 v2, 0x30

    const/16 v3, 0x2e

    if-ne p3, v3, :cond_3

    .line 1112
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "outPtr":I
    .local v3, "outPtr":I
    int-to-char v4, p3

    aput-char v4, p1, p2

    move p2, v3

    .line 1116
    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p3

    .line 1117
    if-lt p3, v2, :cond_2

    if-le p3, v1, :cond_0

    .line 1118
    goto :goto_1

    .line 1120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1121
    array-length v3, p1

    if-lt p2, v3, :cond_1

    .line 1122
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1123
    const/4 p2, 0x0

    .line 1125
    :cond_1
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "outPtr":I
    .restart local v3    # "outPtr":I
    int-to-char v4, p3

    aput-char v4, p1, p2

    move p2, v3

    goto :goto_0

    .line 1128
    .end local v3    # "outPtr":I
    .restart local p2    # "outPtr":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1129
    const-string v3, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1133
    :cond_3
    const/4 v3, 0x0

    .line 1134
    .local v3, "expLen":I
    const/16 v4, 0x65

    if-eq p3, v4, :cond_4

    const/16 v4, 0x45

    if-ne p3, v4, :cond_b

    .line 1135
    :cond_4
    array-length v4, p1

    if-lt p2, v4, :cond_5

    .line 1136
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1137
    const/4 p2, 0x0

    .line 1139
    :cond_5
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "outPtr":I
    .local v4, "outPtr":I
    int-to-char v5, p3

    aput-char v5, p1, p2

    .line 1140
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p2

    .line 1142
    .end local p3    # "c":I
    .local p2, "c":I
    const/16 p3, 0x2d

    if-eq p2, p3, :cond_7

    const/16 p3, 0x2b

    if-ne p2, p3, :cond_6

    goto :goto_2

    :cond_6
    move p3, p2

    move p2, v4

    goto :goto_3

    .line 1143
    :cond_7
    :goto_2
    array-length p3, p1

    if-lt v4, p3, :cond_8

    .line 1144
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1145
    const/4 v4, 0x0

    .line 1147
    :cond_8
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "outPtr":I
    .local p3, "outPtr":I
    int-to-char v5, p2

    aput-char v5, p1, v4

    .line 1148
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p2

    move v6, p3

    move p3, p2

    move p2, v6

    .line 1150
    .local p2, "outPtr":I
    .local p3, "c":I
    :goto_3
    if-gt p3, v1, :cond_a

    if-lt p3, v2, :cond_a

    .line 1151
    add-int/lit8 v3, v3, 0x1

    .line 1152
    array-length v4, p1

    if-lt p2, v4, :cond_9

    .line 1153
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object p1

    .line 1154
    const/4 p2, 0x0

    .line 1156
    :cond_9
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "outPtr":I
    .restart local v4    # "outPtr":I
    int-to-char v5, p3

    aput-char v5, p1, p2

    .line 1157
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p3

    move p2, v4

    goto :goto_3

    .line 1160
    .end local v4    # "outPtr":I
    .restart local p2    # "outPtr":I
    :cond_a
    if-nez v3, :cond_b

    .line 1161
    const-string v1, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p3, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1167
    :cond_b
    iput p3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1168
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1169
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_verifyRootSpace()V

    .line 1171
    :cond_c
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1174
    invoke-virtual {p0, p4, p5, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetFloat(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method private final _parseLongName(III)Ljava/lang/String;
    .locals 11
    .param p1, "q"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1340
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1341
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1342
    const/4 v2, 0x2

    aput p3, v0, v2

    .line 1345
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    .line 1346
    .local v0, "codes":[I
    const/4 v3, 0x3

    move v10, v3

    .line 1349
    .local v10, "qlen":I
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 1350
    .local v3, "i":I
    aget v4, v0, v3

    const/16 v5, 0x22

    if-eqz v4, :cond_1

    .line 1351
    if-ne v3, v5, :cond_0

    .line 1352
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v2, v10, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName([IIII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1354
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v9, 0x1

    move-object v4, p0

    move v6, v10

    move v7, p1

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1357
    :cond_1
    shl-int/lit8 v4, p1, 0x8

    or-int p1, v4, v3

    .line 1358
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v9

    .line 1359
    .end local v3    # "i":I
    .local v9, "i":I
    aget v3, v0, v9

    if-eqz v3, :cond_3

    .line 1360
    if-ne v9, v5, :cond_2

    .line 1361
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    invoke-direct {p0, v1, v10, p1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName([IIII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1363
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v8, 0x2

    move-object v3, p0

    move v5, v10

    move v6, p1

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1366
    :cond_3
    shl-int/lit8 v3, p1, 0x8

    or-int p1, v3, v9

    .line 1367
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v9

    .line 1368
    aget v3, v0, v9

    if-eqz v3, :cond_5

    .line 1369
    if-ne v9, v5, :cond_4

    .line 1370
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v10, p1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName([IIII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1372
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v8, 0x3

    move-object v3, p0

    move v5, v10

    move v6, p1

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1375
    :cond_5
    shl-int/lit8 v3, p1, 0x8

    or-int p1, v3, v9

    .line 1376
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v9

    .line 1377
    aget v3, v0, v9

    if-eqz v3, :cond_7

    .line 1378
    if-ne v9, v5, :cond_6

    .line 1379
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x4

    invoke-direct {p0, v1, v10, p1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName([IIII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1381
    :cond_6
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v8, 0x4

    move-object v3, p0

    move v5, v10

    move v6, p1

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1385
    :cond_7
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    array-length v4, v3

    if-lt v10, v4, :cond_8

    .line 1386
    invoke-static {v3, v10}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1388
    :cond_8
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    add-int/lit8 v4, v10, 0x1

    .end local v10    # "qlen":I
    .local v4, "qlen":I
    aput p1, v3, v10

    .line 1389
    move p1, v9

    .line 1390
    .end local v9    # "i":I
    move v10, v4

    goto/16 :goto_0
.end method

.method private final _parseMediumName(I)Ljava/lang/String;
    .locals 4
    .param p1, "q2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1262
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    .line 1265
    .local v0, "codes":[I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1266
    .local v1, "i":I
    aget v2, v0, v1

    const/16 v3, 0x22

    if-eqz v2, :cond_1

    .line 1267
    const/4 v2, 0x1

    if-ne v1, v3, :cond_0

    .line 1268
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v3, p1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(III)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1270
    :cond_0
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1272
    :cond_1
    shl-int/lit8 v2, p1, 0x8

    or-int p1, v2, v1

    .line 1273
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1274
    aget v2, v0, v1

    if-eqz v2, :cond_3

    .line 1275
    const/4 v2, 0x2

    if-ne v1, v3, :cond_2

    .line 1276
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v3, p1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(III)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1278
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1280
    :cond_3
    shl-int/lit8 v2, p1, 0x8

    or-int p1, v2, v1

    .line 1281
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1282
    aget v2, v0, v1

    if-eqz v2, :cond_5

    .line 1283
    const/4 v2, 0x3

    if-ne v1, v3, :cond_4

    .line 1284
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v3, p1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(III)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1286
    :cond_4
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1288
    :cond_5
    shl-int/lit8 v2, p1, 0x8

    or-int p1, v2, v1

    .line 1289
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1290
    aget v2, v0, v1

    if-eqz v2, :cond_7

    .line 1291
    const/4 v2, 0x4

    if-ne v1, v3, :cond_6

    .line 1292
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v3, p1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(III)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1294
    :cond_6
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1296
    :cond_7
    invoke-direct {p0, v1, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseMediumName2(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final _parseMediumName2(II)Ljava/lang/String;
    .locals 10
    .param p1, "q3"    # I
    .param p2, "q2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1301
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    .line 1304
    .local v0, "codes":[I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1305
    .local v1, "i":I
    aget v2, v0, v1

    const/16 v3, 0x22

    if-eqz v2, :cond_1

    .line 1306
    if-ne v1, v3, :cond_0

    .line 1307
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, p2, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1309
    :cond_0
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p2

    move v5, p1

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1311
    :cond_1
    shl-int/lit8 v2, p1, 0x8

    or-int p1, v2, v1

    .line 1312
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1313
    aget v2, v0, v1

    if-eqz v2, :cond_3

    .line 1314
    if-ne v1, v3, :cond_2

    .line 1315
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    const/4 v3, 0x2

    invoke-direct {p0, v2, p2, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1317
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    const/4 v9, 0x2

    move-object v4, p0

    move v6, p2

    move v7, p1

    move v8, v1

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1319
    :cond_3
    shl-int/lit8 v2, p1, 0x8

    or-int p1, v2, v1

    .line 1320
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1321
    aget v2, v0, v1

    if-eqz v2, :cond_5

    .line 1322
    if-ne v1, v3, :cond_4

    .line 1323
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    const/4 v3, 0x3

    invoke-direct {p0, v2, p2, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1325
    :cond_4
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    const/4 v9, 0x3

    move-object v4, p0

    move v6, p2

    move v7, p1

    move v8, v1

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1327
    :cond_5
    shl-int/lit8 v2, p1, 0x8

    or-int p1, v2, v1

    .line 1328
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1329
    aget v2, v0, v1

    if-eqz v2, :cond_7

    .line 1330
    if-ne v1, v3, :cond_6

    .line 1331
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    const/4 v3, 0x4

    invoke-direct {p0, v2, p2, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(IIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1333
    :cond_6
    iget v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    const/4 v9, 0x4

    move-object v4, p0

    move v6, p2

    move v7, p1

    move v8, v1

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(IIIII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1335
    :cond_7
    invoke-direct {p0, v1, p2, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseLongName(III)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private _reportInvalidOther(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 2718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2719
    return-void
.end method

.method private final _skipCComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2396
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeComment()[I

    move-result-object v0

    .line 2397
    .local v0, "codes":[I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2402
    .local v1, "i":I
    :cond_0
    :goto_0
    aget v2, v0, v1

    .line 2403
    .local v2, "code":I
    if-eqz v2, :cond_1

    .line 2404
    sparse-switch v2, :sswitch_data_0

    .line 2426
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidChar(I)V

    goto :goto_1

    .line 2406
    :sswitch_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2407
    const/16 v3, 0x2f

    if-ne v1, v3, :cond_0

    .line 2408
    return-void

    .line 2413
    :sswitch_1
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    .line 2414
    goto :goto_1

    .line 2422
    :sswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_4()V

    .line 2423
    goto :goto_1

    .line 2419
    :sswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_3()V

    .line 2420
    goto :goto_1

    .line 2416
    :sswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_2()V

    .line 2429
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2430
    .end local v2    # "code":I
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final _skipColon()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2297
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2298
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 2299
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 2301
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2304
    :goto_0
    const/16 v1, 0x3a

    const/16 v2, 0x9

    const/16 v3, 0x23

    const/16 v4, 0x2f

    const/4 v5, 0x1

    const/16 v6, 0x20

    if-ne v0, v1, :cond_8

    .line 2305
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2306
    if-le v0, v6, :cond_3

    .line 2307
    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 2310
    :cond_1
    return v0

    .line 2308
    :cond_2
    :goto_1
    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v1

    return v1

    .line 2312
    :cond_3
    if-eq v0, v6, :cond_4

    if-ne v0, v2, :cond_7

    .line 2313
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2314
    if-le v0, v6, :cond_7

    .line 2315
    if-eq v0, v4, :cond_6

    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 2318
    :cond_5
    return v0

    .line 2316
    :cond_6
    :goto_2
    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v1

    return v1

    .line 2321
    :cond_7
    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v1

    return v1

    .line 2323
    :cond_8
    if-eq v0, v6, :cond_9

    if-ne v0, v2, :cond_a

    .line 2324
    :cond_9
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v7}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2326
    :cond_a
    if-ne v0, v1, :cond_12

    .line 2327
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2328
    if-le v0, v6, :cond_d

    .line 2329
    if-eq v0, v4, :cond_c

    if-ne v0, v3, :cond_b

    goto :goto_3

    .line 2332
    :cond_b
    return v0

    .line 2330
    :cond_c
    :goto_3
    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v1

    return v1

    .line 2334
    :cond_d
    if-eq v0, v6, :cond_e

    if-ne v0, v2, :cond_11

    .line 2335
    :cond_e
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2336
    if-le v0, v6, :cond_11

    .line 2337
    if-eq v0, v4, :cond_10

    if-ne v0, v3, :cond_f

    goto :goto_4

    .line 2340
    :cond_f
    return v0

    .line 2338
    :cond_10
    :goto_4
    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v1

    return v1

    .line 2343
    :cond_11
    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v1

    return v1

    .line 2345
    :cond_12
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon2(IZ)I

    move-result v1

    return v1
.end method

.method private final _skipColon2(IZ)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "gotColon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2351
    :goto_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_4

    .line 2352
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    .line 2353
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipComment()V

    .line 2354
    goto :goto_1

    .line 2356
    :cond_0
    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    .line 2357
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipYAMLComment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2358
    goto :goto_1

    .line 2361
    :cond_1
    if-eqz p2, :cond_2

    .line 2362
    return p1

    .line 2364
    :cond_2
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_3

    .line 2365
    const-string v0, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2367
    :cond_3
    const/4 p2, 0x1

    goto :goto_1

    .line 2371
    :cond_4
    const/16 v0, 0xd

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 2372
    :cond_5
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    .line 2350
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    goto :goto_0
.end method

.method private final _skipComment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2380
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_JAVA_COMMENTS:I

    and-int/2addr v0, v1

    const/16 v1, 0x2f

    if-nez v0, :cond_0

    .line 2381
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2383
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2384
    .local v0, "c":I
    if-ne v0, v1, :cond_1

    .line 2385
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipLine()V

    goto :goto_0

    .line 2386
    :cond_1
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    .line 2387
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipCComment()V

    goto :goto_0

    .line 2389
    :cond_2
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2391
    :goto_0
    return-void
.end method

.method private final _skipLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2449
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeComment()[I

    move-result-object v0

    .line 2451
    .local v0, "codes":[I
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2452
    .local v1, "i":I
    aget v2, v0, v1

    .line 2453
    .local v2, "code":I
    if-eqz v2, :cond_0

    .line 2454
    sparse-switch v2, :sswitch_data_0

    .line 2471
    if-gez v2, :cond_0

    .line 2473
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidChar(I)V

    goto :goto_1

    .line 2460
    :sswitch_0
    goto :goto_1

    .line 2457
    :sswitch_1
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    .line 2458
    return-void

    .line 2468
    :sswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_4()V

    .line 2469
    goto :goto_1

    .line 2465
    :sswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_3()V

    .line 2466
    goto :goto_1

    .line 2462
    :sswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_2()V

    .line 2477
    .end local v1    # "i":I
    .end local v2    # "code":I
    :cond_0
    :goto_1
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final _skipUtf8_2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2630
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2631
    .local v0, "c":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 2632
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2634
    :cond_0
    return-void
.end method

.method private final _skipUtf8_3()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2642
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2643
    .local v0, "c":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 2644
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2646
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2647
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_1

    .line 2648
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2650
    :cond_1
    return-void
.end method

.method private final _skipUtf8_4()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2654
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2655
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 2656
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2658
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2659
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_1

    .line 2660
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2662
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2663
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_2

    .line 2664
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2666
    :cond_2
    return-void
.end method

.method private final _skipWS()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2204
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2205
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 2206
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 2208
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2211
    :goto_0
    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 2212
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 2215
    :cond_1
    return v0

    .line 2213
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWSComment(I)I

    move-result v1

    return v1

    .line 2219
    :cond_3
    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2220
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    .line 2223
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto :goto_0
.end method

.method private final _skipWSComment(I)I
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2269
    :goto_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_2

    .line 2270
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    .line 2271
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipComment()V

    goto :goto_1

    .line 2272
    :cond_0
    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    .line 2273
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipYAMLComment()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2274
    return p1

    .line 2277
    :cond_1
    return p1

    .line 2282
    :cond_2
    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 2283
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    .line 2291
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    goto :goto_0
.end method

.method private final _skipWSOrEnd()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2235
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2236
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 2238
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2241
    goto :goto_0

    .line 2239
    :catch_0
    move-exception v1

    .line 2240
    .local v1, "e":Ljava/io/EOFException;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_eofAsNextChar()I

    move-result v2

    return v2

    .line 2243
    .end local v1    # "e":Ljava/io/EOFException;
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2246
    :goto_0
    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 2247
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 2250
    :cond_1
    return v0

    .line 2248
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWSComment(I)I

    move-result v1

    return v1

    .line 2254
    :cond_3
    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2255
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    .line 2259
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 2262
    goto :goto_0

    .line 2260
    :catch_1
    move-exception v1

    .line 2261
    .restart local v1    # "e":Ljava/io/EOFException;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_eofAsNextChar()I

    move-result v2

    return v2
.end method

.method private final _skipYAMLComment()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2435
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2436
    const/4 v0, 0x0

    return v0

    .line 2438
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipLine()V

    .line 2439
    const/4 v0, 0x1

    return v0
.end method

.method private final _verifyRootSpace()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1187
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1188
    .local v0, "ch":I
    const/16 v1, 0x20

    if-gt v0, v1, :cond_2

    .line 1189
    const/4 v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1190
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1191
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    .line 1193
    :cond_1
    return-void

    .line 1195
    :cond_2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportMissingRootWS(I)V

    .line 1196
    return-void
.end method

.method private final addName([III)Ljava/lang/String;
    .locals 17
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1743
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    shl-int/lit8 v4, v2, 0x2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 1752
    .local v4, "byteLen":I
    if-ge v3, v5, :cond_0

    .line 1753
    add-int/lit8 v6, v2, -0x1

    aget v6, v1, v6

    .line 1755
    .local v6, "lastQuad":I
    add-int/lit8 v7, v2, -0x1

    rsub-int/lit8 v8, v3, 0x4

    shl-int/lit8 v8, v8, 0x3

    shl-int v8, v6, v8

    aput v8, v1, v7

    goto :goto_0

    .line 1757
    .end local v6    # "lastQuad":I
    :cond_0
    const/4 v6, 0x0

    .line 1761
    .restart local v6    # "lastQuad":I
    :goto_0
    iget-object v7, v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    .line 1762
    .local v7, "cbuf":[C
    const/4 v8, 0x0

    .line 1764
    .local v8, "cix":I
    const/4 v9, 0x0

    .local v9, "ix":I
    :goto_1
    if-ge v9, v4, :cond_c

    .line 1765
    shr-int/lit8 v10, v9, 0x2

    aget v10, v1, v10

    .line 1766
    .local v10, "ch":I
    and-int/lit8 v11, v9, 0x3

    .line 1767
    .local v11, "byteIx":I
    rsub-int/lit8 v12, v11, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int v12, v10, v12

    and-int/lit16 v10, v12, 0xff

    .line 1768
    add-int/lit8 v9, v9, 0x1

    .line 1770
    const/16 v12, 0x7f

    if-le v10, v12, :cond_a

    .line 1772
    and-int/lit16 v12, v10, 0xe0

    const/16 v13, 0xc0

    const/4 v14, 0x1

    if-ne v12, v13, :cond_1

    .line 1773
    and-int/lit8 v10, v10, 0x1f

    .line 1774
    const/4 v12, 0x1

    .local v12, "needed":I
    goto :goto_2

    .line 1775
    .end local v12    # "needed":I
    :cond_1
    and-int/lit16 v12, v10, 0xf0

    const/16 v13, 0xe0

    if-ne v12, v13, :cond_2

    .line 1776
    and-int/lit8 v10, v10, 0xf

    .line 1777
    const/4 v12, 0x2

    .restart local v12    # "needed":I
    goto :goto_2

    .line 1778
    .end local v12    # "needed":I
    :cond_2
    and-int/lit16 v12, v10, 0xf8

    const/16 v13, 0xf0

    if-ne v12, v13, :cond_3

    .line 1779
    and-int/lit8 v10, v10, 0x7

    .line 1780
    const/4 v12, 0x3

    .restart local v12    # "needed":I
    goto :goto_2

    .line 1782
    .end local v12    # "needed":I
    :cond_3
    invoke-virtual {v0, v10}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidInitial(I)V

    .line 1783
    move v10, v14

    move v12, v14

    .line 1785
    .restart local v12    # "needed":I
    :goto_2
    add-int v13, v9, v12

    if-le v13, v4, :cond_4

    .line 1786
    sget-object v13, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v15, " in field name"

    invoke-virtual {v0, v15, v13}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 1790
    :cond_4
    shr-int/lit8 v13, v9, 0x2

    aget v13, v1, v13

    .line 1791
    .local v13, "ch2":I
    and-int/lit8 v11, v9, 0x3

    .line 1792
    rsub-int/lit8 v15, v11, 0x3

    shl-int/lit8 v15, v15, 0x3

    shr-int/2addr v13, v15

    .line 1793
    add-int/lit8 v9, v9, 0x1

    .line 1795
    and-int/lit16 v15, v13, 0xc0

    const/16 v5, 0x80

    if-eq v15, v5, :cond_5

    .line 1796
    invoke-direct {v0, v13}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 1798
    :cond_5
    shl-int/lit8 v15, v10, 0x6

    and-int/lit8 v16, v13, 0x3f

    or-int v10, v15, v16

    .line 1799
    const/4 v15, 0x2

    if-le v12, v14, :cond_8

    .line 1800
    shr-int/lit8 v14, v9, 0x2

    aget v13, v1, v14

    .line 1801
    and-int/lit8 v11, v9, 0x3

    .line 1802
    rsub-int/lit8 v14, v11, 0x3

    shl-int/lit8 v14, v14, 0x3

    shr-int/2addr v13, v14

    .line 1803
    add-int/lit8 v9, v9, 0x1

    .line 1805
    and-int/lit16 v14, v13, 0xc0

    if-eq v14, v5, :cond_6

    .line 1806
    invoke-direct {v0, v13}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 1808
    :cond_6
    shl-int/lit8 v14, v10, 0x6

    and-int/lit8 v16, v13, 0x3f

    or-int v10, v14, v16

    .line 1809
    if-le v12, v15, :cond_8

    .line 1810
    shr-int/lit8 v14, v9, 0x2

    aget v13, v1, v14

    .line 1811
    and-int/lit8 v11, v9, 0x3

    .line 1812
    rsub-int/lit8 v14, v11, 0x3

    shl-int/lit8 v14, v14, 0x3

    shr-int/2addr v13, v14

    .line 1813
    add-int/lit8 v9, v9, 0x1

    .line 1814
    and-int/lit16 v14, v13, 0xc0

    if-eq v14, v5, :cond_7

    .line 1815
    and-int/lit16 v5, v13, 0xff

    invoke-direct {v0, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 1817
    :cond_7
    shl-int/lit8 v5, v10, 0x6

    and-int/lit8 v14, v13, 0x3f

    or-int/2addr v5, v14

    move v10, v5

    .line 1820
    :cond_8
    if-le v12, v15, :cond_a

    .line 1821
    const/high16 v5, 0x10000

    sub-int/2addr v10, v5

    .line 1822
    array-length v5, v7

    if-lt v8, v5, :cond_9

    .line 1823
    iget-object v5, v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v5

    move-object v7, v5

    .line 1825
    :cond_9
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "cix":I
    .local v5, "cix":I
    const v14, 0xd800

    shr-int/lit8 v15, v10, 0xa

    add-int/2addr v15, v14

    int-to-char v14, v15

    aput-char v14, v7, v8

    .line 1826
    const v8, 0xdc00

    and-int/lit16 v14, v10, 0x3ff

    or-int v10, v14, v8

    move v8, v5

    .line 1829
    .end local v5    # "cix":I
    .end local v12    # "needed":I
    .end local v13    # "ch2":I
    .restart local v8    # "cix":I
    :cond_a
    array-length v5, v7

    if-lt v8, v5, :cond_b

    .line 1830
    iget-object v5, v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v5

    move-object v7, v5

    .line 1832
    :cond_b
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "cix":I
    .restart local v5    # "cix":I
    int-to-char v12, v10

    aput-char v12, v7, v8

    .line 1833
    .end local v10    # "ch":I
    .end local v11    # "byteIx":I
    move v8, v5

    const/4 v5, 0x4

    goto/16 :goto_1

    .line 1836
    .end local v5    # "cix":I
    .end local v9    # "ix":I
    .restart local v8    # "cix":I
    :cond_c
    new-instance v5, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9, v8}, Ljava/lang/String;-><init>([CII)V

    .line 1838
    .local v5, "baseName":Ljava/lang/String;
    const/4 v9, 0x4

    if-ge v3, v9, :cond_d

    .line 1839
    add-int/lit8 v9, v2, -0x1

    aput v6, v1, v9

    .line 1841
    :cond_d
    iget-object v9, v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v9, v5, v1, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private final findName(II)Ljava/lang/String;
    .locals 3
    .param p1, "q1"    # I
    .param p2, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1678
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result p1

    .line 1680
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(I)Ljava/lang/String;

    move-result-object v0

    .line 1681
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1682
    return-object v0

    .line 1685
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1686
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final findName(III)Ljava/lang/String;
    .locals 3
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1691
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result p2

    .line 1693
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(II)Ljava/lang/String;

    move-result-object v0

    .line 1694
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1695
    return-object v0

    .line 1698
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1699
    const/4 v2, 0x1

    aput p2, v1, v2

    .line 1700
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, p3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final findName(IIII)Ljava/lang/String;
    .locals 4
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I
    .param p4, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1705
    invoke-static {p3, p4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result p3

    .line 1706
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(III)Ljava/lang/String;

    move-result-object v0

    .line 1707
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1708
    return-object v0

    .line 1710
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1711
    .local v1, "quads":[I
    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1712
    const/4 v2, 0x1

    aput p2, v1, v2

    .line 1713
    const/4 v2, 0x2

    invoke-static {p3, p4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v3

    aput v3, v1, v2

    .line 1714
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, p4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final findName([IIII)Ljava/lang/String;
    .locals 2
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I
    .param p3, "lastQuad"    # I
    .param p4, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1719
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1720
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v0

    move-object p1, v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1722
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "qlen":I
    .local v0, "qlen":I
    invoke-static {p3, p4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v1

    aput v1, p1, p2

    .line 1723
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object p2

    .line 1724
    .local p2, "name":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 1725
    invoke-direct {p0, p1, v0, p4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1727
    :cond_1
    return-object p2
.end method

.method private static final pad(II)I
    .locals 2
    .param p0, "q"    # I
    .param p1, "bytes"    # I

    .line 2881
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    shl-int/lit8 v1, p1, 0x3

    shl-int/2addr v0, v1

    or-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method private final parseName(III)Ljava/lang/String;
    .locals 6
    .param p1, "q1"    # I
    .param p2, "ch"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1394
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final parseName(IIII)Ljava/lang/String;
    .locals 6
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "ch"    # I
    .param p4, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1398
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v0, 0x0

    aput p1, v1, v0

    .line 1399
    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final parseName(IIIII)Ljava/lang/String;
    .locals 6
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I
    .param p4, "ch"    # I
    .param p5, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1403
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    const/4 v0, 0x0

    aput p1, v1, v0

    .line 1404
    const/4 v0, 0x1

    aput p2, v1, v0

    .line 1405
    const/4 v2, 0x2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseEscapedName([IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _closeInput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    return-void
.end method

.method protected final _decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 9
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2742
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v0

    .line 2749
    .local v0, "builder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2750
    .local v1, "ch":I
    const/16 v2, 0x20

    if-le v1, v2, :cond_d

    .line 2751
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 2752
    .local v2, "bits":I
    const/16 v3, 0x22

    if-gez v2, :cond_1

    .line 2753
    if-ne v1, v3, :cond_0

    .line 2754
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 2756
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v1, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 2757
    if-gez v2, :cond_1

    .line 2758
    goto :goto_0

    .line 2761
    :cond_1
    move v4, v2

    .line 2764
    .local v4, "decodedData":I
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2765
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 2766
    if-gez v2, :cond_2

    .line 2767
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v1, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 2769
    :cond_2
    shl-int/lit8 v5, v4, 0x6

    or-int v4, v5, v2

    .line 2771
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2772
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 2775
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x2

    if-gez v2, :cond_8

    .line 2776
    if-eq v2, v7, :cond_5

    .line 2778
    if-ne v1, v3, :cond_4

    .line 2779
    shr-int/lit8 v3, v4, 0x4

    .line 2780
    .end local v4    # "decodedData":I
    .local v3, "decodedData":I
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 2781
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2782
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleBase64MissingPadding(Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 2784
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 2786
    .end local v3    # "decodedData":I
    .restart local v4    # "decodedData":I
    :cond_4
    invoke-virtual {p0, p1, v1, v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 2788
    :cond_5
    if-ne v2, v7, :cond_8

    .line 2789
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2790
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2791
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_6

    .line 2792
    invoke-virtual {p0, p1, v1, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v3

    if-ne v3, v7, :cond_6

    goto :goto_1

    .line 2793
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected padding character \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v5, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 2797
    :cond_7
    :goto_1
    shr-int/lit8 v3, v4, 0x4

    .line 2798
    .end local v4    # "decodedData":I
    .restart local v3    # "decodedData":I
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 2799
    goto/16 :goto_0

    .line 2803
    .end local v3    # "decodedData":I
    .restart local v4    # "decodedData":I
    :cond_8
    shl-int/lit8 v8, v4, 0x6

    or-int v4, v8, v2

    .line 2805
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v8}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2806
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v2

    .line 2807
    if-gez v2, :cond_c

    .line 2808
    if-eq v2, v7, :cond_b

    .line 2810
    if-ne v1, v3, :cond_a

    .line 2811
    shr-int/lit8 v3, v4, 0x2

    .line 2812
    .end local v4    # "decodedData":I
    .restart local v3    # "decodedData":I
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 2813
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2814
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleBase64MissingPadding(Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 2816
    :cond_9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 2818
    .end local v3    # "decodedData":I
    .restart local v4    # "decodedData":I
    :cond_a
    invoke-virtual {p0, p1, v1, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v2

    .line 2820
    :cond_b
    if-ne v2, v7, :cond_c

    .line 2827
    shr-int/lit8 v3, v4, 0x2

    .line 2828
    .end local v4    # "decodedData":I
    .restart local v3    # "decodedData":I
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 2829
    goto/16 :goto_0

    .line 2833
    .end local v3    # "decodedData":I
    .restart local v4    # "decodedData":I
    :cond_c
    shl-int/lit8 v3, v4, 0x6

    or-int/2addr v3, v2

    .line 2834
    .end local v4    # "decodedData":I
    .restart local v3    # "decodedData":I
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    .line 2835
    .end local v1    # "ch":I
    .end local v2    # "bits":I
    .end local v3    # "decodedData":I
    goto/16 :goto_0

    .line 2750
    .restart local v1    # "ch":I
    :cond_d
    goto/16 :goto_0
.end method

.method protected _decodeCharForError(I)I
    .locals 6
    .param p1, "firstByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2526
    and-int/lit16 v0, p1, 0xff

    .line 2527
    .local v0, "c":I
    const/16 v1, 0x7f

    if-le v0, v1, :cond_6

    .line 2531
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    .line 2532
    and-int/lit8 v0, v0, 0x1f

    .line 2533
    const/4 v1, 0x1

    .local v1, "needed":I
    goto :goto_0

    .line 2534
    .end local v1    # "needed":I
    :cond_0
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    .line 2535
    and-int/lit8 v0, v0, 0xf

    .line 2536
    const/4 v1, 0x2

    .restart local v1    # "needed":I
    goto :goto_0

    .line 2537
    .end local v1    # "needed":I
    :cond_1
    and-int/lit16 v1, v0, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_2

    .line 2539
    and-int/lit8 v0, v0, 0x7

    .line 2540
    const/4 v1, 0x3

    .restart local v1    # "needed":I
    goto :goto_0

    .line 2542
    .end local v1    # "needed":I
    :cond_2
    and-int/lit16 v1, v0, 0xff

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidInitial(I)V

    .line 2543
    const/4 v1, 0x1

    .line 2546
    .restart local v1    # "needed":I
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 2547
    .local v2, "d":I
    and-int/lit16 v3, v2, 0xc0

    const/16 v4, 0x80

    if-eq v3, v4, :cond_3

    .line 2548
    and-int/lit16 v3, v2, 0xff

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2550
    :cond_3
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v5, v2, 0x3f

    or-int v0, v3, v5

    .line 2552
    const/4 v3, 0x1

    if-le v1, v3, :cond_6

    .line 2553
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 2554
    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v4, :cond_4

    .line 2555
    and-int/lit16 v3, v2, 0xff

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2557
    :cond_4
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v5, v2, 0x3f

    or-int v0, v3, v5

    .line 2558
    const/4 v3, 0x2

    if-le v1, v3, :cond_6

    .line 2559
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 2560
    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v4, :cond_5

    .line 2561
    and-int/lit16 v3, v2, 0xff

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidOther(I)V

    .line 2563
    :cond_5
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v2, 0x3f

    or-int v0, v3, v4

    .line 2567
    .end local v1    # "needed":I
    .end local v2    # "d":I
    :cond_6
    return v0
.end method

.method protected _decodeEscaped()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2483
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2485
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 2508
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeCharForError(I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v1

    return v1

    .line 2505
    :sswitch_0
    nop

    .line 2512
    const/4 v1, 0x0

    .line 2513
    .local v1, "value":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 2514
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 2515
    .local v3, "ch":I
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v4

    .line 2516
    .local v4, "digit":I
    if-gez v4, :cond_0

    .line 2517
    const-string v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v3, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2519
    :cond_0
    shl-int/lit8 v5, v1, 0x4

    or-int v1, v5, v4

    .line 2513
    .end local v3    # "ch":I
    .end local v4    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2521
    .end local v2    # "i":I
    :cond_1
    int-to-char v2, v1

    return v2

    .line 2490
    .end local v1    # "value":I
    :sswitch_1
    const/16 v1, 0x9

    return v1

    .line 2496
    :sswitch_2
    const/16 v1, 0xd

    return v1

    .line 2492
    :sswitch_3
    const/16 v1, 0xa

    return v1

    .line 2494
    :sswitch_4
    const/16 v1, 0xc

    return v1

    .line 2488
    :sswitch_5
    const/16 v1, 0x8

    return v1

    .line 2502
    :sswitch_6
    int-to-char v1, v0

    return v1

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

.method protected _finishString()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1853
    const/4 v0, 0x0

    .line 1854
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 1855
    .local v1, "outBuf":[C
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 1856
    .local v2, "codes":[I
    array-length v3, v1

    .line 1859
    .local v3, "outEnd":I
    :goto_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1860
    .local v4, "c":I
    aget v5, v2, v4

    if-eqz v5, :cond_1

    .line 1861
    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    .line 1862
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1863
    return-void

    .line 1865
    :cond_0
    invoke-direct {p0, v1, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString2([CII)V

    .line 1866
    return-void

    .line 1868
    :cond_1
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .local v5, "outPtr":I
    int-to-char v6, v4

    aput-char v6, v1, v0

    .line 1869
    .end local v4    # "c":I
    if-lt v5, v3, :cond_2

    .line 1870
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-direct {p0, v1, v5, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString2([CII)V

    .line 1871
    return-void

    .line 1869
    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method protected final _getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 1
    .param p1, "t"    # Lcom/fasterxml/jackson/core/JsonToken;

    .line 300
    if-nez p1, :cond_0

    .line 301
    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 313
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 311
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 305
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected _handleApos()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2073
    const/4 v0, 0x0

    .line 2075
    .local v0, "c":I
    const/4 v1, 0x0

    .line 2076
    .local v1, "outPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 2079
    .local v2, "outBuf":[C
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 2086
    .local v3, "codes":[I
    :goto_0
    array-length v4, v2

    .line 2087
    .local v4, "outEnd":I
    array-length v5, v2

    if-lt v1, v5, :cond_0

    .line 2088
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 2089
    const/4 v1, 0x0

    .line 2090
    array-length v4, v2

    .line 2093
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 2094
    const/16 v5, 0x27

    if-ne v0, v5, :cond_1

    .line 2095
    nop

    .line 2139
    .end local v4    # "outEnd":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2141
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v4

    .line 2097
    .restart local v4    # "outEnd":I
    :cond_1
    aget v5, v3, v0

    if-eqz v5, :cond_5

    .line 2098
    nop

    .line 2103
    .end local v4    # "outEnd":I
    aget v4, v3, v0

    packed-switch v4, :pswitch_data_0

    .line 2125
    const/16 v4, 0x20

    if-ge v0, v4, :cond_3

    .line 2126
    const-string v4, "string value"

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_3

    .line 2114
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_4(I)I

    move-result v0

    .line 2116
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "outPtr":I
    .local v4, "outPtr":I
    const v5, 0xd800

    shr-int/lit8 v6, v0, 0xa

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v2, v1

    .line 2117
    array-length v1, v2

    if-lt v4, v1, :cond_2

    .line 2118
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 2119
    const/4 v1, 0x0

    .end local v4    # "outPtr":I
    .restart local v1    # "outPtr":I
    goto :goto_2

    .line 2117
    .end local v1    # "outPtr":I
    .restart local v4    # "outPtr":I
    :cond_2
    move v1, v4

    .line 2121
    .end local v4    # "outPtr":I
    .restart local v1    # "outPtr":I
    :goto_2
    const v4, 0xdc00

    and-int/lit16 v5, v0, 0x3ff

    or-int v0, v5, v4

    .line 2123
    goto :goto_4

    .line 2111
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_3(I)I

    move-result v0

    .line 2112
    goto :goto_4

    .line 2108
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeUtf8_2(I)I

    move-result v0

    .line 2109
    goto :goto_4

    .line 2105
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeEscaped()C

    move-result v0

    .line 2106
    goto :goto_4

    .line 2129
    :cond_3
    :goto_3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidChar(I)V

    .line 2132
    :goto_4
    array-length v4, v2

    if-lt v1, v4, :cond_4

    .line 2133
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 2134
    const/4 v1, 0x0

    .line 2137
    :cond_4
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "outPtr":I
    .restart local v4    # "outPtr":I
    int-to-char v5, v0

    aput-char v5, v2, v1

    move v1, v4

    goto :goto_0

    .line 2100
    .restart local v1    # "outPtr":I
    .local v4, "outEnd":I
    :cond_5
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outPtr":I
    .local v5, "outPtr":I
    int-to-char v6, v0

    aput-char v6, v2, v1

    .line 2101
    if-lt v5, v4, :cond_6

    .line 2102
    .end local v4    # "outEnd":I
    move v1, v5

    goto/16 :goto_0

    .line 2101
    .restart local v4    # "outEnd":I
    :cond_6
    move v1, v5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "ch"    # I
    .param p2, "neg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2151
    :goto_0
    const/16 v0, 0x49

    if-ne p1, v0, :cond_5

    .line 2152
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    .line 2154
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_1

    .line 2155
    if-eqz p2, :cond_0

    const-string v0, "-INF"

    goto :goto_1

    :cond_0
    const-string v0, "+INF"

    .local v0, "match":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 2156
    .end local v0    # "match":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_5

    .line 2157
    if-eqz p2, :cond_2

    const-string v0, "-Infinity"

    goto :goto_2

    :cond_2
    const-string v0, "+Infinity"

    .line 2161
    .restart local v0    # "match":Ljava/lang/String;
    :goto_2
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2162
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v2, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_NON_NUM_NUMBERS:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 2163
    if-eqz p2, :cond_3

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_3

    :cond_3
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 2165
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2166
    .end local v0    # "match":Ljava/lang/String;
    goto :goto_0

    .line 2167
    :cond_5
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 2168
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _handleOddName(I)Ljava/lang/String;
    .locals 6
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1511
    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1512
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseAposName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1514
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1515
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeCharForError(I)I

    move-result v0

    int-to-char v0, v0

    .line 1516
    .local v0, "c":C
    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1522
    .end local v0    # "c":C
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v0

    .line 1524
    .local v0, "codes":[I
    aget v1, v0, p1

    if-eqz v1, :cond_2

    .line 1525
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1532
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1533
    .local v1, "quads":[I
    const/4 v2, 0x0

    .line 1534
    .local v2, "qlen":I
    const/4 v3, 0x0

    .line 1535
    .local v3, "currQuad":I
    const/4 v4, 0x0

    .line 1539
    .local v4, "currQuadBytes":I
    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    .line 1540
    add-int/lit8 v4, v4, 0x1

    .line 1541
    shl-int/lit8 v5, v3, 0x8

    or-int v3, v5, p1

    goto :goto_1

    .line 1543
    :cond_3
    array-length v5, v1

    if-lt v2, v5, :cond_4

    .line 1544
    array-length v5, v1

    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v5

    move-object v1, v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1546
    :cond_4
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "qlen":I
    .local v5, "qlen":I
    aput v3, v1, v2

    .line 1547
    move v2, p1

    .line 1548
    .end local v3    # "currQuad":I
    .local v2, "currQuad":I
    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    .line 1550
    .end local v5    # "qlen":I
    .local v2, "qlen":I
    .restart local v3    # "currQuad":I
    :goto_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    .line 1551
    aget v5, v0, p1

    if-eqz v5, :cond_8

    .line 1552
    nop

    .line 1556
    iput p1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1557
    if-lez v4, :cond_6

    .line 1558
    array-length v5, v1

    if-lt v2, v5, :cond_5

    .line 1559
    array-length v5, v1

    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v5

    move-object v1, v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1561
    :cond_5
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "qlen":I
    .restart local v5    # "qlen":I
    aput v3, v1, v2

    move v2, v5

    .line 1563
    .end local v5    # "qlen":I
    .restart local v2    # "qlen":I
    :cond_6
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v5, v1, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v5

    .line 1564
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_7

    .line 1565
    invoke-direct {p0, v1, v2, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v5

    .line 1567
    :cond_7
    return-object v5

    .line 1551
    .end local v5    # "name":Ljava/lang/String;
    :cond_8
    goto :goto_0
.end method

.method protected _handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2020
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 2022
    :sswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2023
    goto :goto_1

    .line 2046
    :sswitch_1
    const-string v1, "NaN"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2047
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v2, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_NON_NUM_NUMBERS:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 2048
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v1, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2050
    :cond_0
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2051
    goto :goto_1

    .line 2053
    :sswitch_2
    const-string v1, "Infinity"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 2054
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v2, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_NON_NUM_NUMBERS:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 2055
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v1, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2057
    :cond_1
    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2058
    goto :goto_1

    .line 2030
    :cond_2
    :sswitch_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_MISSING:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 2032
    iput p1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2033
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2039
    :cond_3
    :sswitch_4
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0

    .line 2060
    :sswitch_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2041
    :goto_0
    :sswitch_6
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 2042
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleApos()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2063
    :cond_4
    :goto_1
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_validJsonTokenList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidToken(ILjava/lang/String;Ljava/lang/String;)V

    .line 2067
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected a valid value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_validJsonValueList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2068
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

.method protected final _matchToken(Ljava/lang/String;I)V
    .locals 3
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2175
    .local v0, "len":I
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2176
    .local v1, "ch":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2177
    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidToken(ILjava/lang/String;)V

    .line 2179
    .end local v1    # "ch":I
    :cond_0
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_2

    .line 2181
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 2182
    .restart local v1    # "ch":I
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_1

    .line 2183
    invoke-direct {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_checkMatchEnd(Ljava/lang/String;II)V

    .line 2185
    :cond_1
    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 2186
    return-void

    .line 2179
    .end local v1    # "ch":I
    :cond_2
    goto :goto_0
.end method

.method protected _parseAposName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1578
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 1579
    .local v0, "ch":I
    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    .line 1580
    const-string v1, ""

    return-object v1

    .line 1582
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1583
    .local v2, "quads":[I
    const/4 v3, 0x0

    .line 1584
    .local v3, "qlen":I
    const/4 v4, 0x0

    .line 1585
    .local v4, "currQuad":I
    const/4 v5, 0x0

    .line 1589
    .local v5, "currQuadBytes":I
    sget-object v6, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    .line 1592
    .local v6, "codes":[I
    :goto_0
    if-ne v0, v1, :cond_4

    .line 1593
    nop

    .line 1657
    if-lez v5, :cond_2

    .line 1658
    array-length v1, v2

    if-lt v3, v1, :cond_1

    .line 1659
    array-length v1, v2

    invoke-static {v2, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v1

    move-object v2, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1661
    :cond_1
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "qlen":I
    .local v1, "qlen":I
    invoke-static {v4, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v7

    aput v7, v2, v3

    move v3, v1

    .line 1663
    .end local v1    # "qlen":I
    .restart local v3    # "qlen":I
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v1

    .line 1664
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1665
    invoke-direct {p0, v2, v3, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v1

    .line 1667
    :cond_3
    return-object v1

    .line 1596
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    const/16 v7, 0x22

    const/4 v8, 0x4

    if-eq v0, v7, :cond_b

    aget v7, v6, v0

    if-eqz v7, :cond_b

    .line 1597
    const/16 v7, 0x5c

    if-eq v0, v7, :cond_5

    .line 1600
    const-string v7, "name"

    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .line 1603
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeEscaped()C

    move-result v0

    .line 1609
    :goto_1
    const/16 v7, 0x7f

    if-le v0, v7, :cond_b

    .line 1611
    if-lt v5, v8, :cond_7

    .line 1612
    array-length v7, v2

    if-lt v3, v7, :cond_6

    .line 1613
    array-length v7, v2

    invoke-static {v2, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v7

    move-object v2, v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1615
    :cond_6
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "qlen":I
    .local v7, "qlen":I
    aput v4, v2, v3

    .line 1616
    const/4 v4, 0x0

    .line 1617
    const/4 v5, 0x0

    move v3, v7

    .line 1619
    .end local v7    # "qlen":I
    .restart local v3    # "qlen":I
    :cond_7
    const/16 v7, 0x800

    if-ge v0, v7, :cond_8

    .line 1620
    shl-int/lit8 v7, v4, 0x8

    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    or-int v4, v7, v9

    .line 1621
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1624
    :cond_8
    shl-int/lit8 v7, v4, 0x8

    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    or-int v4, v7, v9

    .line 1625
    add-int/lit8 v5, v5, 0x1

    .line 1627
    if-lt v5, v8, :cond_a

    .line 1628
    array-length v7, v2

    if-lt v3, v7, :cond_9

    .line 1629
    array-length v7, v2

    invoke-static {v2, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v7

    move-object v2, v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1631
    :cond_9
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "qlen":I
    .restart local v7    # "qlen":I
    aput v4, v2, v3

    .line 1632
    const/4 v4, 0x0

    .line 1633
    const/4 v5, 0x0

    move v3, v7

    .line 1635
    .end local v7    # "qlen":I
    .restart local v3    # "qlen":I
    :cond_a
    shl-int/lit8 v7, v4, 0x8

    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    or-int v4, v7, v9

    .line 1636
    add-int/lit8 v5, v5, 0x1

    .line 1639
    :goto_2
    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v0, v7, 0x80

    .line 1643
    :cond_b
    if-ge v5, v8, :cond_c

    .line 1644
    add-int/lit8 v5, v5, 0x1

    .line 1645
    shl-int/lit8 v7, v4, 0x8

    or-int v4, v7, v0

    goto :goto_3

    .line 1647
    :cond_c
    array-length v7, v2

    if-lt v3, v7, :cond_d

    .line 1648
    array-length v7, v2

    invoke-static {v2, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v7

    move-object v2, v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1650
    :cond_d
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "qlen":I
    .restart local v7    # "qlen":I
    aput v4, v2, v3

    .line 1651
    move v3, v0

    .line 1652
    .end local v4    # "currQuad":I
    .local v3, "currQuad":I
    const/4 v4, 0x1

    move v5, v4

    move v4, v3

    move v3, v7

    .line 1654
    .end local v7    # "qlen":I
    .local v3, "qlen":I
    .restart local v4    # "currQuad":I
    :goto_3
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v7}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    goto/16 :goto_0
.end method

.method protected final _parseName(I)Ljava/lang/String;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1206
    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    .line 1207
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleOddName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1215
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    .line 1217
    .local v1, "codes":[I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 1219
    .local v2, "q":I
    aget v3, v1, v2

    if-nez v3, :cond_9

    .line 1220
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    .line 1221
    aget v3, v1, p1

    if-nez v3, :cond_7

    .line 1222
    shl-int/lit8 v3, v2, 0x8

    or-int v2, v3, p1

    .line 1223
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    .line 1224
    aget v3, v1, p1

    if-nez v3, :cond_5

    .line 1225
    shl-int/lit8 v3, v2, 0x8

    or-int v2, v3, p1

    .line 1226
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    .line 1227
    aget v3, v1, p1

    if-nez v3, :cond_3

    .line 1228
    shl-int/lit8 v3, v2, 0x8

    or-int v2, v3, p1

    .line 1229
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v3}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    .line 1230
    aget v3, v1, p1

    if-nez v3, :cond_1

    .line 1231
    iput v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quad1:I

    .line 1232
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseMediumName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1234
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v0, :cond_2

    .line 1235
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1237
    :cond_2
    invoke-direct {p0, v2, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1239
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v0, :cond_4

    .line 1240
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1242
    :cond_4
    invoke-direct {p0, v2, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1244
    :cond_5
    const/4 v3, 0x2

    if-ne p1, v0, :cond_6

    .line 1245
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1247
    :cond_6
    invoke-direct {p0, v2, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1249
    :cond_7
    const/4 v3, 0x1

    if-ne p1, v0, :cond_8

    .line 1250
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1252
    :cond_8
    invoke-direct {p0, v2, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1254
    :cond_9
    if-ne v2, v0, :cond_a

    .line 1255
    const-string v0, ""

    return-object v0

    .line 1257
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->parseName(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected _parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 1038
    .local v0, "outBuf":[C
    const/4 v1, 0x0

    .line 1041
    .local v1, "outPtr":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "outPtr":I
    .local v2, "outPtr":I
    const/16 v3, 0x2d

    aput-char v3, v0, v1

    .line 1042
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1043
    .local v1, "c":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outPtr":I
    .local v3, "outPtr":I
    int-to-char v4, v1

    aput-char v4, v0, v2

    .line 1045
    const/16 v2, 0x39

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-gt v1, v4, :cond_1

    .line 1047
    if-ne v1, v4, :cond_0

    .line 1048
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleLeadingZeroes()I

    move-result v1

    goto :goto_0

    .line 1050
    :cond_0
    invoke-virtual {p0, v1, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 1053
    :cond_1
    if-le v1, v2, :cond_2

    .line 1054
    invoke-virtual {p0, v1, v5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    return-object v2

    .line 1056
    :cond_2
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1059
    :goto_0
    const/4 v6, 0x1

    move v7, v1

    move v8, v3

    move v9, v6

    .line 1062
    .end local v1    # "c":I
    .end local v3    # "outPtr":I
    .local v7, "c":I
    .local v8, "outPtr":I
    .local v9, "intLen":I
    :goto_1
    if-gt v7, v2, :cond_3

    if-lt v7, v4, :cond_3

    .line 1063
    add-int/lit8 v9, v9, 0x1

    .line 1064
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "outPtr":I
    .restart local v3    # "outPtr":I
    int-to-char v1, v7

    aput-char v1, v0, v8

    .line 1065
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    move v8, v3

    goto :goto_1

    .line 1067
    .end local v3    # "outPtr":I
    .restart local v8    # "outPtr":I
    :cond_3
    const/16 v1, 0x2e

    if-eq v7, v1, :cond_6

    const/16 v1, 0x65

    if-eq v7, v1, :cond_6

    const/16 v1, 0x45

    if-ne v7, v1, :cond_4

    goto :goto_2

    .line 1070
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1072
    iput v7, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1073
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1074
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_verifyRootSpace()V

    .line 1077
    :cond_5
    invoke-virtual {p0, v5, v9}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1068
    :cond_6
    :goto_2
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, v8

    move v4, v7

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected _parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    .line 1000
    .local v0, "outBuf":[C
    const/16 v1, 0x39

    const/4 v2, 0x0

    const/16 v3, 0x30

    if-ne p1, v3, :cond_1

    .line 1001
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleLeadingZeroes()I

    move-result p1

    .line 1002
    if-gt p1, v1, :cond_0

    if-lt p1, v3, :cond_0

    .line 1003
    const/4 v4, 0x0

    .local v4, "outPtr":I
    goto :goto_0

    .line 1005
    .end local v4    # "outPtr":I
    :cond_0
    aput-char v3, v0, v2

    .line 1006
    const/4 v4, 0x1

    .restart local v4    # "outPtr":I
    goto :goto_0

    .line 1009
    .end local v4    # "outPtr":I
    :cond_1
    int-to-char v4, p1

    aput-char v4, v0, v2

    .line 1010
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    .line 1011
    const/4 v4, 0x1

    .line 1013
    .restart local v4    # "outPtr":I
    :goto_0
    move v5, v4

    move v7, v4

    move v8, v5

    .line 1016
    .end local v4    # "outPtr":I
    .local v7, "outPtr":I
    .local v8, "intLen":I
    :goto_1
    if-gt p1, v1, :cond_2

    if-lt p1, v3, :cond_2

    .line 1017
    add-int/lit8 v8, v8, 0x1

    .line 1018
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v4    # "outPtr":I
    int-to-char v5, p1

    aput-char v5, v0, v7

    .line 1019
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    move v7, v4

    goto :goto_1

    .line 1021
    .end local v4    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_2
    const/16 v1, 0x2e

    if-eq p1, v1, :cond_5

    const/16 v1, 0x65

    if-eq p1, v1, :cond_5

    const/16 v1, 0x45

    if-ne p1, v1, :cond_3

    goto :goto_3

    .line 1024
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1026
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1027
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_verifyRootSpace()V

    goto :goto_2

    .line 1029
    :cond_4
    iput p1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextByte:I

    .line 1032
    :goto_2
    invoke-virtual {p0, v2, v8}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 1022
    :cond_5
    :goto_3
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move v3, v7

    move v4, p1

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1
.end method

.method protected _readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    .locals 12
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "outputPtr":I
    array-length v1, p3

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    .line 453
    .local v1, "outputEnd":I
    const/4 v3, 0x0

    .line 459
    .local v3, "outputCount":I
    :goto_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 460
    .local v4, "ch":I
    const/16 v5, 0x20

    if-le v4, v5, :cond_f

    .line 461
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v5

    .line 462
    .local v5, "bits":I
    const/16 v6, 0x22

    const/4 v7, 0x0

    if-gez v5, :cond_1

    .line 463
    if-ne v4, v6, :cond_0

    .line 464
    goto/16 :goto_2

    .line 466
    :cond_0
    invoke-virtual {p0, p1, v4, v7}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v5

    .line 467
    if-gez v5, :cond_1

    .line 468
    goto :goto_0

    .line 473
    :cond_1
    if-le v0, v1, :cond_2

    .line 474
    add-int/2addr v3, v0

    .line 475
    invoke-virtual {p2, p3, v7, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 476
    const/4 v0, 0x0

    .line 479
    :cond_2
    move v8, v5

    .line 482
    .local v8, "decodedData":I
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v9}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 483
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v5

    .line 484
    if-gez v5, :cond_3

    .line 485
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v4, v9}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v5

    .line 487
    :cond_3
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v5

    .line 490
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v9}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 491
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v5

    .line 494
    const/4 v9, 0x2

    const/4 v10, -0x2

    if-gez v5, :cond_9

    .line 495
    if-eq v5, v10, :cond_6

    .line 497
    if-ne v4, v6, :cond_5

    .line 498
    shr-int/lit8 v2, v8, 0x4

    .line 499
    .end local v8    # "decodedData":I
    .local v2, "decodedData":I
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "outputPtr":I
    .local v6, "outputPtr":I
    int-to-byte v8, v2

    aput-byte v8, p3, v0

    .line 500
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleBase64MissingPadding(Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 560
    .end local v2    # "decodedData":I
    .end local v4    # "ch":I
    .end local v5    # "bits":I
    :cond_4
    move v0, v6

    goto/16 :goto_2

    .line 505
    .end local v6    # "outputPtr":I
    .restart local v0    # "outputPtr":I
    .restart local v4    # "ch":I
    .restart local v5    # "bits":I
    .restart local v8    # "decodedData":I
    :cond_5
    invoke-virtual {p0, p1, v4, v9}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v5

    .line 507
    :cond_6
    if-ne v5, v10, :cond_9

    .line 509
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v6}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 510
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 511
    const/16 v6, 0x5c

    if-ne v4, v6, :cond_7

    .line 512
    invoke-virtual {p0, p1, v4, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v6

    if-ne v6, v10, :cond_7

    goto :goto_1

    .line 513
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected padding character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v4, v2, v6}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 517
    :cond_8
    :goto_1
    shr-int/lit8 v6, v8, 0x4

    .line 518
    .end local v8    # "decodedData":I
    .local v6, "decodedData":I
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "outputPtr":I
    .local v7, "outputPtr":I
    int-to-byte v8, v6

    aput-byte v8, p3, v0

    .line 519
    move v0, v7

    goto/16 :goto_0

    .line 523
    .end local v6    # "decodedData":I
    .end local v7    # "outputPtr":I
    .restart local v0    # "outputPtr":I
    .restart local v8    # "decodedData":I
    :cond_9
    shl-int/lit8 v11, v8, 0x6

    or-int v8, v11, v5

    .line 525
    iget-object v11, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v11}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 526
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v5

    .line 527
    if-gez v5, :cond_e

    .line 528
    if-eq v5, v10, :cond_d

    .line 530
    if-ne v4, v6, :cond_c

    .line 531
    shr-int/lit8 v2, v8, 0x2

    .line 532
    .end local v8    # "decodedData":I
    .restart local v2    # "decodedData":I
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "outputPtr":I
    .local v6, "outputPtr":I
    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v0

    .line 533
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v0    # "outputPtr":I
    int-to-byte v8, v2

    aput-byte v8, p3, v6

    .line 534
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 535
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleBase64MissingPadding(Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 560
    .end local v2    # "decodedData":I
    .end local v4    # "ch":I
    .end local v5    # "bits":I
    :cond_a
    :goto_2
    iput-boolean v7, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 561
    if-lez v0, :cond_b

    .line 562
    add-int/2addr v3, v0

    .line 563
    invoke-virtual {p2, p3, v7, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 565
    :cond_b
    return v3

    .line 539
    .restart local v4    # "ch":I
    .restart local v5    # "bits":I
    .restart local v8    # "decodedData":I
    :cond_c
    invoke-virtual {p0, p1, v4, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    move-result v5

    .line 541
    :cond_d
    if-ne v5, v10, :cond_e

    .line 548
    shr-int/lit8 v6, v8, 0x2

    .line 549
    .end local v8    # "decodedData":I
    .local v6, "decodedData":I
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v0

    .line 550
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v0    # "outputPtr":I
    int-to-byte v8, v6

    aput-byte v8, p3, v7

    .line 551
    goto/16 :goto_0

    .line 555
    .end local v6    # "decodedData":I
    .restart local v8    # "decodedData":I
    :cond_e
    shl-int/lit8 v6, v8, 0x6

    or-int/2addr v6, v5

    .line 556
    .end local v8    # "decodedData":I
    .restart local v6    # "decodedData":I
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v8, v6, 0x10

    int-to-byte v8, v8

    aput-byte v8, p3, v0

    .line 557
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v0    # "outputPtr":I
    shr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 558
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    int-to-byte v8, v6

    aput-byte v8, p3, v0

    .line 559
    .end local v4    # "ch":I
    .end local v5    # "bits":I
    .end local v6    # "decodedData":I
    move v0, v7

    goto/16 :goto_0

    .line 460
    .end local v7    # "outputPtr":I
    .restart local v0    # "outputPtr":I
    .restart local v4    # "ch":I
    :cond_f
    goto/16 :goto_0
.end method

.method protected _releaseBuffers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 178
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->release()V

    .line 179
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 2703
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2704
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwInvalidSpace(I)V

    .line 2706
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidInitial(I)V

    .line 2707
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2713
    return-void
.end method

.method protected _reportInvalidToken(ILjava/lang/String;)V
    .locals 1
    .param p1, "ch"    # I
    .param p2, "matchedPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2676
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_validJsonTokenList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidToken(ILjava/lang/String;Ljava/lang/String;)V

    .line 2677
    return-void
.end method

.method protected _reportInvalidToken(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ch"    # I
    .param p2, "matchedPart"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2689
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeCharForError(I)I

    move-result v1

    int-to-char v1, v1

    .line 2690
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2691
    nop

    .line 2696
    .end local v1    # "c":C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': was expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2697
    return-void

    .line 2693
    .restart local v1    # "c":C
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2694
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    .line 2695
    .end local v1    # "c":C
    goto :goto_0
.end method

.method protected _skipString()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 1970
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icUTF8:[I

    .line 1978
    .local v0, "codes":[I
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 1979
    .local v1, "c":I
    aget v2, v0, v1

    if-eqz v2, :cond_2

    .line 1980
    nop

    .line 1984
    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    .line 1985
    nop

    .line 2010
    .end local v1    # "c":I
    return-void

    .line 1988
    .restart local v1    # "c":I
    :cond_0
    aget v2, v0, v1

    packed-switch v2, :pswitch_data_0

    .line 2002
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 2003
    const-string v2, "string value"

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .line 1999
    :pswitch_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_4()V

    .line 2000
    goto :goto_1

    .line 1996
    :pswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_3()V

    .line 1997
    goto :goto_1

    .line 1993
    :pswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipUtf8_2()V

    .line 1994
    goto :goto_1

    .line 1990
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeEscaped()C

    .line 1991
    goto :goto_1

    .line 2006
    :cond_1
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportInvalidChar(I)V

    .line 2009
    .end local v1    # "c":I
    :goto_1
    goto :goto_0

    .line 1979
    .restart local v1    # "c":I
    :cond_2
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public finishToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 760
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString()V

    .line 762
    :cond_0
    return-void
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 3
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    if-nez v0, :cond_1

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportError(Ljava/lang/String;)V

    .line 409
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_2

    .line 411
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    nop

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v1

    throw v1

    .line 420
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    if-nez v0, :cond_3

    .line 422
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v0

    .line 423
    .local v0, "builder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 424
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    .line 427
    .end local v0    # "builder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    return-object v0
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    .line 2851
    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v8
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    return-object v0
.end method

.method public getText(Ljava/io/Writer;)I
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 204
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 205
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 206
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 207
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString()V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsToWriter(Ljava/io/Writer;)I

    move-result v1

    return v1

    .line 211
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "n":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    return v2

    .line 216
    .end local v1    # "n":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsToWriter(Ljava/io/Writer;)I

    move-result v1

    return v1

    .line 220
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v1

    .line 221
    .local v1, "ch":[C
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write([C)V

    .line 222
    array-length v2, v1

    return v2

    .line 224
    .end local v1    # "ch":[C
    :cond_4
    return v2
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 191
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 193
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishAndReturnString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_4

    .line 321
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 348
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    return-object v0

    .line 338
    :pswitch_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 339
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 340
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString()V

    .line 345
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    return-object v0

    .line 324
    :pswitch_2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    if-nez v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 327
    .local v2, "nameLen":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    if-nez v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 329
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    array-length v3, v3

    if-ge v3, v2, :cond_2

    .line 330
    new-array v3, v2, [C

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    .line 332
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 333
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 335
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "nameLen":I
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopyBuffer:[C

    return-object v0

    .line 351
    :cond_4
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getTextLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 358
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 359
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 360
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    return v0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 365
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    return v0

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    return v0

    .line 373
    :cond_4
    return v2
.end method

.method public getTextOffset()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 385
    :pswitch_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 386
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 387
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishString()V

    .line 392
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v0

    return v0

    .line 383
    :pswitch_2
    return v1

    .line 396
    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    .line 2846
    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget v6, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v8
.end method

.method public getValueAsInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 264
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsInt(I)I

    move-result v1

    return v1

    .line 266
    :cond_1
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    .line 267
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    if-nez v1, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseIntValue()I

    move-result v1

    return v1

    .line 270
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->convertNumberToInt()V

    .line 274
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numberInt:I

    return v1
.end method

.method public getValueAsInt(I)I
    .locals 2
    .param p1, "defValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 283
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsInt(I)I

    move-result v1

    return v1

    .line 285
    :cond_1
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    .line 286
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    if-nez v1, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseIntValue()I

    move-result v1

    return v1

    .line 289
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->convertNumberToInt()V

    .line 293
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numberInt:I

    return v1
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 232
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 234
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishAndReturnString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 248
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 250
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishAndReturnString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_2
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 945
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 946
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 947
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 948
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 949
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 951
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 952
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 954
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 955
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 956
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 957
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 959
    :cond_3
    :goto_0
    return-object v2

    .line 962
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 963
    .restart local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    .line 964
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 966
    :cond_5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_6

    .line 967
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 969
    :cond_6
    return-object v2
.end method

.method public nextFieldName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    .line 779
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 780
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    .line 781
    return-object v2

    .line 783
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipString()V

    .line 786
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWS()I

    move-result v0

    .line 787
    .local v0, "i":I
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    .line 788
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    .line 790
    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_2

    goto/16 :goto_1

    .line 796
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 797
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_3

    .line 798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "was expecting comma to separate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->typeDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 800
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWS()I

    move-result v0

    .line 803
    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v5, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    .line 804
    if-eq v0, v1, :cond_4

    if-ne v0, v3, :cond_5

    .line 805
    :cond_4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_closeScope(I)V

    .line 806
    return-object v2

    .line 811
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_6

    .line 812
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 813
    return-object v2

    .line 816
    :cond_6
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseName(I)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "nameStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 818
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 820
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon()I

    move-result v0

    .line 821
    const/16 v2, 0x22

    const/4 v3, 0x1

    if-ne v0, v2, :cond_7

    .line 822
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 823
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 824
    return-object v1

    .line 827
    :cond_7
    sparse-switch v0, :sswitch_data_0

    .line 863
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 859
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_0
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 860
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 852
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_1
    const-string v2, "true"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 853
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 854
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 848
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_2
    const-string v2, "null"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 849
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 850
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 844
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_3
    const-string v2, "false"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 845
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 846
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 856
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_4
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 857
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 841
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 842
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 829
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 830
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    nop

    .line 865
    :goto_0
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 866
    return-object v1

    .line 791
    .end local v1    # "nameStr":Ljava/lang/String;
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_8
    :goto_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_closeScope(I)V

    .line 792
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_5
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

.method public nextIntValue(I)I
    .locals 4
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 901
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 902
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 903
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 904
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getIntValue()I

    move-result v1

    return v1

    .line 907
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 909
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 910
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 912
    :cond_2
    :goto_0
    return p1

    .line 914
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getIntValue()I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, p1

    :goto_1
    return v0
.end method

.method public nextLongValue(J)J
    .locals 4
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 923
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 924
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 925
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 926
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getLongValue()J

    move-result-wide v1

    return-wide v1

    .line 929
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 931
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 932
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 934
    :cond_2
    :goto_0
    return-wide p1

    .line 936
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getLongValue()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    move-wide v0, p1

    :goto_1
    return-wide v0
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nameCopied:Z

    .line 875
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 876
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 877
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 878
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_1

    .line 879
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_0

    .line 880
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 881
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_finishAndReturnString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 885
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v3, v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 887
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_3

    .line 888
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v3, v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 890
    :cond_3
    :goto_0
    return-object v2

    .line 892
    .end local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 582
    return-object v1

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_1

    .line 589
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 593
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_numTypesValid:I

    .line 594
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipString()V

    .line 597
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWSOrEnd()I

    move-result v0

    .line 598
    .local v0, "i":I
    if-gez v0, :cond_3

    .line 600
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->close()V

    .line 601
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 604
    :cond_3
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_binaryValue:[B

    .line 605
    iget v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currInputRow:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenInputRow:I

    .line 608
    const/16 v1, 0x5d

    if-eq v0, v1, :cond_a

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_4

    goto/16 :goto_1

    .line 614
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 615
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_5

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "was expecting comma to separate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->typeDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 618
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipWS()I

    move-result v0

    .line 621
    iget v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_features:I

    sget v4, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 622
    if-eq v0, v1, :cond_6

    if-ne v0, v2, :cond_7

    .line 623
    :cond_6
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_closeScope(I)V

    .line 624
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    .line 633
    :cond_7
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_8

    .line 634
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 637
    :cond_8
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseName(I)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "n":Ljava/lang/String;
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 639
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 641
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_skipColon()I

    move-result v0

    .line 644
    const/16 v2, 0x22

    const/4 v3, 0x1

    if-ne v0, v2, :cond_9

    .line 645
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    .line 646
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 647
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 651
    :cond_9
    sparse-switch v0, :sswitch_data_0

    .line 692
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 688
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_0
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 689
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 681
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_1
    const-string v2, "true"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 682
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 683
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 677
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_2
    const-string v2, "null"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 678
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 679
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 673
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_3
    const-string v2, "false"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 674
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 675
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 685
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_4
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 686
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 670
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 671
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0

    .line 653
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 654
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    nop

    .line 694
    :goto_0
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 695
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v3

    .line 609
    .end local v1    # "n":Ljava/lang/String;
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_a
    :goto_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_closeScope(I)V

    .line 610
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_5
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

.method protected final parseEscapedName([IIIII)Ljava/lang/String;
    .locals 4
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I
    .param p3, "currQuad"    # I
    .param p4, "ch"    # I
    .param p5, "currQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1422
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_icLatin1:[I

    .line 1425
    .local v0, "codes":[I
    :goto_0
    aget v1, v0, p4

    const/4 v2, 0x4

    if-eqz v1, :cond_a

    .line 1426
    const/16 v1, 0x22

    if-ne p4, v1, :cond_3

    .line 1427
    nop

    .line 1490
    if-lez p5, :cond_1

    .line 1491
    array-length v1, p1

    if-lt p2, v1, :cond_0

    .line 1492
    array-length v1, p1

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v1

    move-object p1, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1494
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "qlen":I
    .local v1, "qlen":I
    invoke-static {p3, p5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->pad(II)I

    move-result v2

    aput v2, p1, p2

    move p2, v1

    .line 1496
    .end local v1    # "qlen":I
    .restart local p2    # "qlen":I
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object v1

    .line 1497
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1498
    invoke-direct {p0, p1, p2, p5}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->addName([III)Ljava/lang/String;

    move-result-object v1

    .line 1500
    :cond_2
    return-object v1

    .line 1430
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x5c

    if-eq p4, v1, :cond_4

    .line 1432
    const-string v1, "name"

    invoke-virtual {p0, p4, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .line 1435
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_decodeEscaped()C

    move-result p4

    .line 1442
    :goto_1
    const/16 v1, 0x7f

    if-le p4, v1, :cond_a

    .line 1444
    if-lt p5, v2, :cond_6

    .line 1445
    array-length v1, p1

    if-lt p2, v1, :cond_5

    .line 1446
    array-length v1, p1

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v1

    move-object p1, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1448
    :cond_5
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "qlen":I
    .local v1, "qlen":I
    aput p3, p1, p2

    .line 1449
    const/4 p3, 0x0

    .line 1450
    const/4 p5, 0x0

    move p2, v1

    .line 1452
    .end local v1    # "qlen":I
    .restart local p2    # "qlen":I
    :cond_6
    const/16 v1, 0x800

    if-ge p4, v1, :cond_7

    .line 1453
    shl-int/lit8 v1, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int p3, v1, v3

    .line 1454
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 1457
    :cond_7
    shl-int/lit8 v1, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int p3, v1, v3

    .line 1458
    add-int/lit8 p5, p5, 0x1

    .line 1460
    if-lt p5, v2, :cond_9

    .line 1461
    array-length v1, p1

    if-lt p2, v1, :cond_8

    .line 1462
    array-length v1, p1

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v1

    move-object p1, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1464
    :cond_8
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "qlen":I
    .restart local v1    # "qlen":I
    aput p3, p1, p2

    .line 1465
    const/4 p3, 0x0

    .line 1466
    const/4 p5, 0x0

    move p2, v1

    .line 1468
    .end local v1    # "qlen":I
    .restart local p2    # "qlen":I
    :cond_9
    shl-int/lit8 v1, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    or-int p3, v1, v3

    .line 1469
    add-int/lit8 p5, p5, 0x1

    .line 1472
    :goto_2
    and-int/lit8 v1, p4, 0x3f

    or-int/lit16 p4, v1, 0x80

    .line 1476
    :cond_a
    if-ge p5, v2, :cond_b

    .line 1477
    add-int/lit8 p5, p5, 0x1

    .line 1478
    shl-int/lit8 v1, p3, 0x8

    or-int p3, v1, p4

    goto :goto_3

    .line 1480
    :cond_b
    array-length v1, p1

    if-lt p2, v1, :cond_c

    .line 1481
    array-length v1, p1

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_growArrayBy([II)[I

    move-result-object v1

    move-object p1, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_quadBuffer:[I

    .line 1483
    :cond_c
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "qlen":I
    .restart local v1    # "qlen":I
    aput p3, p1, p2

    .line 1484
    move p2, p4

    .line 1485
    .end local p3    # "currQuad":I
    .local p2, "currQuad":I
    const/4 p3, 0x1

    move p5, p3

    move p3, p2

    move p2, v1

    .line 1487
    .end local v1    # "qlen":I
    .local p2, "qlen":I
    .restart local p3    # "currQuad":I
    :goto_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_inputData:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p4

    goto/16 :goto_0
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 3
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v0

    .line 442
    .local v0, "buf":[B
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    .line 442
    return v1

    .line 444
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    .line 445
    throw v1

    .line 435
    .end local v0    # "buf":[B
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    .line 436
    .local v0, "b":[B
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 437
    array-length v1, v0

    return v1
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 139
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8DataInputJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 140
    return-void
.end method
