.class public Lcom/bea/xml/stream/MXParser;
.super Ljava/lang/Object;
.source "MXParser.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;
.implements Ljavax/xml/stream/Location;


# static fields
.field protected static final CHAR_UTF8_BOM:C = '\ufeff'

.field private static final DOCDECL:I = 0x8000

.field protected static final ENCODING:[C

.field static final EOF_MSG:Ljava/lang/String; = "Unexpected end of stream"

.field protected static final FEATURE_NAMES_INTERNED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#names-interned"

.field public static final FEATURE_PROCESS_DOCDECL:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#process-docdecl"

.field public static final FEATURE_PROCESS_NAMESPACES:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#process-namespaces"

.field public static final FEATURE_STAX_ENTITIES:Ljava/lang/String; = "javax.xml.stream.entities"

.field public static final FEATURE_STAX_NOTATIONS:Ljava/lang/String; = "javax.xml.stream.notations"

.field protected static final FEATURE_XML_ROUNDTRIP:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

.field protected static final LOOKUP_MAX:I = 0x400

.field protected static final LOOKUP_MAX_CHAR:C = '\u0400'

.field protected static final MAX_UNICODE_CHAR:I = 0x10ffff

.field protected static final NO:[C

.field private static final NO_CHARS:[C

.field private static final NO_INTS:[I

.field public static final NO_NAMESPACE:Ljava/lang/String;

.field private static final NO_STRINGS:[Ljava/lang/String;

.field protected static final READ_CHUNK_SIZE:I = 0x2000

.field protected static final STANDALONE:[C

.field private static final TEXT:I = 0x4000

.field private static final TRACE_SIZING:Z = false

.field public static final TYPES:[Ljava/lang/String;

.field protected static final VERSION:[C

.field protected static final YES:[C

.field static synthetic class$com$wutka$dtd$DTDAttlist:Ljava/lang/Class;

.field static synthetic class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

.field static synthetic class$com$wutka$dtd$DTDNotation:Ljava/lang/Class;

.field protected static lookupNameChar:[Z

.field protected static lookupNameStartChar:[Z


# instance fields
.field protected allStringsInterned:Z

.field protected attributeCount:I

.field protected attributeName:[Ljava/lang/String;

.field protected attributeNameHash:[I

.field protected attributePrefix:[Ljava/lang/String;

.field protected attributeUri:[Ljava/lang/String;

.field protected attributeValue:[Ljava/lang/String;

.field protected buf:[C

.field protected bufAbsoluteStart:I

.field protected bufEnd:I

.field protected bufLoadFactor:I

.field protected bufSoftLimit:I

.field protected bufStart:I

.field protected charEncodingScheme:Ljava/lang/String;

.field protected charRefOneCharBuf:[C

.field protected charRefTwoCharBuf:[C

.field protected columnNumber:I

.field private configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

.field protected defaultAttributes:Ljava/util/HashMap;

.field protected depth:I

.field protected elName:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected elPrefix:[Ljava/lang/String;

.field protected elRawName:[[C

.field protected elRawNameEnd:[I

.field protected elUri:[Ljava/lang/String;

.field protected emptyElementTag:Z

.field protected entityEnd:I

.field protected entityName:[Ljava/lang/String;

.field protected entityNameBuf:[[C

.field protected entityNameHash:[I

.field protected entityRefName:Ljava/lang/String;

.field protected entityReplacement:[Ljava/lang/String;

.field protected entityReplacementBuf:[[C

.field protected entityValue:[C

.field protected eventType:I

.field protected inputEncoding:Ljava/lang/String;

.field protected lineNumber:I

.field protected localNamespaceEnd:I

.field protected localNamespacePrefix:[Ljava/lang/String;

.field protected localNamespacePrefixHash:[I

.field protected localNamespaceUri:[Ljava/lang/String;

.field protected mDtdIntSubset:Lcom/wutka/dtd/DTD;

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespacePrefixHash:[I

.field protected namespaceUri:[Ljava/lang/String;

.field protected pastEndTag:Z

.field protected pc:[C

.field protected pcEnd:I

.field protected pcStart:I

.field protected piData:Ljava/lang/String;

.field protected piTarget:Ljava/lang/String;

.field protected pos:I

.field protected posEnd:I

.field protected posStart:I

.field protected processNamespaces:Z

.field protected reachedEnd:Z

.field protected reader:Ljava/io/Reader;

.field private reportCdataEvent:Z

.field protected roundtripSupported:Z

.field protected seenAmpersand:Z

.field protected seenDocdecl:Z

.field protected seenEndTag:Z

.field protected seenMarkup:Z

.field protected seenRoot:Z

.field protected seenStartTag:Z

.field protected standalone:Z

.field protected standaloneSet:Z

.field protected text:Ljava/lang/String;

.field protected tokenize:Z

.field protected usePC:Z

.field protected xmlVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 76
    const-string v0, "[UNKNOWN]"

    const-string v1, "START_ELEMENT"

    const-string v2, "END_ELEMENT"

    const-string v3, "PROCESSING_INSTRUCTION"

    const-string v4, "CHARACTERS"

    const-string v5, "COMMENT"

    const-string v6, "SPACE"

    const-string v7, "START_DOCUMENT"

    const-string v8, "END_DOCUMENT"

    const-string v9, "ENTITY_REFERENCE"

    const-string v10, "ATTRIBUTE"

    const-string v11, "DTD"

    const-string v12, "CDATA"

    const-string v13, "NAMESPACE"

    const-string v14, "NOTATION_DECLARATION"

    const-string v15, "ENTITY_DECLARATION"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->TYPES:[Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    .line 257
    const/16 v0, 0x400

    new-array v1, v0, [Z

    sput-object v1, Lcom/bea/xml/stream/MXParser;->lookupNameStartChar:[Z

    .line 258
    new-array v1, v0, [Z

    sput-object v1, Lcom/bea/xml/stream/MXParser;->lookupNameChar:[Z

    .line 268
    const/16 v1, 0x3a

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    .line 269
    const/16 v1, 0x41

    .local v1, "ch":C
    :goto_0
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_0

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 270
    .end local v1    # "ch":C
    :cond_0
    const/16 v1, 0x5f

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    .line 271
    const/16 v1, 0x61

    .restart local v1    # "ch":C
    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_1

    .line 272
    .end local v1    # "ch":C
    :cond_1
    const/16 v1, 0xc0

    .restart local v1    # "ch":C
    :goto_2
    const/16 v2, 0x2ff

    if-gt v1, v2, :cond_2

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_2

    .line 273
    .end local v1    # "ch":C
    :cond_2
    const/16 v1, 0x370

    .restart local v1    # "ch":C
    :goto_3
    const/16 v2, 0x37d

    if-gt v1, v2, :cond_3

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_3

    .line 274
    .end local v1    # "ch":C
    :cond_3
    const/16 v1, 0x37f

    .restart local v1    # "ch":C
    :goto_4
    if-ge v1, v0, :cond_4

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_4

    .line 276
    .end local v1    # "ch":C
    :cond_4
    const/16 v0, 0x2d

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    .line 277
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    .line 278
    const/16 v0, 0x30

    .local v0, "ch":C
    :goto_5
    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_5

    .line 279
    .end local v0    # "ch":C
    :cond_5
    const/16 v0, 0xb7

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    .line 280
    const/16 v0, 0x300

    .restart local v0    # "ch":C
    :goto_6
    const/16 v1, 0x36f

    if-gt v0, v1, :cond_6

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_6

    .line 424
    .end local v0    # "ch":C
    :cond_6
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/bea/xml/stream/MXParser;->NO_STRINGS:[Ljava/lang/String;

    .line 425
    new-array v1, v0, [I

    sput-object v1, Lcom/bea/xml/stream/MXParser;->NO_INTS:[I

    .line 426
    new-array v0, v0, [C

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO_CHARS:[C

    .line 3165
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->VERSION:[C

    .line 3166
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bea/xml/stream/MXParser;->ENCODING:[C

    .line 3167
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/bea/xml/stream/MXParser;->STANDALONE:[C

    .line 3168
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/bea/xml/stream/MXParser;->YES:[C

    .line 3169
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x76s
        0x65s
        0x72s
        0x73s
        0x69s
        0x6fs
        0x6es
    .end array-data

    nop

    :array_1
    .array-data 2
        0x65s
        0x6es
        0x63s
        0x6fs
        0x64s
        0x69s
        0x6es
        0x67s
    .end array-data

    :array_2
    .array-data 2
        0x73s
        0x74s
        0x61s
        0x6es
        0x64s
        0x61s
        0x6cs
        0x6fs
        0x6es
        0x65s
    .end array-data

    :array_3
    .array-data 2
        0x79s
        0x65s
        0x73s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x6es
        0x6fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->reportCdataEvent:Z

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    .line 142
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->roundtripSupported:Z

    .line 165
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->xmlVersion:Ljava/lang/String;

    .line 171
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standalone:Z

    .line 172
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standaloneSet:Z

    .line 431
    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 433
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 598
    const/16 v0, 0x5f

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufLoadFactor:I

    .line 606
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    cmp-long v0, v3, v5

    const/16 v3, 0x2000

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    .line 607
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->bufLoadFactor:I

    array-length v0, v0

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->bufSoftLimit:I

    .line 617
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x40

    :goto_1
    new-array v0, v3, [C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    .line 653
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    .line 2750
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    .line 2756
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    .line 696
    return-void
.end method

.method private static final checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1633
    if-eqz p0, :cond_0

    return-object p0

    .line 1634
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private final checkTextEvent()V
    .locals 3

    .line 1511
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    return-void

    .line 1512
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") does not have textual content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final checkTextEventXxx()V
    .locals 3

    .line 1517
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1521
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "getTextXxx methods cannot be called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1523
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 3519
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static eventTypeDesc(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 1638
    if-ltz p0, :cond_1

    sget-object v0, Lcom/bea/xml/stream/MXParser;->TYPES:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "[UNKNOWN]"

    :goto_1
    return-object v0
.end method

.method protected static final fastHash([CII)I
    .locals 3
    .param p0, "ch"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 534
    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 536
    :cond_0
    aget-char v0, p0, p1

    .line 538
    .local v0, "hash":I
    shl-int/lit8 v1, v0, 0x7

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    aget-char v2, p0, v2

    add-int/2addr v1, v2

    .line 543
    .end local v0    # "hash":I
    .local v1, "hash":I
    const/16 v0, 0x10

    if-le p2, v0, :cond_1

    shl-int/lit8 v0, v1, 0x7

    div-int/lit8 v2, p2, 0x4

    add-int/2addr v2, p1

    aget-char v2, p0, v2

    add-int v1, v0, v2

    .line 544
    :cond_1
    const/16 v0, 0x8

    if-le p2, v0, :cond_2

    shl-int/lit8 v0, v1, 0x7

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v2, p1

    aget-char v2, p0, v2

    add-int v1, v0, v2

    .line 548
    :cond_2
    return v1
.end method

.method private static findFragment(I[CII)I
    .locals 5
    .param p0, "bufMinPos"    # I
    .param p1, "b"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 978
    if-ge p2, p0, :cond_1

    .line 979
    move p2, p0

    .line 980
    if-le p2, p3, :cond_0

    move p2, p3

    .line 981
    :cond_0
    return p2

    .line 983
    :cond_1
    sub-int v0, p3, p2

    const/16 v1, 0x41

    if-le v0, v1, :cond_2

    .line 984
    add-int/lit8 p2, p3, -0xa

    .line 986
    :cond_2
    add-int/lit8 v0, p2, 0x1

    .line 987
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-le v0, p0, :cond_5

    .line 988
    sub-int v2, p3, v0

    if-le v2, v1, :cond_3

    goto :goto_1

    .line 989
    :cond_3
    aget-char v2, p1, v0

    .line 990
    .local v2, "c":C
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_4

    sub-int v3, p2, v0

    const/16 v4, 0xa

    if-le v3, v4, :cond_4

    goto :goto_1

    .line 991
    .end local v2    # "c":C
    :cond_4
    goto :goto_0

    .line 992
    :cond_5
    :goto_1
    return v0
.end method

.method private getLocalNamespacePrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .line 525
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getLocalNamespaceURI(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .line 515
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private static isElementEvent(I)Z
    .locals 2
    .param p0, "type"    # I

    .line 1642
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private reset()V
    .locals 2

    .line 657
    const/4 v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 659
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenRoot:Z

    .line 660
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->reachedEnd:Z

    .line 661
    const/4 v1, 0x7

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 662
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 664
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 666
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 668
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    .line 669
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    .line 671
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    .line 673
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    .line 674
    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;

    .line 676
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    .line 677
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    .line 678
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 680
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 682
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 684
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    .line 685
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    .line 686
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    .line 687
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    .line 688
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 689
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenDocdecl:Z

    .line 690
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->resetStringCache()V

    .line 692
    return-void
.end method

.method private static final setName(C)V
    .locals 2
    .param p0, "ch"    # C

    .line 262
    sget-object v0, Lcom/bea/xml/stream/MXParser;->lookupNameChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    return-void
.end method

.method private static final setNameStart(C)V
    .locals 2
    .param p0, "ch"    # C

    .line 265
    sget-object v0, Lcom/bea/xml/stream/MXParser;->lookupNameStartChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    invoke-static {p0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    return-void
.end method

.method private throwIllegalState(I)Ljava/lang/String;
    .locals 3
    .param p1, "expState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3833
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIllegalState([I)Ljava/lang/String;
    .locals 5
    .param p1, "expStates"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3839
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3840
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3841
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 3842
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3843
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3844
    aget v3, p1, v2

    invoke-static {v3}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3842
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3846
    .end local v2    # "i":I
    :cond_0
    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3847
    aget v2, p1, v1

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3849
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Current state ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v4}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private throwNotNameStart(C)V
    .locals 3
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3855
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected name start character and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method


# virtual methods
.method protected addDefaultAttributes(Ljava/lang/String;)V
    .locals 10
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2422
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 2423
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDAttlist;

    .line 2424
    .local v0, "attList":Lcom/wutka/dtd/DTDAttlist;
    if-eqz p1, :cond_6

    if-nez v0, :cond_1

    goto :goto_3

    .line 2425
    :cond_1
    invoke-virtual {v0}, Lcom/wutka/dtd/DTDAttlist;->getAttribute()[Lcom/wutka/dtd/DTDAttribute;

    move-result-object v1

    .line 2426
    .local v1, "atts":[Lcom/wutka/dtd/DTDAttribute;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 2427
    aget-object v3, v1, v2

    .line 2428
    .local v3, "att":Lcom/wutka/dtd/DTDAttribute;
    invoke-virtual {v3}, Lcom/wutka/dtd/DTDAttribute;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2429
    const/4 v4, 0x0

    .line 2430
    .local v4, "found":Z
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 2431
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 2432
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v3}, Lcom/wutka/dtd/DTDAttribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2433
    const/4 v4, 0x1

    .line 2434
    goto :goto_2

    .line 2431
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2437
    .end local v6    # "j":I
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 2438
    iget v6, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 2439
    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->ensureAttributesCapacity(I)V

    .line 2440
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v8, v7, -0x1

    const/4 v9, 0x0

    aput-object v9, v6, v8

    .line 2441
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    add-int/lit8 v8, v7, -0x1

    sget-object v9, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    aput-object v9, v6, v8

    .line 2442
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3}, Lcom/wutka/dtd/DTDAttribute;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2443
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3}, Lcom/wutka/dtd/DTDAttribute;->getDefaultValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2426
    .end local v3    # "att":Lcom/wutka/dtd/DTDAttribute;
    .end local v4    # "found":Z
    .end local v5    # "count":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2447
    .end local v2    # "i":I
    :cond_5
    return-void

    .line 2424
    .end local v1    # "atts":[Lcom/wutka/dtd/DTDAttribute;
    :cond_6
    :goto_3
    return-void
.end method

.method protected checkCharValidity(IZ)V
    .locals 4
    .param p1, "ch"    # I
    .param p2, "surrogatesOk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 351
    const/16 v0, 0x20

    if-ge p1, v0, :cond_1

    .line 352
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 353
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal white space character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    const v0, 0xd800

    if-lt p1, v0, :cond_5

    .line 356
    const v0, 0xdfff

    const-string v1, "Illegal character (code 0x"

    if-gt p1, v0, :cond_3

    .line 357
    if-eqz p2, :cond_2

    goto :goto_0

    .line 358
    :cond_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "): surrogate characters are not valid XML characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 361
    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    goto :goto_0

    .line 362
    :cond_4
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "), past max. Unicode character 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 366
    :cond_5
    :goto_0
    return-void
.end method

.method public checkForXMLDecl()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 775
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 776
    .local v0, "breader":Ljava/io/BufferedReader;
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    .line 777
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 780
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    .line 781
    .local v1, "ch":I
    const v3, 0xfeff

    if-ne v1, v3, :cond_0

    .line 782
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 783
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v1, v2

    .line 786
    :cond_0
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    .line 791
    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    .line 792
    const/4 v2, 0x1

    return v2

    .line 794
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    const/4 v2, 0x0

    return v2

    .line 796
    .end local v0    # "breader":Ljava/io/BufferedReader;
    .end local v1    # "ch":I
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1355
    return-void
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 866
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->ensureEntityCapacity()V

    .line 869
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 870
    .local v0, "ch":[C
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 871
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    aput-object v0, v1, v2

    .line 873
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    aput-object p2, v1, v2

    .line 878
    if-nez p2, :cond_0

    sget-object v1, Lcom/bea/xml/stream/MXParser;->NO_CHARS:[C

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 879
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    aput-object v0, v1, v2

    .line 880
    iget-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    aget-object v3, v3, v2

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/bea/xml/stream/MXParser;->fastHash([CII)I

    move-result v3

    aput v3, v1, v2

    .line 884
    :cond_1
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    .line 887
    return-void
.end method

.method protected ensureAttributesCapacity(I)V
    .locals 6
    .param p1, "size"    # I

    .line 385
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 386
    .local v2, "attrPosSize":I
    :goto_0
    if-lt p1, v2, :cond_8

    .line 387
    const/4 v3, 0x7

    if-le p1, v3, :cond_1

    mul-int/lit8 v3, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 391
    .local v3, "newSize":I
    :goto_1
    if-lez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v1

    .line 392
    .local v4, "needsCopying":Z
    :goto_2
    const/4 v5, 0x0

    .line 394
    .local v5, "arr":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 395
    if-eqz v4, :cond_3

    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :cond_3
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    .line 398
    new-array v0, v3, [Ljava/lang/String;

    .line 399
    .end local v5    # "arr":[Ljava/lang/String;
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    :cond_4
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    .line 402
    new-array v0, v3, [Ljava/lang/String;

    .line 403
    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    :cond_5
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    .line 406
    new-array v0, v3, [Ljava/lang/String;

    .line 407
    if-eqz v4, :cond_6

    .end local v0    # "arr":[Ljava/lang/String;
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    :cond_6
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    .line 410
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_8

    .line 411
    new-array v0, v3, [I

    .line 412
    .local v0, "iarr":[I
    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    :cond_7
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    .line 419
    .end local v0    # "iarr":[I
    .end local v3    # "newSize":I
    .end local v4    # "needsCopying":Z
    :cond_8
    return-void
.end method

.method protected ensureElementsCapacity()V
    .locals 8

    .line 194
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 195
    .local v2, "elStackSize":I
    :goto_0
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v4, v3, 0x1

    if-lt v4, v2, :cond_9

    .line 197
    const/4 v4, 0x7

    if-lt v3, v4, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    add-int/lit8 v3, v3, 0x2

    .line 201
    .local v3, "newSize":I
    if-lez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v1

    .line 202
    .local v4, "needsCopying":Z
    :goto_2
    const/4 v5, 0x0

    .line 203
    .local v5, "arr":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 204
    if-eqz v4, :cond_3

    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :cond_3
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    .line 206
    new-array v0, v3, [Ljava/lang/String;

    .line 207
    .end local v5    # "arr":[Ljava/lang/String;
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :cond_4
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    .line 209
    new-array v0, v3, [Ljava/lang/String;

    .line 210
    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    :cond_5
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    .line 213
    new-array v5, v3, [I

    .line 214
    .local v5, "iarr":[I
    if-eqz v4, :cond_6

    .line 215
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    invoke-static {v6, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    goto :goto_3

    .line 218
    :cond_6
    aput v1, v5, v1

    .line 220
    :goto_3
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    .line 223
    new-array v5, v3, [I

    .line 224
    if-eqz v4, :cond_7

    .line 225
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    invoke-static {v6, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_7
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    .line 229
    new-array v6, v3, [[C

    .line 230
    .local v6, "carr":[[C
    if-eqz v4, :cond_8

    .line 231
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    invoke-static {v7, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :cond_8
    iput-object v6, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    .line 249
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v3    # "newSize":I
    .end local v4    # "needsCopying":Z
    .end local v5    # "iarr":[I
    .end local v6    # "carr":[[C
    :cond_9
    return-void
.end method

.method protected ensureEntityCapacity()V
    .locals 10

    .line 561
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 562
    .local v0, "entitySize":I
    :goto_0
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    if-lt v2, v0, :cond_4

    .line 563
    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 567
    .local v3, "newSize":I
    :goto_1
    new-array v4, v3, [Ljava/lang/String;

    .line 568
    .local v4, "newEntityName":[Ljava/lang/String;
    new-array v5, v3, [[C

    .line 569
    .local v5, "newEntityNameBuf":[[C
    new-array v6, v3, [Ljava/lang/String;

    .line 570
    .local v6, "newEntityReplacement":[Ljava/lang/String;
    new-array v7, v3, [[C

    .line 571
    .local v7, "newEntityReplacementBuf":[[C
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 572
    invoke-static {v8, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v2, v1, v5, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v2, v1, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v2, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    :cond_2
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    .line 578
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    .line 579
    iput-object v6, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    .line 580
    iput-object v7, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    .line 582
    iget-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v2, :cond_4

    .line 583
    new-array v2, v3, [I

    .line 584
    .local v2, "newEntityNameHash":[I
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    if-eqz v8, :cond_3

    .line 585
    iget v9, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v8, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    :cond_3
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    .line 590
    .end local v2    # "newEntityNameHash":[I
    .end local v3    # "newSize":I
    .end local v4    # "newEntityName":[Ljava/lang/String;
    .end local v5    # "newEntityNameBuf":[[C
    .end local v6    # "newEntityReplacement":[Ljava/lang/String;
    .end local v7    # "newEntityReplacementBuf":[[C
    :cond_4
    return-void
.end method

.method protected ensureLocalNamespacesCapacity(I)V
    .locals 8
    .param p1, "size"    # I

    .line 474
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefix:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 475
    .local v2, "localNamespaceSize":I
    :goto_0
    if-lt p1, v2, :cond_4

    .line 476
    const/4 v3, 0x7

    if-le p1, v3, :cond_1

    mul-int/lit8 v3, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 480
    .local v3, "newSize":I
    :goto_1
    new-array v4, v3, [Ljava/lang/String;

    .line 481
    .local v4, "newLocalNamespacePrefix":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 482
    .local v5, "newLocalNamespaceUri":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 483
    iget v6, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    invoke-static {v0, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceUri:[Ljava/lang/String;

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    invoke-static {v0, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    :cond_2
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefix:[Ljava/lang/String;

    .line 489
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceUri:[Ljava/lang/String;

    .line 492
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 493
    new-array v0, v3, [I

    .line 494
    .local v0, "newLocalNamespacePrefixHash":[I
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefixHash:[I

    if-eqz v6, :cond_3

    .line 495
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    invoke-static {v6, v1, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    :cond_3
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefixHash:[I

    .line 503
    .end local v0    # "newLocalNamespacePrefixHash":[I
    .end local v3    # "newSize":I
    .end local v4    # "newLocalNamespacePrefix":[Ljava/lang/String;
    .end local v5    # "newLocalNamespaceUri":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected ensureNamespacesCapacity(I)V
    .locals 8
    .param p1, "size"    # I

    .line 436
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 437
    .local v2, "namespaceSize":I
    :goto_0
    if-lt p1, v2, :cond_4

    .line 438
    const/4 v3, 0x7

    if-le p1, v3, :cond_1

    mul-int/lit8 v3, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 442
    .local v3, "newSize":I
    :goto_1
    new-array v4, v3, [Ljava/lang/String;

    .line 443
    .local v4, "newNamespacePrefix":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 444
    .local v5, "newNamespaceUri":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 445
    iget v6, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    :cond_2
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 451
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 454
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 455
    new-array v0, v3, [I

    .line 456
    .local v0, "newNamespacePrefixHash":[I
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    if-eqz v6, :cond_3

    .line 457
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-static {v6, v1, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    :cond_3
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    .line 465
    .end local v0    # "newNamespacePrefixHash":[I
    .end local v3    # "newSize":I
    .end local v4    # "newNamespacePrefix":[Ljava/lang/String;
    .end local v5    # "newNamespaceUri":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected ensurePC(I)V
    .locals 5
    .param p1, "end"    # I

    .line 3754
    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x4000

    .line 3755
    .local v0, "newSize":I
    :goto_0
    new-array v1, v0, [C

    .line 3757
    .local v1, "newPC":[C
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3758
    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    .line 3760
    return-void
.end method

.method protected fillBuf()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 3645
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_a

    .line 3649
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufSoftLimit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_6

    .line 3652
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    if-le v3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3653
    .local v1, "compact":Z
    :goto_0
    const/4 v4, 0x0

    .line 3654
    .local v4, "expand":Z
    if-nez v1, :cond_2

    .line 3656
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_1

    .line 3658
    const/4 v4, 0x1

    .line 3659
    goto :goto_1

    .line 3661
    :cond_1
    const/4 v1, 0x1

    .line 3666
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 3669
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int/2addr v0, v3

    invoke-static {v5, v3, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3672
    move v6, v2

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_5

    .line 3673
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v6, v5

    mul-int/lit8 v6, v6, 0x2

    .line 3674
    .local v6, "newSize":I
    new-array v7, v6, [C

    .line 3676
    .local v7, "newBuf":[C
    sub-int/2addr v0, v3

    invoke-static {v5, v3, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3677
    iput-object v7, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    .line 3678
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->bufLoadFactor:I

    if-lez v0, :cond_4

    .line 3679
    array-length v3, v7

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufSoftLimit:I

    .line 3682
    .end local v6    # "newSize":I
    .end local v7    # "newBuf":[C
    :cond_4
    nop

    .line 3685
    :goto_2
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    .line 3686
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3687
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3688
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3689
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    .line 3690
    iput v2, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    move v2, v6

    goto :goto_3

    .line 3683
    :cond_5
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "internal error in fillBuffer()"

    invoke-direct {v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3693
    .end local v1    # "compact":Z
    .end local v4    # "expand":Z
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v1, v0

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    sub-int/2addr v1, v3

    .line 3694
    .local v1, "room":I
    const/16 v4, 0x2000

    if-le v1, v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, v1

    .line 3698
    .local v4, "len":I
    :goto_4
    :try_start_0
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    invoke-virtual {v5, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3701
    .local v0, "ret":I
    nop

    .line 3702
    if-lez v0, :cond_8

    .line 3703
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    .line 3704
    return-void

    .line 3706
    :cond_8
    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 3707
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "no more data available"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3709
    :cond_9
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "error reading input, returned "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3699
    .end local v0    # "ret":I
    :catch_0
    move-exception v0

    .line 3700
    .local v0, "ioe":Ljava/io/IOException;
    .local v2, "ret":I
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 3645
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "room":I
    .end local v2    # "ret":I
    .end local v4    # "len":I
    :cond_a
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v1, "reader must be set before parsing is started"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeCount()I
    .locals 2

    .line 1108
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1110
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1112
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 1128
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1129
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1131
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 1131
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attribute position must be 0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 4
    .param p1, "index"    # I

    .line 1647
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1648
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1650
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 1117
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1118
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1120
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    return-object v0

    .line 1121
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_2

    .line 1123
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 1121
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attribute position must be 0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 1138
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1139
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1141
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1142
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 1142
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attribute position must be 0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 1148
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1149
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1151
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 1153
    const-string v0, "CDATA"

    return-object v0

    .line 1151
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attribute position must be 0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 1167
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1168
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1170
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 1170
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attribute position must be 0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 1178
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1179
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1181
    :cond_0
    if-eqz p2, :cond_6

    .line 1185
    if-eqz p1, :cond_3

    .line 1186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v0, v1, :cond_2

    .line 1190
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1193
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 1186
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1196
    .end local v0    # "i":I
    :cond_2
    goto :goto_2

    .line 1197
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v0, v1, :cond_5

    .line 1198
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1199
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 1197
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1203
    .end local v0    # "i":I
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 1182
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attribute name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 10

    .line 1454
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    return-object v0

    .line 1455
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getAttributeCount()I

    move-result v0

    .line 1456
    .local v0, "attributeCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1457
    .local v1, "atts":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1458
    new-instance v9, Lcom/bea/xml/stream/AttributeBase;

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1464
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .line 1691
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charEncodingScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .line 1629
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .line 1026
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    return v0
.end method

.method public getConfigurationContext()Lcom/bea/xml/stream/ConfigurationContextBase;
    .locals 1

    .line 3790
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 972
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    return v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1315
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1319
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    .line 1321
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1323
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isCharacters()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 1324
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1325
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1322
    :cond_3
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected Element start"

    invoke-direct {v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1320
    :cond_4
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of Document"

    invoke-direct {v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1316
    :cond_5
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Precondition for readText is getEventType() == START_ELEMENT"

    invoke-direct {v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1624
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .line 1207
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 746
    if-eqz p1, :cond_4

    .line 747
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    return v0

    .line 751
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 752
    return v1

    .line 753
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 754
    return v1

    .line 757
    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 758
    const/4 v0, 0x1

    return v0

    .line 760
    :cond_3
    return v1

    .line 746
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature name should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 1021
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 3

    .line 1071
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    .line 1074
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    .line 1076
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1078
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    return-object v0

    .line 1085
    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x9
    .end array-data
.end method

.method public getLocalNamespaceCount()I
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 507
    .local v0, "startNs":I
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 0

    .line 3775
    return-object p0
.end method

.method public getLocationURI()Ljava/lang/String;
    .locals 1

    .line 1029
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 4

    .line 1661
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1662
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current state not START_ELEMENT or END_ELEMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 4

    .line 3026
    new-instance v0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-direct {v0, v1, v2, v3}, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    .line 892
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 895
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount(I)I

    move-result v0

    return v0

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getNamespaceCount(I)I
    .locals 3
    .param p1, "depth"    # I

    .line 900
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 905
    :cond_0
    if-ltz p1, :cond_1

    .line 906
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    sub-int/2addr v1, v0

    return v1

    .line 905
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "namespace count may be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 6
    .param p1, "pos"    # I

    .line 911
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 914
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 915
    .local v0, "currentDepth":I
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount(I)I

    move-result v1

    .line 916
    .local v1, "end":I
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    add-int/2addr v2, p1

    .line 917
    .local v2, "newpos":I
    if-ge p1, v1, :cond_1

    .line 918
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v3, v3, v2

    return-object v3

    .line 920
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " exceeded number of available namespaces "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    .line 1062
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1066
    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1064
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    :goto_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 6
    .param p1, "pos"    # I

    .line 927
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 930
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 931
    .local v0, "currentDepth":I
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount(I)I

    move-result v1

    .line 932
    .local v1, "end":I
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    add-int/2addr v2, p1

    .line 933
    .local v2, "newpos":I
    if-ge p1, v1, :cond_1

    .line 934
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v3, v3, v2

    return-object v3

    .line 936
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " exceedded number of available namespaces "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 944
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 948
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 949
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 950
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 949
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 954
    .end local v0    # "i":I
    :cond_2
    const-string/jumbo v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 955
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    return-object v0

    .line 956
    :cond_3
    const-string/jumbo v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 957
    const-string v0, "http://www.w3.org/2000/xmlns/"

    return-object v0

    .line 960
    :cond_4
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_6

    .line 961
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_5

    .line 962
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 960
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 967
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getNamespaces()Ljava/util/Iterator;
    .locals 2

    .line 1485
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNamespaces()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    return-object v0

    .line 1486
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalNamespaceCount()I

    move-result v0

    .line 1487
    .local v0, "namespaceCount":I
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    invoke-virtual {p0, v1, v0}, Lcom/bea/xml/stream/MXParser;->internalGetNamespaces(II)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public getOutOfScopeNamespaces()Ljava/util/Iterator;
    .locals 4

    .line 1491
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    .line 1492
    .local v2, "startNs":I
    aget v0, v0, v1

    .line 1493
    .local v0, "endNs":I
    sub-int v3, v0, v2

    .line 1494
    .local v3, "namespaceCount":I
    invoke-virtual {p0, v1, v3}, Lcom/bea/xml/stream/MXParser;->internalGetNamespaces(II)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public getPIData()Ljava/lang/String;
    .locals 2

    .line 3020
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3021
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 3023
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->piData:Ljava/lang/String;

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 2

    .line 3014
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3015
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 3017
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 6

    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, "fragment":Ljava/lang/String;
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    const-string v3, "..."

    if-gt v1, v2, :cond_2

    .line 1004
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    invoke-static {v4, v5, v1, v2}, Lcom/bea/xml/stream/MXParser;->findFragment(I[CII)I

    move-result v1

    .line 1006
    .local v1, "start":I
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    if-ge v1, v2, :cond_0

    .line 1007
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int/2addr v2, v1

    invoke-direct {v4, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v4

    .line 1009
    :cond_0
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    if-gtz v2, :cond_1

    if-lez v1, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .end local v1    # "start":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " seen "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .line 1090
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1092
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 3795
    const-string v0, "javax.xml.stream.entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3796
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    if-eqz v0, :cond_3

    .line 3797
    sget-object v1, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.wutka.dtd.DTDEntity"

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, v1}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object v0

    .line 3798
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 3799
    .local v1, "e":Ljava/util/Enumeration;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3800
    .local v2, "result":Ljava/util/ArrayList;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3801
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wutka/dtd/DTDEntity;

    .line 3802
    .local v3, "ent":Lcom/wutka/dtd/DTDEntity;
    invoke-static {v3}, Lcom/bea/xml/stream/events/DTDEvent;->createEntityDeclaration(Lcom/wutka/dtd/DTDEntity;)Ljavax/xml/stream/events/EntityDeclaration;

    move-result-object v4

    .line 3803
    .local v4, "nd":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 3804
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3806
    .end local v3    # "ent":Lcom/wutka/dtd/DTDEntity;
    .end local v4    # "nd":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 3807
    :cond_2
    return-object v2

    .line 3809
    .end local v0    # "v":Ljava/util/Vector;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "result":Ljava/util/ArrayList;
    :cond_3
    return-object v1

    .line 3811
    :cond_4
    const-string v0, "javax.xml.stream.notations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3812
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    if-eqz v0, :cond_8

    .line 3813
    sget-object v1, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDNotation:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "com.wutka.dtd.DTDNotation"

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDNotation:Ljava/lang/Class;

    :cond_5
    invoke-virtual {v0, v1}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object v0

    .line 3814
    .restart local v0    # "v":Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 3815
    .restart local v1    # "e":Ljava/util/Enumeration;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3816
    .restart local v2    # "result":Ljava/util/ArrayList;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3817
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wutka/dtd/DTDNotation;

    .line 3818
    .local v3, "n":Lcom/wutka/dtd/DTDNotation;
    invoke-static {v3}, Lcom/bea/xml/stream/events/DTDEvent;->createNotationDeclaration(Lcom/wutka/dtd/DTDNotation;)Ljavax/xml/stream/events/NotationDeclaration;

    move-result-object v4

    .line 3819
    .local v4, "ed":Ljava/lang/Object;
    if-eqz v4, :cond_6

    .line 3820
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3822
    .end local v3    # "n":Lcom/wutka/dtd/DTDNotation;
    .end local v4    # "ed":Ljava/lang/Object;
    :cond_6
    goto :goto_1

    .line 3823
    :cond_7
    return-object v2

    .line 3825
    .end local v0    # "v":Ljava/util/Vector;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "result":Ljava/util/ArrayList;
    :cond_8
    return-object v1

    .line 3827
    :cond_9
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 3778
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 3781
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 1527
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEvent()V

    .line 1528
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    if-eqz v0, :cond_0

    .line 1531
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    return-object v0

    .line 1535
    :cond_1
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_2

    .line 1536
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1537
    goto :goto_0

    .line 1538
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1540
    :goto_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 5
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [C
    .param p3, "targetStart"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1546
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1548
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getTextLength()I

    move-result v0

    .line 1554
    .local v0, "intLen":I
    if-ltz p1, :cond_2

    if-gt p1, v0, :cond_2

    .line 1562
    sub-int v1, v0, p1

    .line 1564
    .local v1, "avail":I
    if-ge v1, p4, :cond_0

    .line 1565
    move p4, v1

    .line 1568
    :cond_0
    if-lez p4, :cond_1

    .line 1569
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getTextCharacters()[C

    move-result-object v2

    .line 1570
    .local v2, "intBuf":[C
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getTextStart()I

    move-result v3

    .line 1571
    .local v3, "intStart":I
    add-int v4, v3, p1

    invoke-static {v2, v4, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1574
    .end local v2    # "intBuf":[C
    .end local v3    # "intStart":I
    :cond_1
    return p4

    .line 1555
    .end local v1    # "avail":I
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getTextCharacters()[C
    .locals 2

    .line 1578
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1580
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1581
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    return-object v0

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    return-object v0

    .line 1587
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    return-object v0
.end method

.method public getTextLength()I
    .locals 2

    .line 1602
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1603
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 1604
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    sub-int/2addr v0, v1

    return v0

    .line 1606
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTextStart()I
    .locals 1

    .line 1592
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1594
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 1595
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    return v0

    .line 1597
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    return v0
.end method

.method public getTextStream()Ljava/io/Reader;
    .locals 1

    .line 1507
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1620
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->xmlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .line 1442
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1443
    const/4 v0, 0x1

    return v0

    .line 1444
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .line 1676
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    return v0
.end method

.method public hasNamespaces()Z
    .locals 1

    .line 1448
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1449
    const/4 v0, 0x1

    return v0

    .line 1450
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1346
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasText()Z
    .locals 2

    .line 1611
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

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

.method public internalGetNamespaces(II)Ljava/util/Iterator;
    .locals 6
    .param p1, "depth"    # I
    .param p2, "namespaceCount"    # I

    .line 1469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    .local v0, "ns":Ljava/util/ArrayList;
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    .line 1471
    .local v1, "startNs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 1472
    add-int v3, v2, v1

    invoke-direct {p0, v3}, Lcom/bea/xml/stream/MXParser;->getLocalNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 1473
    .local v3, "prefix":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1474
    new-instance v4, Lcom/bea/xml/stream/NamespaceBase;

    add-int v5, v2, v1

    invoke-direct {p0, v5}, Lcom/bea/xml/stream/MXParser;->getLocalNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    goto :goto_1

    .line 1476
    :cond_0
    new-instance v4, Lcom/bea/xml/stream/NamespaceBase;

    add-int v5, v2, v1

    invoke-direct {p0, v5}, Lcom/bea/xml/stream/MXParser;->getLocalNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    .end local v3    # "prefix":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1480
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public isAttributeSpecified(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 1157
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1158
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1160
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 1162
    return v1

    .line 1160
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attribute position must be 0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCharacters()Z
    .locals 2

    .line 1366
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEOF()Z
    .locals 2

    .line 1370
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1100
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1103
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    return v0

    .line 1100
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    const-string/jumbo v2, "parser must be on XMLStreamConstants.START_ELEMENT to check for empty element"

    invoke-direct {v0, v2, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method

.method public isEndElement()Z
    .locals 2

    .line 1362
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNameChar(C)Z
    .locals 2
    .param p1, "ch"    # C

    .line 319
    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    sget-object v1, Lcom/bea/xml/stream/MXParser;->lookupNameChar:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_3

    :cond_0
    if-lt p1, v0, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_4

    const v0, 0xffef

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isNameStartChar(C)Z
    .locals 2
    .param p1, "ch"    # C

    .line 285
    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    sget-object v1, Lcom/bea/xml/stream/MXParser;->lookupNameStartChar:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_3

    :cond_0
    if-lt p1, v0, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_4

    const v0, 0xffef

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isS(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 341
    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

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

.method public isStandalone()Z
    .locals 1

    .line 1684
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standalone:Z

    return v0
.end method

.method public isStartElement()Z
    .locals 2

    .line 1358
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWhiteSpace()Z
    .locals 4

    .line 1034
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 1048
    :cond_0
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 1049
    return v2

    .line 1056
    :cond_1
    return v1

    .line 1035
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_5

    .line 1036
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    if-ge v0, v3, :cond_4

    .line 1038
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 1036
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1040
    .end local v0    # "i":I
    :cond_4
    return v2

    .line 1042
    :cond_5
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .restart local v0    # "i":I
    :goto_2
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    if-ge v0, v3, :cond_7

    .line 1044
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    .line 1042
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1046
    .end local v0    # "i":I
    :cond_7
    return v2
.end method

.method protected joinPC()V
    .locals 7

    .line 3765
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v0, v1

    .line 3766
    .local v0, "len":I
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3767
    .local v1, "newEnd":I
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v3, v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 3769
    :cond_0
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-static {v3, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3770
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 3771
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 3773
    return-void
.end method

.method protected lookupEntityReplacement(I)[C
    .locals 6
    .param p1, "entitNameLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2900
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_5

    .line 2901
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->fastHash([CII)I

    move-result v0

    .line 2903
    .local v0, "hash":I
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 2905
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    aget-object v3, v2, v1

    array-length v3, v3

    if-ne p1, v3, :cond_3

    .line 2906
    aget-object v2, v2, v1

    .line 2907
    .local v2, "entityBuf":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p1, :cond_1

    .line 2909
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    aget-char v5, v2, v3

    if-eq v4, v5, :cond_0

    goto :goto_2

    .line 2907
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2911
    .end local v3    # "j":I
    :cond_1
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v3, :cond_2

    .line 2912
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2914
    :cond_2
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2915
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    aget-object v3, v3, v1

    return-object v3

    .line 2903
    .end local v2    # "entityBuf":[C
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2918
    .end local v0    # "hash":I
    .end local v1    # "i":I
    :cond_4
    goto :goto_4

    .line 2919
    :cond_5
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2920
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_8

    .line 2923
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-ne v1, v2, :cond_7

    .line 2924
    iget-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v1, :cond_6

    .line 2925
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2927
    :cond_6
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    aget-object v1, v1, v0

    return-object v1

    .line 2920
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 2931
    .end local v0    # "i":I
    :cond_8
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method protected more()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 3715
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->fillBuf()V

    .line 3716
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    aget-char v0, v0, v1

    .line 3721
    .local v0, "ch":C
    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    goto :goto_0

    .line 3722
    :cond_1
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 3723
    :goto_0
    return v0
.end method

.method public moveToEndElement()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1408
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isEndElement()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1409
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1410
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1412
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1413
    goto :goto_0

    .line 1414
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public moveToEndElement(Ljava/lang/String;)Z
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1420
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1421
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->moveToEndElement()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1422
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1423
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1424
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1425
    goto :goto_0

    .line 1426
    :cond_3
    return v0
.end method

.method public moveToEndElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespaceUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1432
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 1433
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->moveToEndElement(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1434
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1435
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1436
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1437
    goto :goto_0

    .line 1438
    :cond_3
    return v0

    .line 1432
    :cond_4
    :goto_1
    return v0
.end method

.method public moveToStartElement()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1374
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1375
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1378
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1379
    goto :goto_0

    .line 1380
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public moveToStartElement(Ljava/lang/String;)Z
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1386
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1387
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->moveToStartElement()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1388
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1389
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1390
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1391
    goto :goto_0

    .line 1392
    :cond_3
    return v0
.end method

.method public moveToStartElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespaceUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1398
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 1399
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->moveToStartElement(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1400
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1401
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1402
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1403
    goto :goto_0

    .line 1404
    :cond_3
    return v0

    .line 1398
    :cond_4
    :goto_1
    return v0
.end method

.method protected newString([CII)Ljava/lang/String;
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 130
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    .line 1331
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 1332
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1333
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method public nextElement()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1342
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextTag()I

    move-result v0

    return v0
.end method

.method protected nextImpl()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1700
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1701
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    .line 1702
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1703
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    .line 1704
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 1705
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    aget v0, v3, v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    .line 1707
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    if-eqz v0, :cond_1

    .line 1708
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 1709
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    .line 1710
    const/4 v0, 0x2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1714
    :cond_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    if-lez v0, :cond_2f

    .line 1716
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    if-eqz v0, :cond_2

    .line 1717
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    .line 1718
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1720
    :cond_2
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    if-eqz v0, :cond_3

    .line 1721
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    .line 1722
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0

    .line 1728
    :cond_3
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    if-eqz v0, :cond_4

    .line 1729
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 1730
    const/16 v0, 0x3c

    .line 1731
    .local v0, "ch":C
    goto :goto_0

    .end local v0    # "ch":C
    :cond_4
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    if-eqz v0, :cond_5

    .line 1732
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    .line 1733
    const/16 v0, 0x26

    .line 1734
    .restart local v0    # "ch":C
    goto :goto_0

    .line 1735
    .end local v0    # "ch":C
    :cond_5
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 1737
    .restart local v0    # "ch":C
    :goto_0
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1740
    const/4 v3, 0x0

    .line 1743
    .local v3, "hadCharData":Z
    const/4 v4, 0x0

    .line 1748
    .local v4, "needsMerging":Z
    :goto_1
    const/16 v5, 0x3c

    const/4 v6, 0x4

    if-ne v0, v5, :cond_18

    .line 1749
    if-eqz v3, :cond_6

    .line 1751
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_6

    .line 1752
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 1753
    iput v6, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v6

    .line 1756
    :cond_6
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    move v0, v5

    .line 1757
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_8

    .line 1758
    iget-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 1759
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    .line 1761
    iput v6, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v6

    .line 1763
    :cond_7
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseEndTag()I

    move-result v1

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1764
    :cond_8
    const/16 v5, 0x21

    const-string/jumbo v7, "unexpected character in markup "

    if-ne v0, v5, :cond_13

    .line 1765
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    move v0, v5

    .line 1766
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_a

    .line 1768
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseComment()V

    .line 1769
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_9

    const/4 v1, 0x5

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 1770
    :cond_9
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v5, :cond_21

    if-eqz v3, :cond_21

    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1771
    :cond_a
    const/16 v5, 0x5b

    if-ne v0, v5, :cond_12

    .line 1774
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1775
    .local v5, "oldStart":I
    iget v6, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1776
    .local v6, "oldEnd":I
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseCDATA()V

    .line 1778
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1779
    .local v7, "cdStart":I
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1780
    .local v8, "cdEnd":I
    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1781
    iput v6, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1782
    sub-int v9, v8, v7

    .line 1783
    .local v9, "cdLen":I
    if-lez v9, :cond_f

    .line 1784
    if-eqz v3, :cond_e

    .line 1786
    iget-boolean v10, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v10, :cond_c

    .line 1788
    if-le v6, v5, :cond_b

    .line 1789
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    .line 1790
    goto :goto_2

    .line 1791
    :cond_b
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1792
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 1795
    :cond_c
    :goto_2
    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int v11, v10, v9

    iget-object v12, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v12, v12

    if-lt v11, v12, :cond_d

    add-int/2addr v10, v9

    invoke-virtual {p0, v10}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1797
    :cond_d
    iget-object v10, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget-object v11, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v12, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-static {v10, v7, v11, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1798
    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v10, v9

    iput v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 1799
    goto :goto_3

    .line 1800
    :cond_e
    const/4 v4, 0x1

    .line 1801
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1802
    iput v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1804
    :goto_3
    const/4 v3, 0x1

    .line 1805
    goto :goto_4

    .line 1806
    :cond_f
    iget-boolean v10, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v10, :cond_10

    if-eqz v3, :cond_10

    const/4 v4, 0x1

    .line 1809
    :cond_10
    :goto_4
    iget-boolean v10, p0, Lcom/bea/xml/stream/MXParser;->reportCdataEvent:Z

    if-eqz v10, :cond_11

    const/16 v1, 0xc

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 1810
    .end local v5    # "oldStart":I
    .end local v6    # "oldEnd":I
    .end local v7    # "cdStart":I
    .end local v8    # "cdEnd":I
    .end local v9    # "cdLen":I
    :cond_11
    goto/16 :goto_7

    .line 1811
    :cond_12
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 1816
    :cond_13
    const/16 v5, 0x3f

    if-ne v0, v5, :cond_15

    .line 1817
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parsePI()Z

    .line 1818
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_14

    const/4 v1, 0x3

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 1819
    :cond_14
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v5, :cond_21

    if-eqz v3, :cond_21

    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1820
    :cond_15
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1821
    iget-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-nez v1, :cond_16

    if-eqz v3, :cond_16

    .line 1822
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    .line 1824
    iput v6, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v6

    .line 1826
    :cond_16
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseStartTag()I

    move-result v1

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 1828
    :cond_17
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 1834
    :cond_18
    const/16 v7, 0x26

    if-ne v0, v7, :cond_22

    .line 1838
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_19

    if-eqz v3, :cond_19

    .line 1839
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    .line 1840
    iput v6, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v6

    .line 1843
    :cond_19
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1844
    .restart local v5    # "oldStart":I
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1845
    .local v7, "oldEnd":I
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getConfigurationContext()Lcom/bea/xml/stream/ConfigurationContextBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bea/xml/stream/ConfigurationContextBase;->isReplacingEntities()Z

    move-result v8

    .line 1846
    .local v8, "replace":Z
    invoke-virtual {p0, v8}, Lcom/bea/xml/stream/MXParser;->parseEntityRef(Z)[C

    move-result-object v9

    .line 1847
    .local v9, "resolvedEntity":[C
    if-nez v8, :cond_1a

    .line 1848
    const/16 v1, 0x9

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 1850
    :cond_1a
    iput v6, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 1852
    if-nez v9, :cond_1c

    .line 1853
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 1854
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v6, v2

    invoke-virtual {p0, v1, v2, v6}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 1856
    :cond_1b
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "could not resolve entity named \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 1862
    :cond_1c
    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1863
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1864
    iget-boolean v6, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v6, :cond_1e

    .line 1865
    if-eqz v3, :cond_1d

    .line 1866
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    .line 1867
    const/4 v4, 0x0

    .line 1868
    goto :goto_5

    .line 1869
    :cond_1d
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1870
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 1875
    :cond_1e
    :goto_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    array-length v10, v9

    if-ge v6, v10, :cond_20

    .line 1877
    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v11, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_1f

    invoke-virtual {p0, v10}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1878
    :cond_1f
    iget-object v10, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v11, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aget-char v12, v9, v6

    aput-char v12, v10, v11

    .line 1875
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1883
    .end local v6    # "i":I
    :cond_20
    const/4 v3, 0x1

    .line 1886
    .end local v5    # "oldStart":I
    .end local v7    # "oldEnd":I
    .end local v8    # "replace":Z
    .end local v9    # "resolvedEntity":[C
    nop

    .line 1941
    :cond_21
    :goto_7
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    move v0, v5

    .line 1942
    goto/16 :goto_1

    .line 1888
    :cond_22
    if-eqz v4, :cond_23

    .line 1890
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    .line 1892
    const/4 v4, 0x0

    .line 1898
    :cond_23
    const/4 v3, 0x1

    .line 1900
    const/4 v6, 0x0

    .line 1906
    .local v6, "normalizedCR":Z
    :cond_24
    const/16 v8, 0xd

    const/16 v9, 0xa

    if-ne v0, v8, :cond_28

    .line 1907
    const/4 v6, 0x1

    .line 1908
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v8, v2

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1910
    iget-boolean v10, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v10, :cond_26

    .line 1911
    iget v10, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    if-le v8, v10, :cond_25

    .line 1912
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    .line 1913
    goto :goto_8

    .line 1914
    :cond_25
    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1915
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 1919
    :cond_26
    :goto_8
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v10, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v10, v10

    if-lt v8, v10, :cond_27

    invoke-virtual {p0, v8}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1920
    :cond_27
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aput-char v9, v8, v10

    .line 1921
    goto :goto_9

    :cond_28
    if-ne v0, v9, :cond_2b

    .line 1923
    if-nez v6, :cond_2a

    iget-boolean v8, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v8, :cond_2a

    .line 1924
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v10, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v10, v10

    if-lt v8, v10, :cond_29

    invoke-virtual {p0, v8}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1925
    :cond_29
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aput-char v9, v8, v10

    .line 1927
    :cond_2a
    const/4 v6, 0x0

    .line 1928
    goto :goto_9

    .line 1929
    :cond_2b
    iget-boolean v8, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v8, :cond_2d

    .line 1930
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v9, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v9, v9

    if-lt v8, v9, :cond_2c

    invoke-virtual {p0, v8}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1931
    :cond_2c
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aput-char v0, v8, v9

    .line 1933
    :cond_2d
    const/4 v6, 0x0

    .line 1936
    :goto_9
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v8

    move v0, v8

    .line 1937
    if-eq v0, v5, :cond_2e

    if-ne v0, v7, :cond_24

    .line 1938
    :cond_2e
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1939
    goto/16 :goto_1

    .line 1944
    .end local v0    # "ch":C
    .end local v3    # "hadCharData":Z
    .end local v4    # "needsMerging":Z
    .end local v6    # "normalizedCR":Z
    :cond_2f
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenRoot:Z

    if-eqz v0, :cond_30

    .line 1945
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseEpilog()I

    move-result v0

    return v0

    .line 1947
    :cond_30
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseProlog()I

    move-result v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 1951
    :catch_0
    move-exception v0

    .line 1952
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    const-string v3, "Unexpected end of stream"

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1294
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1300
    :goto_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1303
    :cond_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 1304
    :cond_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected XMLStreamConstants.START_ELEMENT or XMLStreamConstants.END_ELEMENT not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v2

    invoke-static {v2}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 1308
    :cond_3
    :goto_1
    return v0

    .line 1301
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1302
    goto :goto_0
.end method

.method public nextText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1266
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1271
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    move-result v0

    .line 1272
    .local v0, "eventType":I
    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 1273
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1274
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    move-result v0

    .line 1275
    if-ne v0, v2, :cond_0

    .line 1281
    return-object v1

    .line 1276
    :cond_0
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "TEXT must be immediately followed by END_ELEMENT and not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v4

    invoke-static {v4}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 1282
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    if-ne v0, v2, :cond_2

    .line 1283
    const-string v1, ""

    return-object v1

    .line 1285
    :cond_2
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    const-string/jumbo v3, "parser must be on START_ELEMENT or TEXT to read text"

    invoke-direct {v1, v3, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 1267
    .end local v0    # "eventType":I
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    const-string/jumbo v2, "parser must be on START_ELEMENT to read next text"

    invoke-direct {v0, v2, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    .line 1338
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected parseAttribute()C
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2457
    move-object/from16 v1, p0

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    :try_start_0
    iget v2, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v3, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v2, v3

    .line 2458
    .local v2, "prevPosStart":I
    iget v4, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v5, v4, -0x1

    add-int/2addr v5, v3

    .line 2459
    .local v5, "nameStart":I
    const/4 v3, -0x1

    .line 2460
    .local v3, "colonPos":I
    iget-object v6, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    aget-char v4, v6, v4

    .line 2461
    .local v4, "ch":C
    const/16 v6, 0x3a

    if-ne v4, v6, :cond_1

    iget-boolean v8, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v6, "when namespaces processing enabled colon can not be at attribute name start"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2466
    :cond_1
    :goto_0
    iget-boolean v8, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v8, :cond_2

    const/16 v8, 0x78

    if-ne v4, v8, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 2467
    .local v8, "startsWithXmlns":Z
    :goto_1
    const/4 v10, 0x0

    .line 2469
    .local v10, "xmlnsPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v11

    move v4, v11

    .line 2470
    :goto_2
    invoke-virtual {v1, v4}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v11

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, -0x1

    if-eqz v11, :cond_b

    .line 2471
    iget-boolean v11, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v11, :cond_a

    .line 2472
    if-eqz v8, :cond_8

    const/4 v11, 0x5

    if-ge v10, v11, :cond_8

    .line 2473
    add-int/lit8 v10, v10, 0x1

    .line 2474
    if-ne v10, v7, :cond_3

    const/16 v11, 0x6d

    if-eq v4, v11, :cond_8

    const/4 v8, 0x0

    goto :goto_3

    .line 2475
    :cond_3
    if-ne v10, v13, :cond_4

    const/16 v11, 0x6c

    if-eq v4, v11, :cond_8

    const/4 v8, 0x0

    goto :goto_3

    .line 2476
    :cond_4
    const/4 v13, 0x3

    if-ne v10, v13, :cond_5

    const/16 v11, 0x6e

    if-eq v4, v11, :cond_8

    const/4 v8, 0x0

    goto :goto_3

    .line 2477
    :cond_5
    if-ne v10, v12, :cond_6

    const/16 v11, 0x73

    if-eq v4, v11, :cond_8

    const/4 v8, 0x0

    goto :goto_3

    .line 2478
    :cond_6
    if-ne v10, v11, :cond_8

    .line 2479
    if-ne v4, v6, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v6, "after xmlns in attribute name must be colonwhen namespaces are enabled"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2486
    :cond_8
    :goto_3
    if-ne v4, v6, :cond_a

    .line 2487
    if-ne v3, v14, :cond_9

    .line 2491
    iget v11, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v11, v7

    iget v12, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v11, v12

    move v3, v11

    .end local v3    # "colonPos":I
    .local v11, "colonPos":I
    goto :goto_4

    .line 2487
    .end local v11    # "colonPos":I
    .restart local v3    # "colonPos":I
    :cond_9
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v6, "only one colon is allowed in attribute name when namespaces are enabled"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2494
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v11

    move v4, v11

    .line 2495
    goto :goto_2

    .line 2497
    :cond_b
    iget v6, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    invoke-virtual {v1, v6}, Lcom/bea/xml/stream/MXParser;->ensureAttributesCapacity(I)V

    .line 2500
    const/4 v6, 0x0

    .line 2501
    .local v6, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2503
    .local v11, "prefix":Ljava/lang/String;
    iget-boolean v15, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    const/16 v16, 0x0

    if-eqz v15, :cond_10

    .line 2504
    if-ge v10, v12, :cond_c

    const/4 v8, 0x0

    .line 2505
    :cond_c
    if-eqz v8, :cond_e

    .line 2506
    if-eq v3, v14, :cond_11

    .line 2508
    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v15, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v17, v3, v15

    add-int/lit8 v9, v17, 0x1

    iget v7, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v7, v13

    sub-int v13, v3, v15

    sub-int/2addr v7, v13

    invoke-virtual {v1, v12, v9, v7}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 2519
    const-string/jumbo v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_6

    .line 2520
    :cond_d
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v7, "trying to bind reserved NS prefix \'xmlns\'"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v9

    invoke-direct {v0, v7, v9}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2525
    :cond_e
    if-eq v3, v14, :cond_f

    .line 2526
    iget-object v7, v1, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v9, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v15, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v15, v5, v15

    sub-int v14, v3, v5

    invoke-virtual {v1, v12, v15, v14}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v9

    move-object v7, v12

    .line 2530
    .end local v11    # "prefix":Ljava/lang/String;
    .local v7, "prefix":Ljava/lang/String;
    iget-object v9, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    iget v11, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v15, v3, v14

    const/16 v17, 0x1

    add-int/lit8 v15, v15, 0x1

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    const/16 v19, 0x2

    add-int/lit8 v13, v13, -0x2

    sub-int v14, v3, v14

    sub-int/2addr v13, v14

    invoke-virtual {v1, v12, v15, v13}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    move-object v6, v12

    .line 2535
    move-object v11, v7

    goto :goto_5

    .line 2536
    .end local v7    # "prefix":Ljava/lang/String;
    .restart local v11    # "prefix":Ljava/lang/String;
    :cond_f
    iget-object v7, v1, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v9, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    aput-object v16, v7, v9

    move-object/from16 v7, v16

    .line 2537
    .end local v11    # "prefix":Ljava/lang/String;
    .restart local v7    # "prefix":Ljava/lang/String;
    iget-object v11, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v14, v5, v13

    iget v15, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    sub-int v13, v5, v13

    sub-int/2addr v15, v13

    invoke-virtual {v1, v12, v14, v15}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    move-object v6, v12

    move-object v11, v7

    .line 2541
    .end local v7    # "prefix":Ljava/lang/String;
    .restart local v11    # "prefix":Ljava/lang/String;
    :goto_5
    iget-boolean v7, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v7, :cond_11

    .line 2542
    iget-object v7, v1, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    iget v9, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v7, v9

    .line 2543
    goto :goto_6

    .line 2548
    :cond_10
    iget-object v7, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    iget v9, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v14, v5, v13

    iget v15, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    sub-int v13, v5, v13

    sub-int/2addr v15, v13

    invoke-virtual {v1, v12, v14, v15}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v9

    move-object v6, v12

    .line 2552
    iget-boolean v7, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v7, :cond_11

    .line 2553
    iget-object v7, v1, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    iget v9, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v7, v9

    .line 2558
    :cond_11
    :goto_6
    invoke-virtual {v1, v4}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v4, v7

    goto :goto_6

    .line 2559
    :cond_12
    const/16 v7, 0x3d

    if-ne v4, v7, :cond_3c

    .line 2562
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v4, v7

    .line 2563
    :goto_7
    invoke-virtual {v1, v4}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v4, v7

    goto :goto_7

    .line 2567
    :cond_13
    move v7, v4

    .line 2568
    .local v7, "delimit":C
    const/16 v9, 0x22

    if-eq v7, v9, :cond_15

    const/16 v9, 0x27

    if-ne v7, v9, :cond_14

    goto :goto_8

    :cond_14
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "attribute value must start with quotation or apostrophe not "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1, v7}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v12

    invoke-direct {v0, v9, v12}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2577
    :cond_15
    :goto_8
    const/4 v9, 0x0

    .line 2578
    .local v9, "normalizedCR":Z
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 2579
    iget v12, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v12, v1, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 2580
    iget v12, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v12, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2583
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v12
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v12

    .line 2584
    const-string v12, "\'"

    if-ne v4, v7, :cond_28

    .line 2585
    nop

    .line 2651
    :try_start_1
    iget-boolean v13, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v13, :cond_26

    if-eqz v8, :cond_26

    .line 2653
    const/4 v13, 0x0

    .line 2654
    .local v13, "ns":Ljava/lang/String;
    iget-boolean v14, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v14, :cond_16

    .line 2655
    iget-object v14, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v15, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    move/from16 v19, v5

    .end local v5    # "nameStart":I
    .local v19, "nameStart":I
    iget v5, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v15

    invoke-virtual {v1, v14, v15, v5}, Lcom/bea/xml/stream/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v5

    .line 2656
    .end local v13    # "ns":Ljava/lang/String;
    .local v5, "ns":Ljava/lang/String;
    goto :goto_a

    .line 2657
    .end local v19    # "nameStart":I
    .local v5, "nameStart":I
    .restart local v13    # "ns":Ljava/lang/String;
    :cond_16
    move/from16 v19, v5

    .end local v5    # "nameStart":I
    .restart local v19    # "nameStart":I
    iget-object v5, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iget v15, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    sub-int/2addr v15, v14

    invoke-virtual {v1, v5, v14, v15}, Lcom/bea/xml/stream/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v5

    .line 2659
    .end local v13    # "ns":Ljava/lang/String;
    .local v5, "ns":Ljava/lang/String;
    :goto_a
    iget v13, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-virtual {v1, v13}, Lcom/bea/xml/stream/MXParser;->ensureNamespacesCapacity(I)V

    .line 2660
    const/4 v13, -0x1

    .line 2666
    .local v13, "prefixHash":I
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v15, "xml"

    if-eqz v14, :cond_18

    .line 2667
    :try_start_2
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    goto :goto_b

    .line 2668
    :cond_17
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v12, "trying to bind reserved NS URI  \'http://www.w3.org/XML/1998/namespace\' to prefix other than \'xml\'"

    invoke-direct {v0, v12}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2670
    :cond_18
    const-string v14, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_25

    .line 2675
    :goto_b
    const/4 v14, -0x1

    if-eq v3, v14, :cond_1c

    .line 2676
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_1b

    .line 2685
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 2686
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_c

    .line 2687
    :cond_19
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v12, "trying to bind reserved NS prefix \'xml\' to URI other than its standard value (http://www.w3.org/XML/1998/namespace)"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v14

    invoke-direct {v0, v12, v14}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2693
    :cond_1a
    :goto_c
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput-object v6, v0, v14

    .line 2694
    iget-boolean v0, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_1e

    .line 2695
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v15

    aput v15, v0, v14

    move v13, v15

    .line 2696
    goto :goto_d

    .line 2677
    :cond_1b
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v12, "non-default namespace can not be declared to be empty string (in xml 1.0)"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v14

    invoke-direct {v0, v12, v14}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2699
    :cond_1c
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput-object v16, v0, v14

    .line 2700
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    .line 2701
    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    move-object v5, v0

    .line 2703
    :cond_1d
    iget-boolean v0, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_1e

    .line 2704
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    const/4 v15, -0x1

    aput v15, v0, v14

    move v13, v15

    .line 2707
    :cond_1e
    :goto_d
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput-object v5, v0, v14

    .line 2710
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v15, v1, Lcom/bea/xml/stream/MXParser;->depth:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget v0, v0, v15

    .line 2711
    .local v0, "startNs":I
    add-int/lit8 v14, v14, -0x1

    .local v14, "i":I
    :goto_e
    if-lt v14, v0, :cond_24

    .line 2713
    iget-boolean v15, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v15, :cond_20

    if-nez v6, :cond_1f

    goto :goto_f

    :cond_1f
    move/from16 v16, v0

    goto :goto_10

    :cond_20
    :goto_f
    move/from16 v16, v0

    .end local v0    # "startNs":I
    .local v16, "startNs":I
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, v14

    if-eq v0, v6, :cond_22

    :goto_10
    if-nez v15, :cond_21

    if-eqz v6, :cond_21

    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    aget v0, v0, v14

    if-ne v0, v13, :cond_21

    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, v14

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_11

    .line 2711
    :cond_21
    add-int/lit8 v14, v14, -0x1

    move/from16 v0, v16

    goto :goto_e

    .line 2719
    :cond_22
    :goto_11
    if-nez v6, :cond_23

    const-string v0, "default"

    goto :goto_12

    :cond_23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2720
    .local v0, "s":Ljava/lang/String;
    :goto_12
    new-instance v12, Ljavax/xml/stream/XMLStreamException;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v18, v3

    .end local v3    # "colonPos":I
    .local v18, "colonPos":I
    const-string v3, "duplicated namespace declaration for "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v15, " prefix"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v15

    invoke-direct {v12, v3, v15}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v12

    .line 2711
    .end local v16    # "startNs":I
    .end local v18    # "colonPos":I
    .local v0, "startNs":I
    .restart local v3    # "colonPos":I
    :cond_24
    move/from16 v16, v0

    move/from16 v18, v3

    .line 2726
    .end local v0    # "startNs":I
    .end local v3    # "colonPos":I
    .end local v14    # "i":I
    .restart local v16    # "startNs":I
    .restart local v18    # "colonPos":I
    iget v0, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    .line 2728
    .end local v5    # "ns":Ljava/lang/String;
    .end local v13    # "prefixHash":I
    .end local v16    # "startNs":I
    goto :goto_14

    .line 2672
    .end local v18    # "colonPos":I
    .restart local v3    # "colonPos":I
    .restart local v5    # "ns":Ljava/lang/String;
    .restart local v13    # "prefixHash":I
    :cond_25
    move/from16 v18, v3

    .end local v3    # "colonPos":I
    .restart local v18    # "colonPos":I
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v3, "trying to bind reserved NS URI  \'http://www.w3.org/2000/xmlns/\'"

    invoke-direct {v0, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2651
    .end local v13    # "prefixHash":I
    .end local v18    # "colonPos":I
    .end local v19    # "nameStart":I
    .restart local v3    # "colonPos":I
    .local v5, "nameStart":I
    :cond_26
    move/from16 v18, v3

    move/from16 v19, v5

    .line 2729
    .end local v3    # "colonPos":I
    .end local v5    # "nameStart":I
    .restart local v18    # "colonPos":I
    .restart local v19    # "nameStart":I
    iget-boolean v0, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v0, :cond_27

    .line 2730
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    iget v3, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    new-instance v5, Ljava/lang/String;

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    sub-int/2addr v14, v13

    invoke-direct {v5, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    aput-object v5, v0, v3

    .line 2732
    goto :goto_13

    .line 2733
    :cond_27
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    iget v3, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    new-instance v5, Ljava/lang/String;

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    sub-int/2addr v14, v13

    invoke-direct {v5, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    aput-object v5, v0, v3

    .line 2736
    :goto_13
    iget v0, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 2738
    :goto_14
    iget v0, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v0, v2, v0

    iput v0, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2739
    return v4

    .line 2586
    .end local v18    # "colonPos":I
    .end local v19    # "nameStart":I
    .restart local v3    # "colonPos":I
    .restart local v5    # "nameStart":I
    :cond_28
    move/from16 v18, v3

    move/from16 v19, v5

    const/4 v15, -0x1

    .end local v3    # "colonPos":I
    .end local v5    # "nameStart":I
    .restart local v18    # "colonPos":I
    .restart local v19    # "nameStart":I
    const/16 v3, 0x3c

    if-eq v4, v3, :cond_3b

    .line 2589
    const/16 v3, 0x26

    const/16 v5, 0xd

    if-ne v4, v3, :cond_30

    .line 2591
    iget v3, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    iput v3, v1, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2592
    iget-boolean v13, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v13, :cond_2b

    .line 2593
    iget v13, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    if-le v3, v13, :cond_29

    const/4 v3, 0x1

    goto :goto_15

    :cond_29
    const/4 v3, 0x0

    .line 2594
    .local v3, "hadCharData":Z
    :goto_15
    if-eqz v3, :cond_2a

    .line 2596
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    .line 2597
    goto :goto_16

    .line 2598
    :cond_2a
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 2599
    const/4 v13, 0x0

    iput v13, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v13, v1, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 2604
    .end local v3    # "hadCharData":Z
    :cond_2b
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getConfigurationContext()Lcom/bea/xml/stream/ConfigurationContextBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bea/xml/stream/ConfigurationContextBase;->isReplacingEntities()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/bea/xml/stream/MXParser;->parseEntityRef(Z)[C

    move-result-object v3

    .line 2606
    .local v3, "resolvedEntity":[C
    if-nez v3, :cond_2d

    .line 2607
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 2608
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v13, v5

    invoke-virtual {v1, v0, v5, v13}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2610
    :cond_2c
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "could not resolve entity named \'"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v13, v1, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v12

    invoke-direct {v0, v5, v12}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2615
    :cond_2d
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_17
    array-length v13, v3

    if-ge v12, v13, :cond_2f

    .line 2617
    iget v13, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v14, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v14, v14

    if-lt v13, v14, :cond_2e

    invoke-virtual {v1, v13}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 2618
    :cond_2e
    iget-object v13, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aget-char v15, v3, v12

    aput-char v15, v13, v14

    .line 2615
    add-int/lit8 v12, v12, 0x1

    const/4 v15, -0x1

    goto :goto_17

    .line 2621
    .end local v3    # "resolvedEntity":[C
    .end local v12    # "i":I
    :cond_2f
    const/4 v3, 0x1

    const/4 v13, 0x0

    goto :goto_1a

    :cond_30
    const/16 v3, 0x9

    const/16 v12, 0xa

    if-eq v4, v3, :cond_34

    if-eq v4, v12, :cond_34

    if-ne v4, v5, :cond_31

    goto :goto_18

    .line 2642
    :cond_31
    iget-boolean v3, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v3, :cond_33

    .line 2643
    iget v3, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v12, v12

    if-lt v3, v12, :cond_32

    invoke-virtual {v1, v3}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 2644
    :cond_32
    iget-object v3, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v12, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aput-char v4, v3, v12

    const/4 v3, 0x1

    const/4 v13, 0x0

    goto :goto_1a

    .line 2642
    :cond_33
    const/4 v3, 0x1

    const/4 v13, 0x0

    goto :goto_1a

    .line 2626
    :cond_34
    :goto_18
    iget-boolean v3, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v3, :cond_36

    .line 2627
    iget v3, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    iput v3, v1, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2628
    iget v13, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    if-le v3, v13, :cond_35

    .line 2629
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    .line 2630
    const/4 v3, 0x1

    const/4 v13, 0x0

    goto :goto_19

    .line 2631
    :cond_35
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 2632
    const/4 v13, 0x0

    iput v13, v1, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iput v13, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    goto :goto_19

    .line 2626
    :cond_36
    const/4 v3, 0x1

    const/4 v13, 0x0

    .line 2636
    :goto_19
    iget v14, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v15, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v15, v15

    if-lt v14, v15, :cond_37

    invoke-virtual {v1, v14}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 2637
    :cond_37
    if-ne v4, v12, :cond_38

    if-nez v9, :cond_39

    .line 2638
    :cond_38
    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v14, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v1, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    const/16 v15, 0x20

    aput-char v15, v12, v14

    .line 2639
    nop

    .line 2647
    :cond_39
    :goto_1a
    if-ne v4, v5, :cond_3a

    move/from16 v17, v3

    goto :goto_1b

    :cond_3a
    move/from16 v17, v13

    :goto_1b
    move/from16 v9, v17

    .line 2648
    move/from16 v3, v18

    move/from16 v5, v19

    goto/16 :goto_9

    .line 2587
    :cond_3b
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v3, "markup not allowed inside attribute value - illegal < "

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2559
    .end local v7    # "delimit":C
    .end local v9    # "normalizedCR":Z
    .end local v18    # "colonPos":I
    .end local v19    # "nameStart":I
    .local v3, "colonPos":I
    .restart local v5    # "nameStart":I
    :cond_3c
    move/from16 v18, v3

    move/from16 v19, v5

    .end local v3    # "colonPos":I
    .end local v5    # "nameStart":I
    .restart local v18    # "colonPos":I
    .restart local v19    # "nameStart":I
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v3, "expected = after attribute name"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2741
    .end local v2    # "prevPosStart":I
    .end local v4    # "ch":C
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "startsWithXmlns":Z
    .end local v10    # "xmlnsPos":I
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v18    # "colonPos":I
    .end local v19    # "nameStart":I
    :catch_0
    move-exception v0

    .line 2742
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    const-string v4, "Unexpected end of stream"

    invoke-direct {v2, v4, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected parseCDATA()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3565
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_9

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_9

    .line 3576
    nop

    .line 3581
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3582
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 3583
    .local v0, "curLine":I
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 3585
    .local v1, "curColumn":I
    const/4 v2, 0x0

    .line 3586
    .local v2, "bracketCount":I
    const/4 v3, -0x2

    .line 3587
    .local v3, "skipLfAt":I
    const/4 v4, -0x1

    .line 3588
    .local v4, "at":I
    const/4 v5, 0x0

    .local v5, "anySkipped":Z
    const/4 v6, 0x0

    .line 3591
    :cond_0
    :goto_0
    const/4 v7, 0x1

    add-int/2addr v4, v7

    .line 3592
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v6
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3593
    .local v6, "ch":C
    const/16 v8, 0x5d

    if-ne v6, v8, :cond_1

    .line 3594
    add-int/lit8 v2, v2, 0x1

    .line 3595
    goto :goto_2

    .line 3596
    :cond_1
    const/16 v8, 0x3e

    if-ne v6, v8, :cond_4

    .line 3597
    const/4 v7, 0x2

    if-lt v2, v7, :cond_3

    .line 3598
    nop

    .line 3630
    if-eqz v5, :cond_2

    .line 3631
    :try_start_2
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3632
    goto :goto_1

    .line 3633
    :cond_2
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v7, v7, -0x3

    iput v7, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3640
    .end local v2    # "bracketCount":I
    .end local v3    # "skipLfAt":I
    .end local v4    # "at":I
    .end local v5    # "anySkipped":Z
    :goto_1
    nop

    .line 3641
    return-void

    .line 3600
    .restart local v2    # "bracketCount":I
    .restart local v3    # "skipLfAt":I
    .restart local v4    # "at":I
    .restart local v5    # "anySkipped":Z
    :cond_3
    const/4 v2, 0x0

    .line 3601
    goto :goto_2

    .line 3602
    :cond_4
    const/4 v2, 0x0

    .line 3603
    const/16 v8, 0xd

    const/16 v9, 0xa

    if-ne v6, v8, :cond_7

    .line 3604
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 3605
    add-int/lit8 v3, v4, 0x1

    .line 3607
    if-nez v5, :cond_5

    .line 3608
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v10, v7

    aput-char v9, v8, v10

    .line 3609
    goto :goto_0

    .line 3612
    :cond_5
    const/16 v6, 0xa

    .line 3613
    :cond_6
    goto :goto_2

    .line 3635
    .end local v2    # "bracketCount":I
    .end local v3    # "skipLfAt":I
    .end local v4    # "at":I
    .end local v5    # "anySkipped":Z
    :catch_0
    move-exception v2

    goto :goto_3

    .line 3613
    .restart local v2    # "bracketCount":I
    .restart local v3    # "skipLfAt":I
    .restart local v4    # "at":I
    .restart local v5    # "anySkipped":Z
    :cond_7
    if-ne v6, v9, :cond_6

    .line 3614
    if-ne v3, v4, :cond_8

    .line 3615
    const/4 v5, 0x1

    .line 3616
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3617
    goto :goto_0

    .line 3625
    :cond_8
    :goto_2
    if-eqz v5, :cond_0

    .line 3626
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    aput-char v6, v7, v8

    .line 3627
    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3628
    goto :goto_0

    .line 3635
    .end local v2    # "bracketCount":I
    .end local v3    # "skipLfAt":I
    .end local v4    # "at":I
    .end local v5    # "anySkipped":Z
    .end local v6    # "ch":C
    :catch_1
    move-exception v2

    .line 3637
    .local v2, "ex":Ljava/io/EOFException;
    .restart local v6    # "ch":C
    :goto_3
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "CDATA section on line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " and column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " was not closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v3

    .line 3572
    .end local v0    # "curLine":I
    .end local v1    # "curColumn":I
    .end local v2    # "ex":Ljava/io/EOFException;
    .end local v6    # "ch":C
    :cond_9
    :try_start_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected <[CDATA[ for CDATA start"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3574
    :catch_2
    move-exception v0

    .line 3575
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    const-string v3, "Unexpected EOF in directive"

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseComment()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2941
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 2942
    .local v0, "ch":C
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_9

    .line 2945
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2947
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 2948
    .local v2, "curLine":I
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2950
    .local v3, "curColumn":I
    const/4 v4, -0x2

    .line 2951
    .local v4, "expDash":I
    const/4 v5, -0x2

    .line 2952
    .local v5, "skipLfAt":I
    const/4 v6, -0x1

    .line 2953
    .local v6, "at":I
    const/4 v7, 0x0

    .line 2956
    .local v7, "anySkipped":Z
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v8

    move v0, v8

    .line 2957
    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 2959
    if-ne v0, v1, :cond_4

    .line 2960
    if-ge v4, v6, :cond_1

    .line 2961
    add-int/lit8 v4, v6, 0x1

    .line 2962
    goto :goto_2

    .line 2963
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    move v0, v1

    .line 2964
    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    .line 2996
    if-eqz v7, :cond_2

    .line 2997
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v1, v8

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2998
    goto :goto_1

    .line 2999
    :cond_2
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3006
    .end local v4    # "expDash":I
    .end local v5    # "skipLfAt":I
    .end local v6    # "at":I
    .end local v7    # "anySkipped":Z
    :goto_1
    nop

    .line 3010
    .end local v0    # "ch":C
    .end local v2    # "curLine":I
    .end local v3    # "curColumn":I
    nop

    .line 3011
    return-void

    .line 2965
    .restart local v0    # "ch":C
    .restart local v2    # "curLine":I
    .restart local v3    # "curColumn":I
    .restart local v4    # "expDash":I
    .restart local v5    # "skipLfAt":I
    .restart local v6    # "at":I
    .restart local v7    # "anySkipped":Z
    :cond_3
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "in COMMENT after two dashes (--) next character must be \'>\' not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local v0    # "ch":C
    .end local v2    # "curLine":I
    .end local v3    # "curColumn":I
    throw v1

    .line 2969
    .restart local v0    # "ch":C
    .restart local v2    # "curLine":I
    .restart local v3    # "curColumn":I
    :cond_4
    const/16 v9, 0xd

    const/16 v10, 0xa

    if-ne v0, v9, :cond_7

    .line 2970
    iput v8, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 2971
    add-int/lit8 v5, v6, 0x1

    .line 2973
    if-nez v7, :cond_5

    .line 2974
    iget-object v9, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v11, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v11, v8

    aput-char v10, v9, v11

    .line 2975
    goto :goto_0

    .line 2978
    :cond_5
    const/16 v0, 0xa

    .line 2979
    :cond_6
    goto :goto_2

    :cond_7
    if-ne v0, v10, :cond_6

    .line 2980
    if-ne v5, v6, :cond_8

    .line 2981
    if-nez v7, :cond_0

    .line 2982
    const/4 v7, 0x1

    .line 2983
    iget v9, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v9, v8

    iput v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2984
    goto :goto_0

    .line 2991
    :cond_8
    :goto_2
    if-eqz v7, :cond_0

    .line 2992
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    aput-char v0, v8, v9

    .line 2993
    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2994
    goto :goto_0

    .line 3001
    .end local v4    # "expDash":I
    .end local v5    # "skipLfAt":I
    .end local v6    # "at":I
    .end local v7    # "anySkipped":Z
    :catch_0
    move-exception v1

    .line 3003
    .local v1, "ex":Ljava/io/EOFException;
    :try_start_2
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "COMMENT started on line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " and column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " was not closed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v4

    .line 2943
    .end local v1    # "ex":Ljava/io/EOFException;
    .end local v2    # "curLine":I
    .end local v3    # "curColumn":I
    :cond_9
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "expected <!-- for COMMENT start"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3008
    .end local v0    # "ch":C
    :catch_1
    move-exception v0

    .line 3009
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    const-string v3, "Unexpected end of stream"

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseDocdecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3396
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3399
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_10

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v3, 0x59

    if-ne v0, v3, :cond_10

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v4, 0x50

    if-ne v0, v4, :cond_10

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v5, 0x45

    if-ne v0, v5, :cond_10

    .line 3419
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->requireNextS()C

    move-result v0

    .line 3422
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3423
    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwNotNameStart(C)V

    .line 3425
    :cond_0
    iget v6, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v6, v7

    .line 3427
    .local v6, "nameStart":I
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v0, v7

    .line 3428
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3431
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v7

    move v0, v7

    .line 3433
    const/16 v7, 0x53

    if-eq v0, v7, :cond_2

    if-ne v0, v4, :cond_b

    .line 3434
    :cond_2
    const/16 v4, 0x27

    const/16 v8, 0x22

    if-ne v0, v7, :cond_4

    .line 3435
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v7, :cond_3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 3437
    :cond_3
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "expected keyword SYSTEM"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3440
    :cond_4
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    const/16 v3, 0x55

    if-ne v2, v3, :cond_f

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_f

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_f

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_f

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    if-ne v2, v1, :cond_f

    .line 3445
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->requireNextS()C

    move-result v1

    .line 3446
    .local v1, "quotChar":C
    if-eq v1, v8, :cond_6

    if-ne v1, v4, :cond_5

    goto :goto_0

    .line 3447
    :cond_5
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Public identifier has to be enclosed in quotes, not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 3449
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    move v0, v2

    if-eq v2, v1, :cond_7

    .line 3451
    goto :goto_0

    .line 3454
    .end local v1    # "quotChar":C
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->requireNextS()C

    move-result v1

    .line 3455
    .restart local v1    # "quotChar":C
    if-eq v1, v8, :cond_9

    if-ne v1, v4, :cond_8

    goto :goto_2

    .line 3456
    :cond_8
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "System identifier has to be enclosed in quotes, not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 3458
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    move v0, v2

    if-eq v2, v1, :cond_a

    .line 3460
    goto :goto_2

    .line 3462
    :cond_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v2

    move v0, v2

    .line 3465
    .end local v1    # "quotChar":C
    :cond_b
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_d

    .line 3466
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3467
    const/4 v1, 0x1

    .line 3474
    .local v1, "bracketLevel":I
    :goto_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    move v0, v2

    .line 3475
    sparse-switch v0, :sswitch_data_0

    goto :goto_5

    .line 3480
    :sswitch_0
    add-int/lit8 v1, v1, -0x1

    .line 3481
    goto :goto_5

    .line 3477
    :sswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 3478
    goto :goto_5

    .line 3483
    :sswitch_2
    if-gtz v1, :cond_c

    .line 3484
    nop

    .line 3495
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3496
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->processDTD()V

    .line 3497
    .end local v1    # "bracketLevel":I
    goto :goto_6

    .line 3489
    .restart local v1    # "bracketLevel":I
    :goto_4
    :sswitch_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    if-eq v2, v0, :cond_c

    .line 3491
    goto :goto_4

    .line 3494
    :cond_c
    :goto_5
    goto :goto_3

    .line 3499
    .end local v1    # "bracketLevel":I
    :cond_d
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3500
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v1

    move v0, v1

    .line 3501
    const/16 v1, 0x3e

    if-ne v0, v1, :cond_e

    .line 3508
    .end local v0    # "ch":C
    .end local v6    # "nameStart":I
    :goto_6
    nop

    .line 3509
    return-void

    .line 3502
    .restart local v0    # "ch":C
    .restart local v6    # "nameStart":I
    :cond_e
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected closing \'>\' after internal DTD subset, not \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3442
    :cond_f
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "expected keyword PUBLIC"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3405
    .end local v0    # "ch":C
    .end local v6    # "nameStart":I
    :cond_10
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected <!DOCTYPE"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3506
    :catch_0
    move-exception v0

    .line 3507
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    const-string v3, "Unexpected end of stream"

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_3
        0x3e -> :sswitch_2
        0x5b -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public parseEndTag()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2152
    const/4 v0, 0x2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 2155
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    .line 2156
    .local v1, "ch":C
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2161
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v3, v2, -0x3

    iput v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2162
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v2, v4

    .line 2164
    .local v2, "nameStart":I
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    move v1, v4

    .line 2165
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2173
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v4, v3

    .line 2174
    .local v4, "last":I
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v5, v2, v5

    .line 2175
    .local v5, "off":I
    sub-int v6, v4, v5

    .line 2176
    .local v6, "len":I
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v7, v7, v8

    .line 2177
    .local v7, "cbuf":[C
    iget-object v9, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    aget v8, v9, v8
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "\'"

    const-string v10, "end tag name \'"

    const/4 v11, 0x0

    if-ne v8, v6, :cond_5

    .line 2185
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 2187
    :try_start_1
    iget-object v12, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    add-int/lit8 v13, v5, 0x1

    .end local v5    # "off":I
    .local v13, "off":I
    aget-char v5, v12, v5

    aget-char v12, v7, v8

    if-ne v5, v12, :cond_1

    .line 2185
    add-int/lit8 v8, v8, 0x1

    move v5, v13

    goto :goto_0

    .line 2189
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7, v11, v6}, Ljava/lang/String;-><init>([CII)V

    .line 2190
    .local v0, "startname":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    iget-object v11, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int v12, v13, v8

    sub-int/2addr v12, v3

    invoke-direct {v5, v11, v12, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v5

    .line 2191
    .local v3, "endname":Ljava/lang/String;
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\' must be the same as start tag \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 2197
    .end local v0    # "startname":Ljava/lang/String;
    .end local v3    # "endname":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v13    # "off":I
    .restart local v5    # "off":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v8

    move v1, v8

    goto :goto_1

    .line 2198
    :cond_3
    const/16 v8, 0x3e

    if-ne v1, v8, :cond_4

    .line 2206
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2207
    iput-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    .line 2211
    .end local v1    # "ch":C
    .end local v2    # "nameStart":I
    .end local v4    # "last":I
    .end local v5    # "off":I
    .end local v6    # "len":I
    .end local v7    # "cbuf":[C
    nop

    .line 2213
    return v0

    .line 2198
    .restart local v1    # "ch":C
    .restart local v2    # "nameStart":I
    .restart local v4    # "last":I
    .restart local v5    # "off":I
    .restart local v6    # "len":I
    .restart local v7    # "cbuf":[C
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "expected > to finsh end tag not "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-direct {v0, v3, v8}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2179
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7, v11, v8}, Ljava/lang/String;-><init>([CII)V

    .line 2180
    .restart local v0    # "startname":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    invoke-direct {v3, v8, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 2181
    .restart local v3    # "endname":Ljava/lang/String;
    new-instance v8, Ljavax/xml/stream/XMLStreamException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\' must match start tag name \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v8

    .line 2157
    .end local v0    # "startname":Ljava/lang/String;
    .end local v2    # "nameStart":I
    .end local v3    # "endname":Ljava/lang/String;
    .end local v4    # "last":I
    .end local v5    # "off":I
    .end local v6    # "len":I
    .end local v7    # "cbuf":[C
    :cond_6
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected name start and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2209
    .end local v1    # "ch":C
    :catch_0
    move-exception v0

    .line 2210
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    const-string v3, "Unexpected end of stream"

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseEntityRef(Z)[C
    .locals 11
    .param p1, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2767
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2768
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2769
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 2772
    .local v0, "ch":C
    const/16 v1, 0x23

    const/16 v2, 0x61

    const/16 v3, 0x3b

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v1, :cond_a

    .line 2774
    const/4 v1, 0x0

    .line 2775
    .local v1, "charRef":I
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v0, v7

    .line 2776
    const/16 v7, 0x78

    const v8, 0x10ffff

    const/16 v9, 0x39

    const/16 v10, 0x30

    if-ne v0, v7, :cond_5

    .line 2779
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v0, v7

    .line 2780
    if-ne v0, v3, :cond_1

    .line 2781
    goto :goto_1

    .line 2783
    :cond_1
    shl-int/lit8 v1, v1, 0x4

    .line 2784
    if-lt v0, v10, :cond_2

    if-gt v0, v9, :cond_2

    .line 2785
    add-int/lit8 v7, v0, -0x30

    add-int/2addr v1, v7

    .line 2786
    goto :goto_0

    :cond_2
    if-lt v0, v2, :cond_3

    const/16 v7, 0x66

    if-gt v0, v7, :cond_3

    .line 2787
    add-int/lit8 v7, v0, -0x57

    add-int/2addr v1, v7

    .line 2788
    goto :goto_0

    :cond_3
    const/16 v7, 0x41

    if-lt v0, v7, :cond_4

    const/16 v7, 0x46

    if-gt v0, v7, :cond_4

    .line 2789
    add-int/lit8 v7, v0, -0x37

    add-int/2addr v1, v7

    .line 2790
    nop

    .line 2795
    :goto_0
    if-le v1, v8, :cond_0

    .line 2796
    goto :goto_1

    .line 2791
    :cond_4
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "character reference (with hex value) may not contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "replace":Z
    throw v2

    .line 2799
    .restart local p1    # "replace":Z
    :cond_5
    if-lt v0, v10, :cond_6

    if-gt v0, v9, :cond_6

    .line 2800
    mul-int/lit8 v2, v1, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v1, v2, v7

    .line 2801
    nop

    .line 2808
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    move v0, v2

    .line 2809
    if-le v1, v8, :cond_5

    goto :goto_1

    .line 2801
    :cond_6
    if-ne v0, v3, :cond_9

    .line 2802
    nop

    .line 2811
    :goto_1
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2816
    invoke-virtual {p0, v1, v5}, Lcom/bea/xml/stream/MXParser;->checkCharValidity(IZ)V

    .line 2818
    const v2, 0xffff

    if-le v1, v2, :cond_8

    .line 2819
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    if-nez v2, :cond_7

    .line 2820
    new-array v2, v4, [C

    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    .line 2822
    :cond_7
    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    .line 2823
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    shr-int/lit8 v3, v1, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v5

    .line 2824
    and-int/lit16 v3, v1, 0x3ff

    const v4, 0xdc00

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v6

    .line 2825
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object v2

    .line 2828
    :cond_8
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    int-to-char v3, v1

    aput-char v3, v2, v5

    .line 2829
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object v2

    .line 2804
    :cond_9
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "character reference (with decimal value) may not contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "replace":Z
    throw v2

    .line 2835
    .end local v1    # "charRef":I
    .restart local p1    # "replace":Z
    :cond_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    move v0, v1

    if-ne v0, v3, :cond_a

    .line 2836
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v1, v6

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2838
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v1, v3

    .line 2839
    .local v1, "len":I
    const/16 v7, 0x74

    if-ne v1, v4, :cond_e

    .line 2840
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v4, v2, v3

    const/16 v8, 0x6c

    if-ne v4, v8, :cond_c

    add-int/lit8 v8, v3, 0x1

    aget-char v8, v2, v8

    if-ne v8, v7, :cond_c

    .line 2841
    if-nez p1, :cond_b

    .line 2842
    const-string v2, "<"

    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2843
    :cond_b
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/16 v3, 0x3c

    aput-char v3, v2, v5

    .line 2845
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object v2

    .line 2851
    :cond_c
    const/16 v8, 0x67

    if-ne v4, v8, :cond_14

    add-int/2addr v3, v6

    aget-char v2, v2, v3

    if-ne v2, v7, :cond_14

    .line 2852
    if-nez p1, :cond_d

    .line 2853
    const-string v2, ">"

    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2854
    :cond_d
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/16 v3, 0x3e

    aput-char v3, v2, v5

    .line 2856
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object v2

    .line 2858
    :cond_e
    const/16 v6, 0x70

    const/4 v8, 0x3

    if-ne v1, v8, :cond_10

    .line 2859
    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v8, v7, v3

    if-ne v8, v2, :cond_14

    add-int/lit8 v2, v3, 0x1

    aget-char v2, v7, v2

    const/16 v8, 0x6d

    if-ne v2, v8, :cond_14

    add-int/2addr v3, v4

    aget-char v2, v7, v3

    if-ne v2, v6, :cond_14

    .line 2861
    if-nez p1, :cond_f

    .line 2862
    const-string v2, "&"

    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2863
    :cond_f
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/16 v3, 0x26

    aput-char v3, v2, v5

    .line 2865
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object v2

    .line 2867
    :cond_10
    const/4 v4, 0x4

    if-ne v1, v4, :cond_14

    .line 2868
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v9, v4, v3

    const/16 v10, 0x6f

    if-ne v9, v2, :cond_12

    add-int/lit8 v2, v3, 0x1

    aget-char v2, v4, v2

    if-ne v2, v6, :cond_12

    add-int/lit8 v2, v3, 0x2

    aget-char v2, v4, v2

    if-ne v2, v10, :cond_12

    add-int/lit8 v2, v3, 0x3

    aget-char v2, v4, v2

    const/16 v6, 0x73

    if-ne v2, v6, :cond_12

    .line 2870
    if-nez p1, :cond_11

    .line 2871
    const-string v2, "\'"

    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2872
    :cond_11
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/16 v3, 0x27

    aput-char v3, v2, v5

    .line 2874
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object v2

    .line 2876
    :cond_12
    const/16 v2, 0x71

    if-ne v9, v2, :cond_14

    add-int/lit8 v2, v3, 0x1

    aget-char v2, v4, v2

    const/16 v6, 0x75

    if-ne v2, v6, :cond_14

    add-int/lit8 v2, v3, 0x2

    aget-char v2, v4, v2

    if-ne v2, v10, :cond_14

    add-int/2addr v3, v8

    aget-char v2, v4, v3

    if-ne v2, v7, :cond_14

    .line 2878
    if-nez p1, :cond_13

    .line 2879
    const-string v2, "\""

    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2880
    :cond_13
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/16 v3, 0x22

    aput-char v3, v2, v5

    .line 2882
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    return-object v2

    .line 2887
    :cond_14
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->lookupEntityReplacement(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2888
    .end local v0    # "ch":C
    .end local v1    # "len":I
    :catch_0
    move-exception v0

    .line 2889
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    const-string v3, "Unexpected end of stream"

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseEpilog()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2059
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    .line 2064
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->reachedEnd:Z

    if-eqz v0, :cond_0

    .line 2065
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 2067
    :cond_0
    const/4 v0, 0x0

    .line 2071
    .local v0, "gotS":Z
    const/4 v2, 0x6

    const/4 v3, 0x1

    :try_start_0
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    if-eqz v4, :cond_1

    .line 2072
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v3

    aget-char v4, v4, v5

    .line 2073
    .local v4, "ch":C
    goto :goto_0

    .line 2074
    .end local v4    # "ch":C
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    .line 2076
    .restart local v4    # "ch":C
    :goto_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 2077
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2081
    :goto_1
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_9

    .line 2082
    if-eqz v0, :cond_2

    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_2

    .line 2083
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2084
    iput-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 2085
    iput v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v2

    .line 2087
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    move v4, v5

    .line 2088
    const/16 v5, 0x3f

    if-ne v4, v5, :cond_3

    .line 2091
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parsePI()Z

    .line 2092
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x3

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v5

    .line 2094
    :cond_3
    const/16 v5, 0x21

    if-ne v4, v5, :cond_6

    .line 2095
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    move v4, v5

    .line 2096
    const/16 v5, 0x44

    if-ne v4, v5, :cond_4

    .line 2097
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseDocdecl()V

    .line 2098
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_a

    const/16 v5, 0xb

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v5

    .line 2099
    :cond_4
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_5

    .line 2100
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseComment()V

    .line 2101
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x5

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v5

    .line 2103
    :cond_5
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "unexpected markup <!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local v0    # "gotS":Z
    throw v5

    .line 2107
    .restart local v0    # "gotS":Z
    :cond_6
    const/16 v5, 0x2f

    if-eq v4, v5, :cond_8

    .line 2111
    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2112
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "start tag not allowed in epilog but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local v0    # "gotS":Z
    throw v5

    .line 2116
    .restart local v0    # "gotS":Z
    :cond_7
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog expected ignorable content and not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local v0    # "gotS":Z
    throw v5

    .line 2108
    .restart local v0    # "gotS":Z
    :cond_8
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "end tag not allowed in epilog but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local v0    # "gotS":Z
    throw v5

    .line 2120
    .restart local v0    # "gotS":Z
    :cond_9
    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2121
    const/4 v0, 0x1

    .line 2122
    nop

    .line 2127
    :cond_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    move v4, v5

    .line 2128
    goto/16 :goto_1

    .line 2123
    :cond_b
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog non whitespace content is not allowed but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local v0    # "gotS":Z
    throw v5
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2133
    .end local v4    # "ch":C
    .restart local v0    # "gotS":Z
    :catch_0
    move-exception v4

    .line 2134
    .local v4, "ex":Ljava/io/EOFException;
    iput-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->reachedEnd:Z

    .line 2135
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v3, :cond_c

    if-eqz v0, :cond_c

    .line 2136
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2137
    iput v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v2

    .line 2139
    :cond_c
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 2060
    .end local v0    # "gotS":Z
    .end local v4    # "ex":Ljava/io/EOFException;
    :cond_d
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    const-string v2, "already reached end document"

    invoke-direct {v0, v2, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method

.method protected parsePI()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3042
    const-string/jumbo v0, "xml"

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 3043
    .local v1, "curLine":I
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 3046
    .local v2, "curColumn":I
    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    .line 3047
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->piData:Ljava/lang/String;

    .line 3052
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3055
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    .line 3056
    .local v3, "ch":C
    const/16 v4, 0x3f

    if-ne v3, v4, :cond_0

    .line 3058
    goto :goto_1

    .line 3059
    :cond_0
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3061
    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3062
    nop

    .line 3068
    :goto_1
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v5, v6

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    .line 3070
    .local v5, "len":I
    if-eqz v5, :cond_e

    .line 3075
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    invoke-direct {v8, v9, v6, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v8, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    .line 3080
    if-eq v3, v4, :cond_2

    .line 3081
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v6

    move v3, v6

    .line 3084
    :cond_2
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 3087
    .local v6, "isXMLDecl":Z
    const/4 v8, 0x2

    if-eqz v6, :cond_5

    .line 3093
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v4, v9

    if-gt v4, v8, :cond_4

    .line 3097
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3101
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3102
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->parseXmlDecl(C)V

    .line 3103
    const/4 v6, 0x1

    .line 3104
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3105
    goto :goto_3

    .line 3098
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v4, "XMLDecl must have xml name in lowercase"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v7

    invoke-direct {v0, v4, v7}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local v1    # "curLine":I
    .end local v2    # "curColumn":I
    throw v0

    .line 3094
    .restart local v1    # "curLine":I
    .restart local v2    # "curColumn":I
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v4, "processing instruction can not have PITarget with reserved name \'xml\'"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v7

    invoke-direct {v0, v4, v7}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local v1    # "curLine":I
    .end local v2    # "curColumn":I
    throw v0

    .line 3106
    .restart local v1    # "curLine":I
    .restart local v2    # "curColumn":I
    :cond_5
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3108
    const/4 v0, -0x2

    .line 3109
    .local v0, "expLT":I
    const/4 v9, -0x2

    .line 3110
    .local v9, "skipLfAt":I
    const/4 v10, -0x1

    .line 3111
    .local v10, "at":I
    const/4 v11, 0x0

    .line 3114
    .local v11, "anySkipped":Z
    :goto_2
    add-int/2addr v10, v7

    .line 3115
    if-ne v3, v4, :cond_6

    .line 3116
    add-int/lit8 v0, v10, 0x1

    .line 3117
    goto :goto_4

    :cond_6
    const/16 v12, 0x3e

    if-ne v3, v12, :cond_8

    .line 3118
    if-ne v10, v0, :cond_c

    .line 3119
    nop

    .line 3148
    if-eqz v11, :cond_7

    .line 3149
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3150
    goto :goto_3

    .line 3151
    :cond_7
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v4, v8

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3154
    .end local v0    # "expLT":I
    .end local v9    # "skipLfAt":I
    .end local v10    # "at":I
    .end local v11    # "anySkipped":Z
    :goto_3
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v8, v7

    invoke-direct {v0, v4, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->piData:Ljava/lang/String;

    .line 3155
    return v6

    .line 3121
    .restart local v0    # "expLT":I
    .restart local v9    # "skipLfAt":I
    .restart local v10    # "at":I
    .restart local v11    # "anySkipped":Z
    :cond_8
    const/16 v12, 0xd

    const/16 v13, 0xa

    if-ne v3, v12, :cond_b

    .line 3122
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 3123
    add-int/lit8 v9, v10, 0x1

    .line 3125
    if-nez v11, :cond_9

    .line 3126
    iget-object v12, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v14, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v14, v7

    aput-char v13, v12, v14

    .line 3127
    goto :goto_5

    .line 3130
    :cond_9
    const/16 v3, 0xa

    .line 3131
    :cond_a
    goto :goto_4

    :cond_b
    if-ne v3, v13, :cond_a

    .line 3132
    if-ne v9, v10, :cond_c

    .line 3133
    if-nez v11, :cond_d

    .line 3134
    const/4 v11, 0x1

    .line 3135
    iget v12, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v12, v7

    iput v12, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3136
    goto :goto_5

    .line 3143
    :cond_c
    :goto_4
    if-eqz v11, :cond_d

    .line 3144
    iget-object v12, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v13, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    aput-char v3, v12, v13

    .line 3145
    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3113
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v12

    move v3, v12

    goto :goto_2

    .line 3071
    .end local v0    # "expLT":I
    .end local v6    # "isXMLDecl":Z
    .end local v9    # "skipLfAt":I
    .end local v10    # "at":I
    .end local v11    # "anySkipped":Z
    :cond_e
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v4, "processing instruction must have PITarget name"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local v1    # "curLine":I
    .end local v2    # "curColumn":I
    throw v0

    .line 3064
    .end local v5    # "len":I
    .restart local v1    # "curLine":I
    .restart local v2    # "curColumn":I
    :cond_f
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "unexpected character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " after processing instruction name; expected a white space or \'?>\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local v1    # "curLine":I
    .end local v2    # "curColumn":I
    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3157
    .end local v3    # "ch":C
    .restart local v1    # "curLine":I
    .restart local v2    # "curColumn":I
    :catch_0
    move-exception v0

    .line 3159
    .local v0, "ex":Ljava/io/EOFException;
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "processing instruction started on line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " and column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " was not closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected parseProlog()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1965
    :try_start_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v2, v1

    aget-char v0, v0, v2

    .line 1967
    .local v0, "ch":C
    goto :goto_0

    .line 1968
    .end local v0    # "ch":C
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 1971
    .restart local v0    # "ch":C
    :goto_0
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 1975
    const v2, 0xfffe

    if-eq v0, v2, :cond_1

    .line 1981
    const v2, 0xfeff

    if-ne v0, v2, :cond_2

    .line 1983
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    move v0, v2

    goto :goto_1

    .line 1976
    :cond_1
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "first character in input was UNICODE noncharacter (0xFFFE)- input requires int swapping"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 1986
    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 1987
    const/4 v2, 0x0

    .line 1988
    .local v2, "gotS":Z
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1994
    :goto_2
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_d

    .line 1995
    if-eqz v2, :cond_3

    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v4, :cond_3

    .line 1996
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1997
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 1998
    const/4 v1, 0x6

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 2000
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    move v0, v4

    .line 2001
    const/16 v4, 0x3f

    if-ne v0, v4, :cond_6

    .line 2004
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parsePI()Z

    move-result v4

    .line 2005
    .local v4, "isXMLDecl":Z
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_5

    .line 2006
    if-eqz v4, :cond_4

    .line 2007
    iput v3, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v3

    .line 2008
    :cond_4
    const/4 v1, 0x3

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 2010
    .end local v4    # "isXMLDecl":Z
    :cond_5
    goto/16 :goto_3

    :cond_6
    const/16 v4, 0x21

    if-ne v0, v4, :cond_a

    .line 2011
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    move v0, v4

    .line 2012
    const/16 v4, 0x44

    if-ne v0, v4, :cond_8

    .line 2013
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->seenDocdecl:Z

    if-nez v4, :cond_7

    .line 2018
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenDocdecl:Z

    .line 2019
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseDocdecl()V

    .line 2020
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v4, :cond_e

    const/16 v1, 0xb

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 2014
    :cond_7
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v3, "only one docdecl allowed in XML document"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2021
    :cond_8
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_9

    .line 2022
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseComment()V

    .line 2023
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v4, :cond_e

    const/4 v1, 0x5

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v1

    .line 2025
    :cond_9
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "unexpected markup <!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2029
    :cond_a
    const/16 v3, 0x2f

    const-string v4, "expected start tag name and not "

    if-eq v0, v3, :cond_c

    .line 2033
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2034
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenRoot:Z

    .line 2035
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseStartTag()I

    move-result v1

    return v1

    .line 2037
    :cond_b
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2030
    :cond_c
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2041
    :cond_d
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2042
    const/4 v2, 0x1

    .line 2043
    nop

    .line 2048
    :cond_e
    :goto_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    move v0, v4

    .line 2049
    goto/16 :goto_2

    .line 2044
    :cond_f
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "only whitespace content allowed before start tag and not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2051
    .end local v0    # "ch":C
    .end local v2    # "gotS":Z
    :catch_0
    move-exception v0

    .line 2052
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    const-string v3, "Unexpected end of stream"

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseStartTag()I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 2225
    move-object/from16 v1, p0

    const/4 v0, 0x1

    iput v0, v1, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 2229
    :try_start_0
    iget v2, v1, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 2231
    iget v2, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v3, v2, -0x2

    iput v3, v1, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2233
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 2234
    iput v3, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 2235
    iput v3, v1, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    .line 2237
    add-int/lit8 v4, v2, -0x1

    iget v5, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v4, v5

    .line 2238
    .local v4, "nameStart":I
    const/4 v5, -0x1

    .line 2239
    .local v5, "colonPos":I
    iget-object v6, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int/2addr v2, v0

    aget-char v2, v6, v2

    .line 2240
    .local v2, "ch":C
    const/16 v6, 0x3a

    if-ne v2, v6, :cond_1

    iget-boolean v7, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v3, "when namespaces processing enabled colon can not be at element name start"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2244
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v2, v7

    .line 2245
    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_22

    .line 2255
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->ensureElementsCapacity()V

    .line 2260
    iget v6, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v6, v0

    iget v7, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v9, v4, v7

    sub-int/2addr v6, v9

    .line 2261
    .local v6, "elLen":I
    iget-object v9, v1, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    iget v10, v1, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v11, v9, v10

    if-eqz v11, :cond_2

    array-length v11, v11

    if-ge v11, v6, :cond_3

    .line 2262
    :cond_2
    mul-int/lit8 v11, v6, 0x2

    new-array v11, v11, [C

    aput-object v11, v9, v10

    .line 2264
    :cond_3
    iget-object v11, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int v7, v4, v7

    aget-object v9, v9, v10

    invoke-static {v11, v7, v9, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2265
    iget-object v3, v1, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    iget v7, v1, Lcom/bea/xml/stream/MXParser;->depth:I

    aput v6, v3, v7

    .line 2267
    const/4 v3, 0x0

    .line 2270
    .local v3, "name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2271
    .local v9, "prefix":Ljava/lang/String;
    iget-boolean v10, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v10, :cond_5

    .line 2272
    if-eq v5, v8, :cond_4

    .line 2273
    iget-object v8, v1, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    iget-object v10, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v11, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v11, v4, v11

    sub-int v12, v5, v4

    invoke-virtual {v1, v10, v11, v12}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    move-object v9, v10

    .line 2275
    iget-object v7, v1, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v8, v1, Lcom/bea/xml/stream/MXParser;->depth:I

    iget-object v10, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    add-int/lit8 v11, v5, 0x1

    iget v12, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v11, v12

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v13, v13, -0x2

    sub-int v12, v5, v12

    sub-int/2addr v13, v12

    invoke-virtual {v1, v10, v11, v13}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    move-object v3, v10

    .line 2278
    goto :goto_1

    .line 2279
    :cond_4
    iget-object v8, v1, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v8, v7

    move-object v9, v10

    .line 2280
    iget-object v8, v1, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget-object v10, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v11, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v11, v4, v11

    invoke-virtual {v1, v10, v11, v6}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    move-object v3, v10

    .line 2282
    goto :goto_1

    .line 2283
    :cond_5
    iget-object v8, v1, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget-object v10, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v11, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v11, v4, v11

    invoke-virtual {v1, v10, v11, v6}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    move-object v3, v10

    .line 2287
    :goto_1
    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v7

    .line 2288
    .local v7, "gotS":Z
    if-eqz v7, :cond_7

    .line 2289
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v8

    move v2, v8

    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2291
    :cond_7
    const/16 v8, 0x3e

    if-ne v2, v8, :cond_8

    .line 2292
    goto :goto_2

    .line 2293
    :cond_8
    const/16 v10, 0x2f

    if-ne v2, v10, :cond_1e

    .line 2294
    iput-boolean v0, v1, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 2295
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v10

    move v2, v10

    .line 2296
    if-ne v2, v8, :cond_1d

    .line 2315
    .end local v7    # "gotS":Z
    :goto_2
    iget-boolean v7, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, " and "

    const-string v10, "duplicated attributes "

    const-string v11, ":"

    if-eqz v7, :cond_15

    .line 2316
    :try_start_1
    invoke-virtual {v1, v9}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2317
    .local v7, "uri":Ljava/lang/String;
    if-nez v7, :cond_a

    .line 2318
    if-nez v9, :cond_9

    .line 2319
    sget-object v12, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    move-object v7, v12

    .line 2320
    goto :goto_3

    .line 2321
    :cond_9
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "could not determine namespace bound to element prefix "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2327
    :cond_a
    :goto_3
    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    iget v13, v1, Lcom/bea/xml/stream/MXParser;->depth:I

    aput-object v7, v12, v13

    .line 2335
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    iget v13, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v12, v13, :cond_d

    .line 2337
    iget-object v13, v1, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v13, v13, v12

    .line 2338
    .local v13, "attrPrefix":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 2339
    invoke-virtual {v1, v13}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2340
    .local v14, "attrUri":Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 2346
    iget-object v15, v1, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v14, v15, v12

    .line 2347
    .end local v14    # "attrUri":Ljava/lang/String;
    goto :goto_5

    .line 2341
    .restart local v14    # "attrUri":Ljava/lang/String;
    :cond_b
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "could not determine namespace bound to attribute prefix "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2348
    .end local v14    # "attrUri":Ljava/lang/String;
    :cond_c
    iget-object v14, v1, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    sget-object v15, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    aput-object v15, v14, v12

    .line 2335
    .end local v13    # "attrPrefix":Ljava/lang/String;
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2356
    .end local v12    # "i":I
    :cond_d
    const/4 v12, 0x1

    .restart local v12    # "i":I
    :goto_6
    iget v13, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v12, v13, :cond_14

    .line 2358
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_7
    if-ge v13, v12, :cond_13

    .line 2360
    iget-object v14, v1, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v15, v14, v13

    aget-object v14, v14, v12

    if-ne v15, v14, :cond_12

    iget-boolean v14, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-eqz v14, :cond_e

    iget-object v14, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v15, v14, v13

    aget-object v14, v14, v12

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    :cond_e
    iget-boolean v14, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v14, :cond_12

    iget-object v14, v1, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    aget v15, v14, v13

    aget v14, v14, v12

    if-ne v15, v14, :cond_12

    iget-object v14, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v15, v14, v13

    aget-object v14, v14, v12

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 2367
    :cond_f
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v13

    .line 2368
    .local v0, "attr1":Ljava/lang/String;
    iget-object v14, v1, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v14, v14, v13

    if-eqz v14, :cond_10

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v15, v1, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v15, v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    .line 2369
    :cond_10
    iget-object v14, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v14, v14, v12

    .line 2370
    .local v14, "attr2":Ljava/lang/String;
    iget-object v15, v1, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v15, v15, v12

    if-eqz v15, :cond_11

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v16, v2

    .end local v2    # "ch":C
    .local v16, "ch":C
    iget-object v2, v1, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v2, v2, v12

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_8

    .end local v16    # "ch":C
    .restart local v2    # "ch":C
    :cond_11
    move/from16 v16, v2

    .line 2371
    .end local v2    # "ch":C
    .restart local v16    # "ch":C
    :goto_8
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v10

    invoke-direct {v2, v8, v10}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 2360
    .end local v0    # "attr1":Ljava/lang/String;
    .end local v14    # "attr2":Ljava/lang/String;
    .end local v16    # "ch":C
    .restart local v2    # "ch":C
    :cond_12
    move/from16 v16, v2

    .line 2358
    .end local v2    # "ch":C
    .restart local v16    # "ch":C
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v16

    goto/16 :goto_7

    .end local v16    # "ch":C
    .restart local v2    # "ch":C
    :cond_13
    move/from16 v16, v2

    .line 2356
    .end local v2    # "ch":C
    .end local v13    # "j":I
    .restart local v16    # "ch":C
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .end local v16    # "ch":C
    .restart local v2    # "ch":C
    :cond_14
    move/from16 v16, v2

    .line 2379
    .end local v2    # "ch":C
    .end local v7    # "uri":Ljava/lang/String;
    .end local v12    # "i":I
    .restart local v16    # "ch":C
    goto :goto_c

    .line 2383
    .end local v16    # "ch":C
    .restart local v2    # "ch":C
    :cond_15
    move/from16 v16, v2

    .end local v2    # "ch":C
    .restart local v16    # "ch":C
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    iget v7, v1, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v2, v7, :cond_1a

    .line 2385
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_a
    if-ge v7, v2, :cond_19

    .line 2387
    iget-boolean v12, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-eqz v12, :cond_16

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v13, v12, v7

    aget-object v12, v12, v2

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    :cond_16
    iget-boolean v12, v1, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v12, :cond_18

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    aget v13, v12, v7

    aget v12, v12, v2

    if-ne v13, v12, :cond_18

    iget-object v12, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v13, v12, v7

    aget-object v12, v12, v2

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    goto :goto_b

    .line 2394
    :cond_17
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v11, v0, v7

    .line 2395
    .local v11, "attr1":Ljava/lang/String;
    aget-object v0, v0, v2

    .line 2396
    .local v0, "attr2":Ljava/lang/String;
    new-instance v12, Ljavax/xml/stream/XMLStreamException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v10

    invoke-direct {v12, v8, v10}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v12

    .line 2385
    .end local v0    # "attr2":Ljava/lang/String;
    .end local v11    # "attr1":Ljava/lang/String;
    :cond_18
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 2383
    .end local v7    # "j":I
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2404
    .end local v2    # "i":I
    :cond_1a
    :goto_c
    iget-object v2, v1, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v7, v1, Lcom/bea/xml/stream/MXParser;->depth:I

    iget v8, v1, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput v8, v2, v7

    .line 2405
    iget v2, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v2, v1, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2407
    iget-object v2, v1, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    if-eqz v2, :cond_1c

    .line 2408
    if-eqz v9, :cond_1b

    .line 2409
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/MXParser;->addDefaultAttributes(Ljava/lang/String;)V

    goto :goto_d

    .line 2411
    :cond_1b
    invoke-virtual {v1, v3}, Lcom/bea/xml/stream/MXParser;->addDefaultAttributes(Ljava/lang/String;)V

    .line 2414
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameStart":I
    .end local v5    # "colonPos":I
    .end local v6    # "elLen":I
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v16    # "ch":C
    :cond_1c
    :goto_d
    nop

    .line 2416
    return v0

    .line 2296
    .local v2, "ch":C
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "nameStart":I
    .restart local v5    # "colonPos":I
    .restart local v6    # "elLen":I
    .local v7, "gotS":Z
    .restart local v9    # "prefix":Ljava/lang/String;
    :cond_1d
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "expected > to end empty tag not "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2299
    :cond_1e
    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 2300
    if-nez v7, :cond_20

    .line 2301
    if-ne v2, v8, :cond_1f

    goto :goto_e

    :cond_1f
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v8, "expected a white space between attributes"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2303
    :cond_20
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->parseAttribute()C

    move-result v8

    move v2, v8

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v8

    move v2, v8

    .line 2305
    goto/16 :goto_1

    .line 2307
    :cond_21
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "start tag unexpected character "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2246
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "elLen":I
    .end local v7    # "gotS":Z
    .end local v9    # "prefix":Ljava/lang/String;
    :cond_22
    if-ne v2, v6, :cond_1

    iget-boolean v7, v1, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v7, :cond_1

    .line 2247
    if-ne v5, v8, :cond_23

    .line 2250
    iget v7, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v7, v0

    iget v8, v1, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int v5, v7, v8

    .line 2251
    goto/16 :goto_0

    .line 2247
    :cond_23
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v3, "only one colon is allowed in name of element when namespaces are enabled"

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2412
    .end local v2    # "ch":C
    .end local v4    # "nameStart":I
    .end local v5    # "colonPos":I
    :catch_0
    move-exception v0

    .line 2413
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    const-string v4, "Unexpected end of stream"

    invoke-direct {v2, v4, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected parseXmlDecl(C)V
    .locals 5
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3230
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    move p1, v0

    .line 3231
    sget-object v0, Lcom/bea/xml/stream/MXParser;->VERSION:[C

    invoke-virtual {p0, p1, v0}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v0

    move p1, v0

    .line 3233
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    move p1, v0

    .line 3234
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_8

    .line 3238
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    move p1, v0

    .line 3239
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    move p1, v0

    .line 3240
    const/16 v0, 0x27

    if-eq p1, v0, :cond_1

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3241
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected apostrophe (\') or quotation mark (\") after version and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "ch":C
    throw v0

    .line 3245
    .restart local p1    # "ch":C
    :cond_1
    :goto_0
    move v0, p1

    .line 3246
    .local v0, "quotChar":C
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3247
    .local v1, "versionStart":I
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    move p1, v2

    .line 3249
    :goto_1
    if-eq p1, v0, :cond_7

    .line 3250
    const/16 v2, 0x61

    if-lt p1, v2, :cond_2

    const/16 v2, 0x7a

    if-le p1, v2, :cond_6

    :cond_2
    const/16 v2, 0x41

    if-lt p1, v2, :cond_3

    const/16 v2, 0x5a

    if-le p1, v2, :cond_6

    :cond_3
    const/16 v2, 0x30

    if-lt p1, v2, :cond_4

    const/16 v2, 0x39

    if-le p1, v2, :cond_6

    :cond_4
    const/16 v2, 0x5f

    if-eq p1, v2, :cond_6

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_6

    const/16 v2, 0x3a

    if-eq p1, v2, :cond_6

    const/16 v2, 0x2d

    if-ne p1, v2, :cond_5

    goto :goto_2

    .line 3253
    :cond_5
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "<?xml version value expected to be in ([a-zA-Z0-9_.:] | \'-\') not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "ch":C
    throw v2

    .line 3257
    .restart local p1    # "ch":C
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    move p1, v2

    .line 3258
    goto :goto_1

    .line 3259
    :cond_7
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x1

    .line 3260
    .local v2, "versionEnd":I
    invoke-virtual {p0, v1, v2}, Lcom/bea/xml/stream/MXParser;->parseXmlDeclWithVersion(II)V

    .line 3264
    .end local v0    # "quotChar":C
    .end local v1    # "versionStart":I
    .end local v2    # "versionEnd":I
    nop

    .line 3265
    return-void

    .line 3235
    :cond_8
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected equals sign (=) after version and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "ch":C
    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3262
    .restart local p1    # "ch":C
    :catch_0
    move-exception v0

    .line 3263
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    const-string v3, "Unexpected end of stream"

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseXmlDeclWithVersion(II)V
    .locals 17
    .param p1, "versionStart"    # I
    .param p2, "versionEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 3275
    sub-int v0, v3, v2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_16

    :try_start_0
    iget-object v0, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v4, v0, v2

    const/16 v5, 0x31

    if-ne v4, v5, :cond_16

    add-int/lit8 v4, v2, 0x1

    aget-char v4, v0, v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_16

    add-int/lit8 v4, v2, 0x2

    aget-char v4, v0, v4

    const/16 v6, 0x30

    if-ne v4, v6, :cond_16

    .line 3284
    new-instance v4, Ljava/lang/String;

    sub-int v7, v3, v2

    invoke-direct {v4, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, v1, Lcom/bea/xml/stream/MXParser;->xmlVersion:Ljava/lang/String;

    .line 3287
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3288
    .local v0, "ch":C
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v4

    move v0, v4

    .line 3289
    const/16 v4, 0x3f

    if-eq v0, v4, :cond_13

    .line 3290
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v7

    move v0, v7

    .line 3292
    sget-object v7, Lcom/bea/xml/stream/MXParser;->ENCODING:[C

    const/4 v8, 0x0

    aget-char v9, v7, v8
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    const/16 v11, 0x22

    const/16 v12, 0x27

    const/16 v13, 0x3d

    const/4 v14, 0x1

    if-ne v0, v9, :cond_c

    .line 3293
    :try_start_1
    invoke-virtual {v1, v0, v7}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v7

    move v0, v7

    .line 3294
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v7

    move v0, v7

    .line 3295
    if-ne v0, v13, :cond_b

    .line 3299
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v0, v7

    .line 3300
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v7

    move v0, v7

    .line 3301
    if-eq v0, v12, :cond_1

    if-ne v0, v11, :cond_0

    goto :goto_0

    .line 3302
    :cond_0
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v4

    .line 3306
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :cond_1
    :goto_0
    move v7, v0

    .line 3307
    .local v7, "quotChar":C
    iget v9, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3308
    .local v9, "encodingStart":I
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v15

    move v0, v15

    .line 3310
    const/16 v15, 0x5a

    const/16 v8, 0x7a

    const/16 v11, 0x41

    const/16 v12, 0x61

    if-lt v0, v12, :cond_2

    if-le v0, v8, :cond_3

    :cond_2
    if-lt v0, v11, :cond_a

    if-gt v0, v15, :cond_a

    .line 3316
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v16

    move/from16 v0, v16

    .line 3317
    :goto_1
    if-eq v0, v7, :cond_9

    .line 3318
    if-lt v0, v12, :cond_4

    if-le v0, v8, :cond_8

    :cond_4
    if-lt v0, v11, :cond_5

    if-le v0, v15, :cond_8

    :cond_5
    if-lt v0, v6, :cond_6

    const/16 v6, 0x39

    if-le v0, v6, :cond_8

    :cond_6
    if-eq v0, v5, :cond_8

    const/16 v6, 0x5f

    if-eq v0, v6, :cond_8

    const/16 v6, 0x2d

    if-ne v0, v6, :cond_7

    goto :goto_2

    .line 3321
    :cond_7
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "<?xml encoding value expected to be in ([A-Za-z0-9._] | \'-\') not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v4

    .line 3325
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v6

    move v0, v6

    .line 3326
    const/16 v6, 0x30

    goto :goto_1

    .line 3327
    :cond_9
    iget v5, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v5, v14

    .line 3330
    .local v5, "encodingEnd":I
    iget-object v6, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int v8, v5, v9

    invoke-virtual {v1, v6, v9, v8}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/bea/xml/stream/MXParser;->charEncodingScheme:Ljava/lang/String;

    .line 3331
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v6

    move v0, v6

    .line 3332
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v6

    move v0, v6

    goto :goto_3

    .line 3312
    .end local v5    # "encodingEnd":I
    :cond_a
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "<?xml encoding name expected to start with [A-Za-z] not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v4

    .line 3296
    .end local v7    # "quotChar":C
    .end local v9    # "encodingStart":I
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :cond_b
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "expected equals sign (=) after encoding and not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v4

    .line 3335
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :cond_c
    :goto_3
    if-eq v0, v4, :cond_13

    .line 3336
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v5

    move v0, v5

    .line 3337
    sget-object v5, Lcom/bea/xml/stream/MXParser;->STANDALONE:[C

    invoke-virtual {v1, v0, v5}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v5

    move v0, v5

    .line 3338
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v5

    move v0, v5

    .line 3339
    if-ne v0, v13, :cond_12

    .line 3344
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    move v0, v5

    .line 3345
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v5

    move v0, v5

    .line 3346
    const/16 v5, 0x27

    if-eq v0, v5, :cond_e

    const/16 v5, 0x22

    if-ne v0, v5, :cond_d

    goto :goto_4

    .line 3347
    :cond_d
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v4

    .line 3351
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :cond_e
    :goto_4
    move v5, v0

    .line 3352
    .local v5, "quotChar":C
    iget v6, v1, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3353
    .local v6, "standaloneStart":I
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v0, v7

    .line 3354
    const/16 v7, 0x79

    if-ne v0, v7, :cond_f

    .line 3355
    sget-object v7, Lcom/bea/xml/stream/MXParser;->YES:[C

    invoke-virtual {v1, v0, v7}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v7

    move v0, v7

    .line 3356
    iput-boolean v14, v1, Lcom/bea/xml/stream/MXParser;->standalone:Z

    .line 3357
    goto :goto_5

    :cond_f
    const/16 v7, 0x6e

    if-ne v0, v7, :cond_11

    .line 3358
    sget-object v7, Lcom/bea/xml/stream/MXParser;->NO:[C

    invoke-virtual {v1, v0, v7}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v7

    move v0, v7

    .line 3359
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/bea/xml/stream/MXParser;->standalone:Z

    .line 3360
    nop

    .line 3365
    :goto_5
    iput-boolean v14, v1, Lcom/bea/xml/stream/MXParser;->standaloneSet:Z

    .line 3366
    if-ne v0, v5, :cond_10

    .line 3371
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v0, v7

    goto :goto_6

    .line 3367
    :cond_10
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " after standalone value not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v4

    .line 3361
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :cond_11
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "expected \'yes\' or \'no\' after standalone and not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v4

    .line 3340
    .end local v5    # "quotChar":C
    .end local v6    # "standaloneStart":I
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :cond_12
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "expected equals sign (=) after standalone and not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v4

    .line 3374
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :cond_13
    :goto_6
    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v5
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v5

    .line 3375
    const-string v5, "expected ?> as last part of <?xml not "

    if-ne v0, v4, :cond_15

    .line 3380
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    move v0, v4

    .line 3381
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_14

    .line 3389
    .end local v0    # "ch":C
    nop

    .line 3390
    return-void

    .line 3382
    .restart local v0    # "ch":C
    :cond_14
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v4

    .line 3376
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :cond_15
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v4

    .line 3280
    .end local v0    # "ch":C
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :cond_16
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "only 1.0 is supported as <?xml version not \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/bea/xml/stream/MXParser;->buf:[C

    invoke-direct {v5, v6, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v5}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .end local p1    # "versionStart":I
    .end local p2    # "versionEnd":I
    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3387
    .restart local p1    # "versionStart":I
    .restart local p2    # "versionEnd":I
    :catch_0
    move-exception v0

    .line 3388
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual/range {p0 .. p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    const-string v6, "Unexpected end of stream"

    invoke-direct {v4, v6, v5, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected printable(C)Ljava/lang/String;
    .locals 2
    .param p1, "ch"    # C

    .line 3728
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3729
    const-string v0, "\\n"

    return-object v0

    .line 3730
    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 3731
    const-string v0, "\\r"

    return-object v0

    .line 3732
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 3733
    const-string v0, "\\t"

    return-object v0

    .line 3734
    :cond_2
    const/16 v0, 0x27

    if-ne p1, v0, :cond_3

    .line 3735
    const-string v0, "\\\'"

    return-object v0

    .line 3736
    :cond_3
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_5

    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    goto :goto_0

    .line 3739
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3737
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 3743
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3744
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3745
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3746
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3745
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3748
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3749
    return-object p1
.end method

.method protected processDTD()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3515
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3516
    .local v0, "internalDTD":Ljava/lang/String;
    new-instance v1, Lcom/wutka/dtd/DTDParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/wutka/dtd/DTDParser;-><init>(Ljava/io/Reader;)V

    .line 3517
    .local v1, "dtdParser":Lcom/wutka/dtd/DTDParser;
    invoke-virtual {v1}, Lcom/wutka/dtd/DTDParser;->parse()Lcom/wutka/dtd/DTD;

    move-result-object v2

    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    .line 3519
    sget-object v3, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "com.wutka.dtd.DTDEntity"

    invoke-static {v3}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2, v3}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object v2

    .line 3520
    .local v2, "v":Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 3521
    .local v3, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3522
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wutka/dtd/DTDEntity;

    .line 3523
    .local v4, "entity":Lcom/wutka/dtd/DTDEntity;
    invoke-virtual {v4}, Lcom/wutka/dtd/DTDEntity;->isParsed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3524
    invoke-virtual {v4}, Lcom/wutka/dtd/DTDEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/wutka/dtd/DTDEntity;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/bea/xml/stream/MXParser;->defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    .end local v4    # "entity":Lcom/wutka/dtd/DTDEntity;
    :cond_1
    goto :goto_0

    .line 3530
    :cond_2
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    sget-object v5, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDAttlist:Ljava/lang/Class;

    if-nez v5, :cond_3

    const-string v5, "com.wutka.dtd.DTDAttlist"

    invoke-static {v5}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDAttlist:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v4, v5}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object v4

    move-object v2, v4

    .line 3531
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    move-object v3, v4

    .line 3532
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3533
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wutka/dtd/DTDAttlist;

    .line 3534
    .local v4, "list":Lcom/wutka/dtd/DTDAttlist;
    invoke-virtual {v4}, Lcom/wutka/dtd/DTDAttlist;->getAttribute()[Lcom/wutka/dtd/DTDAttribute;

    move-result-object v5

    .line 3535
    .local v5, "atts":[Lcom/wutka/dtd/DTDAttribute;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_6

    .line 3536
    aget-object v7, v5, v6

    .line 3537
    .local v7, "att":Lcom/wutka/dtd/DTDAttribute;
    invoke-virtual {v7}, Lcom/wutka/dtd/DTDAttribute;->getDefaultValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 3538
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    if-nez v8, :cond_4

    .line 3539
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    .line 3540
    :cond_4
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/wutka/dtd/DTDAttlist;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3535
    .end local v7    # "att":Lcom/wutka/dtd/DTDAttribute;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3543
    .end local v4    # "list":Lcom/wutka/dtd/DTDAttlist;
    .end local v5    # "atts":[Lcom/wutka/dtd/DTDAttribute;
    .end local v6    # "i":I
    :cond_6
    goto :goto_1

    .line 3548
    .end local v0    # "internalDTD":Ljava/lang/String;
    .end local v1    # "dtdParser":Lcom/wutka/dtd/DTDParser;
    .end local v2    # "v":Ljava/util/Vector;
    .end local v3    # "e":Ljava/util/Enumeration;
    :cond_7
    nop

    .line 3549
    return-void

    .line 3544
    :catch_0
    move-exception v0

    .line 3547
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public recycle()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1503
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->reset()V

    .line 1504
    return-void
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1213
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v0

    .line 1214
    .local v0, "currType":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1216
    .local v3, "ok":Z
    :goto_0
    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    .line 1217
    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    goto :goto_1

    .line 1221
    :cond_1
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Using non-null local name argument for require(); "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " event does not have local name"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 1219
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1228
    :cond_3
    if-eqz v3, :cond_7

    if-eqz p2, :cond_7

    .line 1229
    if-eq v0, v2, :cond_4

    if-ne v0, v2, :cond_7

    .line 1234
    :cond_4
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 1235
    .local v4, "currNsUri":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 1236
    if-nez v4, :cond_5

    move v1, v2

    :cond_5
    move v3, v1

    .line 1237
    goto :goto_2

    .line 1238
    :cond_6
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1243
    .end local v4    # "currNsUri":Ljava/lang/String;
    :cond_7
    :goto_2
    if-nez v3, :cond_f

    .line 1244
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected event "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\'"

    const-string v5, ""

    if-eqz p3, :cond_8

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, " with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_8
    move-object v6, v5

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " and"

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    move-object v7, v6

    goto :goto_4

    :cond_9
    move-object v7, v5

    :goto_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_a

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " with namespace \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_a
    move-object v7, v5

    :goto_5
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, " but got"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v7

    if-eq p1, v7, :cond_b

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v8

    invoke-static {v8}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_b
    move-object v7, v5

    :goto_6
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getName()Ljavax/xml/namespace/QName;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_c
    move-object v7, v5

    :goto_7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getName()Ljavax/xml/namespace/QName;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_8

    :cond_d
    move-object v6, v5

    :goto_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, " namespace \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " (position:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 1262
    :cond_f
    return-void
.end method

.method protected requireInput(C[C)C
    .locals 5
    .param p1, "ch"    # C
    .param p2, "input"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 3176
    aget-char v1, p2, v0

    if-ne p1, v1, :cond_0

    .line 3182
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v1

    .line 3185
    nop

    .line 3174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3183
    :catch_0
    move-exception v1

    .line 3184
    .local v1, "eofe":Ljava/io/EOFException;
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    const-string v4, "Unexpected end of stream"

    invoke-direct {v2, v4, v3, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v2

    .line 3177
    .end local v1    # "eofe":Ljava/io/EOFException;
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-char v3, p2, v0

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3187
    .end local v0    # "i":I
    :cond_1
    return p1
.end method

.method protected requireNextS()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3196
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3199
    .local v0, "ch":C
    nop

    .line 3200
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3204
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v1

    return v1

    .line 3201
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "white space is required and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3197
    .end local v0    # "ch":C
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 3198
    .local v0, "eofe":Ljava/io/EOFException;
    .local v1, "ch":C
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    const-string v4, "Unexpected end of stream"

    invoke-direct {v2, v4, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected resetStringCache()V
    .locals 0

    .line 123
    return-void
.end method

.method public setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V
    .locals 3
    .param p1, "c"    # Lcom/bea/xml/stream/ConfigurationContextBase;

    .line 3785
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    .line 3786
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "javax.xml.stream.isCoalescing"

    invoke-virtual {p1, v1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3787
    .local v0, "isCoalescing":Z
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    invoke-virtual {p1, v2}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->reportCdataEvent:Z

    .line 3788
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 710
    if-eqz p1, :cond_8

    .line 711
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 715
    iput-boolean p2, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    .line 721
    goto :goto_0

    .line 712
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    const-string v2, "namespace processing feature can only be changed before parsing"

    invoke-direct {v0, v2, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 721
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    if-nez p2, :cond_2

    goto :goto_0

    .line 723
    :cond_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "interning names in this implementation is not supported"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_3
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 727
    if-nez p2, :cond_4

    goto :goto_0

    .line 728
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v1, "processing DOCDECL is not supported"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_5
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 734
    if-eqz p2, :cond_6

    .line 741
    :goto_0
    return-void

    .line 735
    :cond_6
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string/jumbo v1, "roundtrip feature can not be switched off"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_7
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "unknown feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature name should not be nulll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 814
    :try_start_0
    invoke-static {p1}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    .line 819
    .local v0, "r":Ljava/io/Reader;
    const/4 v1, 0x0

    .line 820
    .local v1, "enc":Ljava/lang/String;
    instance-of v2, v0, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;

    if-eqz v2, :cond_0

    .line 821
    move-object v2, v0

    check-cast v2, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;

    invoke-virtual {v2}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;->getEncoding()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 823
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/Reader;)V

    .line 824
    if-eqz v1, :cond_1

    .line 825
    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v0    # "r":Ljava/io/Reader;
    .end local v1    # "enc":Ljava/lang/String;
    :cond_1
    nop

    .line 830
    return-void

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 835
    if-eqz p1, :cond_3

    .line 840
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    .local v0, "reader":Ljava/io/Reader;
    :goto_0
    nop

    .line 848
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/Reader;)V

    .line 850
    if-eqz p2, :cond_1

    .line 851
    iput-object p2, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;

    .line 853
    :cond_1
    return-void

    .line 843
    .end local v0    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v1

    .line 844
    .restart local v0    # "reader":Ljava/io/Reader;
    .local v1, "ioe":Ljava/io/IOException;
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "(for encoding \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 845
    .local v2, "encMsg":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "could not create reader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v3

    .line 836
    .end local v0    # "reader":Ljava/io/Reader;
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "encMsg":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input stream can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 804
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->reset()V

    .line 805
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    .line 806
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->checkForXMLDecl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 809
    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 767
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "unsupported property: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1350
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextToken()I

    .line 1351
    return-void
.end method

.method protected skipS(C)C
    .locals 4
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3211
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    .line 3212
    :cond_0
    return p1

    .line 3213
    :catch_0
    move-exception v0

    .line 3214
    .local v0, "eofe":Ljava/io/EOFException;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    const-string v3, "Unexpected end of stream"

    invoke-direct {v1, v3, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public standaloneSet()Z
    .locals 1

    .line 1687
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standaloneSet:Z

    return v0
.end method

.method public subReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1499
    new-instance v0, Lcom/bea/xml/stream/SubReader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/SubReader;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method
