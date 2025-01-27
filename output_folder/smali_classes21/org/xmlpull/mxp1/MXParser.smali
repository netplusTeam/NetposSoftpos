.class public Lorg/xmlpull/mxp1/MXParser;
.super Ljava/lang/Object;
.source "MXParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field protected static final FEATURE_NAMES_INTERNED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#names-interned"

.field protected static final FEATURE_XML_ROUNDTRIP:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

.field protected static final LOOKUP_MAX:I = 0x400

.field protected static final LOOKUP_MAX_CHAR:C = '\u0400'

.field protected static final NCODING:[C

.field protected static final NO:[C

.field protected static final PROPERTY_XMLDECL_CONTENT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

.field protected static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field protected static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field protected static final READ_CHUNK_SIZE:I = 0x2000

.field protected static final TANDALONE:[C

.field private static final TRACE_SIZING:Z = false

.field protected static final VERSION:[C

.field protected static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field protected static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field protected static final YES:[C

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

.field protected charRefOneCharBuf:[C

.field protected columnNumber:I

.field protected depth:I

.field protected elName:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected elPrefix:[Ljava/lang/String;

.field protected elRawName:[[C

.field protected elRawNameEnd:[I

.field protected elRawNameLine:[I

.field protected elUri:[Ljava/lang/String;

.field protected emptyElementTag:Z

.field protected entityEnd:I

.field protected entityName:[Ljava/lang/String;

.field protected entityNameBuf:[[C

.field protected entityNameHash:[I

.field protected entityRefName:Ljava/lang/String;

.field protected entityReplacement:[Ljava/lang/String;

.field protected entityReplacementBuf:[[C

.field protected eventType:I

.field protected inputEncoding:Ljava/lang/String;

.field protected lineNumber:I

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespacePrefixHash:[I

.field protected namespaceUri:[Ljava/lang/String;

.field protected pastEndTag:Z

.field protected pc:[C

.field protected pcEnd:I

.field protected pcStart:I

.field protected pos:I

.field protected posEnd:I

.field protected posStart:I

.field protected preventBufferCompaction:Z

.field protected processNamespaces:Z

.field protected reachedEnd:Z

.field protected reader:Ljava/io/Reader;

.field protected roundtripSupported:Z

.field protected seenAmpersand:Z

.field protected seenDocdecl:Z

.field protected seenEndTag:Z

.field protected seenMarkup:Z

.field protected seenRoot:Z

.field protected seenStartTag:Z

.field protected text:Ljava/lang/String;

.field protected tokenize:Z

.field protected usePC:Z

.field protected xmlDeclContent:Ljava/lang/String;

.field protected xmlDeclStandalone:Ljava/lang/Boolean;

.field protected xmlDeclVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 2450
    const/4 v0, 0x7

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->VERSION:[C

    .line 2451
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->NCODING:[C

    .line 2452
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->TANDALONE:[C

    .line 2453
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->YES:[C

    .line 2454
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->NO:[C

    .line 3008
    const/16 v0, 0x400

    new-array v1, v0, [Z

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    .line 3009
    new-array v1, v0, [Z

    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    .line 3019
    const/16 v1, 0x3a

    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    .line 3020
    const/16 v1, 0x41

    .local v1, "ch":C
    :goto_0
    const/16 v2, 0x5a

    if-le v1, v2, :cond_6

    .line 3021
    const/16 v2, 0x5f

    invoke-static {v2}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    .line 3022
    const/16 v2, 0x61

    .local v2, "ch":C
    :goto_1
    const/16 v3, 0x7a

    if-le v2, v3, :cond_5

    .line 3023
    const/16 v3, 0xc0

    .local v3, "ch":C
    :goto_2
    const/16 v4, 0x2ff

    if-le v3, v4, :cond_4

    .line 3024
    const/16 v4, 0x370

    .local v4, "ch":C
    :goto_3
    const/16 v5, 0x37d

    if-le v4, v5, :cond_3

    .line 3025
    const/16 v5, 0x37f

    .local v5, "ch":C
    :goto_4
    if-lt v5, v0, :cond_2

    .line 3027
    const/16 v0, 0x2d

    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    .line 3028
    const/16 v0, 0x2e

    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    .line 3029
    const/16 v0, 0x30

    .local v0, "ch":C
    :goto_5
    const/16 v6, 0x39

    if-le v0, v6, :cond_1

    .line 3030
    const/16 v6, 0xb7

    invoke-static {v6}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    .line 3031
    const/16 v6, 0x300

    .local v6, "ch":C
    :goto_6
    const/16 v7, 0x36f

    if-le v6, v7, :cond_0

    .line 3032
    .end local v0    # "ch":C
    .end local v1    # "ch":C
    .end local v2    # "ch":C
    .end local v3    # "ch":C
    .end local v4    # "ch":C
    .end local v5    # "ch":C
    .end local v6    # "ch":C
    return-void

    .line 3031
    .restart local v0    # "ch":C
    .restart local v1    # "ch":C
    .restart local v2    # "ch":C
    .restart local v3    # "ch":C
    .restart local v4    # "ch":C
    .restart local v5    # "ch":C
    .restart local v6    # "ch":C
    :cond_0
    invoke-static {v6}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    add-int/lit8 v7, v6, 0x1

    int-to-char v6, v7

    goto :goto_6

    .line 3029
    .end local v6    # "ch":C
    :cond_1
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_5

    .line 3025
    .end local v0    # "ch":C
    :cond_2
    invoke-static {v5}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v6, v5, 0x1

    int-to-char v5, v6

    goto :goto_4

    .line 3024
    .end local v5    # "ch":C
    :cond_3
    invoke-static {v4}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v5, v4, 0x1

    int-to-char v4, v5

    goto :goto_3

    .line 3023
    .end local v4    # "ch":C
    :cond_4
    invoke-static {v3}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v4, v3, 0x1

    int-to-char v3, v4

    goto :goto_2

    .line 3022
    .end local v3    # "ch":C
    :cond_5
    invoke-static {v2}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v3, v2, 0x1

    int-to-char v2, v3

    goto :goto_1

    .line 3020
    .end local v2    # "ch":C
    :cond_6
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

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
        0x6es
        0x63s
        0x6fs
        0x64s
        0x69s
        0x6es
        0x67s
    .end array-data

    nop

    :array_2
    .array-data 2
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

    nop

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
    .locals 6

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/16 v0, 0x5f

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    .line 338
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    cmp-long v0, v0, v2

    const/16 v1, 0x2000

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    .line 340
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    array-length v0, v0

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x64

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    .line 350
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x40

    :goto_1
    new-array v0, v1, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    .line 2093
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    .line 422
    return-void
.end method

.method protected static final fastHash([CII)I
    .locals 3
    .param p0, "ch"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 271
    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 273
    :cond_0
    aget-char v0, p0, p1

    .line 275
    .local v0, "hash":I
    shl-int/lit8 v1, v0, 0x7

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    aget-char v2, p0, v2

    add-int/2addr v1, v2

    .line 280
    .end local v0    # "hash":I
    .local v1, "hash":I
    const/16 v0, 0x10

    if-le p2, v0, :cond_1

    shl-int/lit8 v0, v1, 0x7

    div-int/lit8 v2, p2, 0x4

    add-int/2addr v2, p1

    aget-char v2, p0, v2

    add-int v1, v0, v2

    .line 281
    :cond_1
    const/16 v0, 0x8

    if-le p2, v0, :cond_2

    shl-int/lit8 v0, v1, 0x7

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v2, p1

    aget-char v2, p0, v2

    add-int v1, v0, v2

    .line 285
    :cond_2
    return v1
.end method

.method private static findFragment(I[CII)I
    .locals 5
    .param p0, "bufMinPos"    # I
    .param p1, "b"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 647
    if-ge p2, p0, :cond_1

    .line 648
    move p2, p0

    .line 649
    if-le p2, p3, :cond_0

    move p2, p3

    .line 650
    :cond_0
    return p2

    .line 652
    :cond_1
    sub-int v0, p3, p2

    const/16 v1, 0x41

    if-le v0, v1, :cond_2

    .line 653
    add-int/lit8 p2, p3, -0xa

    .line 655
    :cond_2
    add-int/lit8 v0, p2, 0x1

    .line 656
    .local v0, "i":I
    nop

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gt v0, p0, :cond_3

    goto :goto_1

    .line 657
    :cond_3
    sub-int v2, p3, v0

    if-le v2, v1, :cond_4

    goto :goto_1

    .line 658
    :cond_4
    aget-char v2, p1, v0

    .line 659
    .local v2, "c":C
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_5

    sub-int v3, p2, v0

    const/16 v4, 0xa

    if-le v3, v4, :cond_5

    .line 661
    .end local v2    # "c":C
    :goto_1
    return v0

    .line 659
    .restart local v2    # "c":C
    :cond_5
    goto :goto_0
.end method

.method private static final setName(C)V
    .locals 2
    .param p0, "ch"    # C

    .line 3013
    sget-object v0, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    return-void
.end method

.method private static final setNameStart(C)V
    .locals 2
    .param p0, "ch"    # C

    .line 3016
    sget-object v0, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    invoke-static {p0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->ensureEntityCapacity()V

    .line 559
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 560
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-object v2, v0, v1

    .line 562
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    aput-object p2, v0, v1

    .line 563
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-object v2, v0, v1

    .line 564
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    aget-object v2, v2, v1

    array-length v3, v2

    invoke-static {v2, v4, v3}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v2

    aput v2, v0, v1

    .line 568
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    .line 571
    return-void
.end method

.method protected ensureAttributesCapacity(I)V
    .locals 6
    .param p1, "size"    # I

    .line 191
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 192
    .local v2, "attrPosSize":I
    :goto_0
    if-lt p1, v2, :cond_8

    .line 193
    const/4 v3, 0x7

    if-le p1, v3, :cond_1

    mul-int/lit8 v3, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 197
    .local v3, "newSize":I
    :goto_1
    if-lez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v1

    .line 198
    .local v4, "needsCopying":Z
    :goto_2
    const/4 v5, 0x0

    .line 200
    .local v5, "arr":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 201
    if-eqz v4, :cond_3

    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    :cond_3
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    .line 204
    new-array v0, v3, [Ljava/lang/String;

    .line 205
    .end local v5    # "arr":[Ljava/lang/String;
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    :cond_4
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    .line 208
    new-array v0, v3, [Ljava/lang/String;

    .line 209
    if-eqz v4, :cond_5

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    :cond_5
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    .line 212
    new-array v0, v3, [Ljava/lang/String;

    .line 213
    if-eqz v4, :cond_6

    .end local v0    # "arr":[Ljava/lang/String;
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    :cond_6
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    .line 216
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_8

    .line 217
    new-array v0, v3, [I

    .line 218
    .local v0, "iarr":[I
    if-eqz v4, :cond_7

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    :cond_7
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    .line 225
    .end local v0    # "iarr":[I
    .end local v2    # "attrPosSize":I
    .end local v3    # "newSize":I
    .end local v4    # "needsCopying":Z
    :cond_8
    return-void
.end method

.method protected ensureElementsCapacity()V
    .locals 8

    .line 108
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 109
    .local v2, "elStackSize":I
    :goto_0
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    add-int/lit8 v4, v3, 0x1

    if-lt v4, v2, :cond_a

    .line 111
    const/4 v4, 0x7

    if-lt v3, v4, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    add-int/lit8 v3, v3, 0x2

    .line 115
    .local v3, "newSize":I
    if-lez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v1

    .line 116
    .local v4, "needsCopying":Z
    :goto_2
    const/4 v5, 0x0

    .line 118
    .local v5, "arr":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 119
    if-eqz v4, :cond_3

    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :cond_3
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    .line 121
    new-array v0, v3, [Ljava/lang/String;

    .line 122
    .end local v5    # "arr":[Ljava/lang/String;
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :cond_4
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    .line 124
    new-array v0, v3, [Ljava/lang/String;

    .line 125
    if-eqz v4, :cond_5

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    :cond_5
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    .line 128
    new-array v5, v3, [I

    .line 129
    .local v5, "iarr":[I
    if-eqz v4, :cond_6

    .line 130
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    invoke-static {v6, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 133
    :cond_6
    aput v1, v5, v1

    .line 135
    :goto_3
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    .line 138
    new-array v5, v3, [I

    .line 139
    if-eqz v4, :cond_7

    .line 140
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    invoke-static {v6, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    :cond_7
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    .line 144
    new-array v5, v3, [I

    .line 145
    if-eqz v4, :cond_8

    .line 146
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    invoke-static {v6, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    :cond_8
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    .line 150
    new-array v6, v3, [[C

    .line 151
    .local v6, "carr":[[C
    if-eqz v4, :cond_9

    .line 152
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    invoke-static {v7, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    :cond_9
    iput-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    .line 170
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "elStackSize":I
    .end local v3    # "newSize":I
    .end local v4    # "needsCopying":Z
    .end local v5    # "iarr":[I
    .end local v6    # "carr":[[C
    :cond_a
    return-void
.end method

.method protected ensureEntityCapacity()V
    .locals 10

    .line 298
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 299
    .local v0, "entitySize":I
    :goto_0
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    if-lt v2, v0, :cond_4

    .line 300
    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 304
    .local v3, "newSize":I
    :goto_1
    new-array v4, v3, [Ljava/lang/String;

    .line 305
    .local v4, "newEntityName":[Ljava/lang/String;
    new-array v5, v3, [[C

    .line 306
    .local v5, "newEntityNameBuf":[[C
    new-array v6, v3, [Ljava/lang/String;

    .line 307
    .local v6, "newEntityReplacement":[Ljava/lang/String;
    new-array v7, v3, [[C

    .line 308
    .local v7, "newEntityReplacementBuf":[[C
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 309
    invoke-static {v8, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    :cond_2
    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    .line 315
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    .line 316
    iput-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    .line 317
    iput-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    .line 319
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v2, :cond_4

    .line 320
    new-array v2, v3, [I

    .line 321
    .local v2, "newEntityNameHash":[I
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    if-eqz v8, :cond_3

    .line 322
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v8, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    :cond_3
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    .line 327
    .end local v0    # "entitySize":I
    .end local v2    # "newEntityNameHash":[I
    .end local v3    # "newSize":I
    .end local v4    # "newEntityName":[Ljava/lang/String;
    .end local v5    # "newEntityNameBuf":[[C
    .end local v6    # "newEntityReplacement":[Ljava/lang/String;
    .end local v7    # "newEntityReplacementBuf":[[C
    :cond_4
    return-void
.end method

.method protected ensureNamespacesCapacity(I)V
    .locals 8
    .param p1, "size"    # I

    .line 234
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 235
    .local v2, "namespaceSize":I
    :goto_0
    if-lt p1, v2, :cond_4

    .line 236
    const/4 v3, 0x7

    if-le p1, v3, :cond_1

    mul-int/lit8 v3, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 240
    .local v3, "newSize":I
    :goto_1
    new-array v4, v3, [Ljava/lang/String;

    .line 241
    .local v4, "newNamespacePrefix":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 242
    .local v5, "newNamespaceUri":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 243
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    :cond_2
    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 249
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 252
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 253
    new-array v0, v3, [I

    .line 254
    .local v0, "newNamespacePrefixHash":[I
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    if-eqz v6, :cond_3

    .line 255
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-static {v6, v1, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :cond_3
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    .line 263
    .end local v0    # "newNamespacePrefixHash":[I
    .end local v2    # "namespaceSize":I
    .end local v3    # "newSize":I
    .end local v4    # "newNamespacePrefix":[Ljava/lang/String;
    .end local v5    # "newNamespaceUri":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected ensurePC(I)V
    .locals 5
    .param p1, "end"    # I

    .line 2949
    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x4000

    .line 2950
    .local v0, "newSize":I
    :goto_0
    new-array v1, v0, [C

    .line 2952
    .local v1, "newPC":[C
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2953
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    .line 2955
    .end local v0    # "newSize":I
    .end local v1    # "newPC":[C
    return-void
.end method

.method protected fillBuf()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2818
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_12

    .line 2822
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_7

    .line 2825
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    if-le v4, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2826
    .local v1, "compact":Z
    :goto_0
    const/4 v5, 0x0

    .line 2827
    .local v5, "expand":Z
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    if-eqz v6, :cond_1

    .line 2828
    const/4 v1, 0x0

    .line 2829
    const/4 v5, 0x1

    goto :goto_1

    .line 2830
    :cond_1
    if-nez v1, :cond_3

    .line 2832
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v6, v6

    div-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_2

    .line 2834
    const/4 v5, 0x1

    goto :goto_1

    .line 2837
    :cond_2
    const/4 v1, 0x1

    .line 2842
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2845
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v0, v4

    invoke-static {v6, v4, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2846
    goto :goto_2

    .line 2853
    :cond_4
    if-eqz v5, :cond_6

    .line 2854
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v7, v6

    mul-int/lit8 v7, v7, 0x2

    .line 2855
    .local v7, "newSize":I
    new-array v8, v7, [C

    .line 2857
    .local v8, "newBuf":[C
    sub-int/2addr v0, v4

    invoke-static {v6, v4, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2858
    iput-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    .line 2859
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    if-lez v0, :cond_5

    .line 2860
    array-length v4, v8

    mul-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    .end local v7    # "newSize":I
    .end local v8    # "newBuf":[C
    :cond_5
    nop

    .line 2866
    :goto_2
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    .line 2867
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 2868
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2869
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2870
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    .line 2871
    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    goto :goto_3

    .line 2864
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "internal error in fillBuffer()"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2878
    .end local v1    # "compact":Z
    .end local v5    # "expand":Z
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v1, v0

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    sub-int/2addr v1, v4

    const/16 v5, 0x2000

    if-le v1, v5, :cond_8

    goto :goto_4

    :cond_8
    array-length v1, v0

    sub-int v5, v1, v4

    :goto_4
    move v1, v5

    .line 2879
    .local v1, "len":I
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    invoke-virtual {v5, v0, v4, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 2880
    .local v0, "ret":I
    if-lez v0, :cond_9

    .line 2881
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    .line 2886
    return-void

    .line 2888
    :cond_9
    const/4 v4, -0x1

    if-ne v0, v4, :cond_11

    .line 2889
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    if-nez v4, :cond_b

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    if-eqz v4, :cond_a

    goto :goto_5

    .line 2890
    :cond_a
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "input contained no data"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2893
    :cond_b
    :goto_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2894
    .local v4, "expectedTagStack":Ljava/lang/StringBuffer;
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-lez v5, :cond_10

    .line 2897
    const-string v5, " - expected end tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2898
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-le v5, v2, :cond_c

    .line 2899
    const-string v2, "s"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2901
    :cond_c
    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2902
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .local v2, "i":I
    :goto_6
    if-gtz v2, :cond_f

    .line 2907
    const-string v5, " to close"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2908
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .local v5, "i":I
    :goto_7
    if-lez v5, :cond_e

    .line 2910
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-eq v5, v6, :cond_d

    .line 2911
    const-string v6, " and"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2913
    :cond_d
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    aget-object v7, v7, v5

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v8, v8, v5

    invoke-direct {v6, v7, v3, v8}, Ljava/lang/String;-><init>([CII)V

    .line 2914
    .local v6, "tagName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " start tag <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2915
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " from line "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2908
    .end local v6    # "tagName":Ljava/lang/String;
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 2917
    :cond_e
    const-string v3, ", parser stopped on"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 2904
    .end local v5    # "i":I
    :cond_f
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v7, v7, v2

    invoke-direct {v5, v6, v3, v7}, Ljava/lang/String;-><init>([CII)V

    .line 2905
    .local v5, "tagName":Ljava/lang/String;
    const-string v6, "</"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2902
    .end local v5    # "tagName":Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 2919
    .end local v2    # "i":I
    :cond_10
    :goto_8
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "no more data available"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2923
    .end local v4    # "expectedTagStack":Ljava/lang/StringBuffer;
    :cond_11
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "error reading input, returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2818
    .end local v0    # "ret":I
    .end local v1    # "len":I
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "reader must be set before parsing is started"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeCount()I
    .locals 2

    .line 855
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 856
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 871
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 873
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 875
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 873
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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

    .line 871
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "only START_TAG can have attributes"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 861
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 863
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 864
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 866
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 864
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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

    .line 861
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "only START_TAG can have attributes"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 880
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 882
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 883
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 885
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 883
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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

    .line 880
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "only START_TAG can have attributes"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 889
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 891
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 893
    const-string v0, "CDATA"

    return-object v0

    .line 891
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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

    .line 889
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "only START_TAG can have attributes"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 906
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 908
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 910
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 908
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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

    .line 906
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "only START_TAG can have attributes"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 916
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 918
    if-eqz p2, :cond_9

    .line 922
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_4

    .line 923
    if-nez p1, :cond_0

    .line 924
    const-string p1, ""

    move-object v0, p1

    goto :goto_0

    .line 923
    :cond_0
    move-object v0, p1

    .line 927
    .end local p1    # "namespace":Ljava/lang/String;
    .local v0, "namespace":Ljava/lang/String;
    :goto_0
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_1
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt p1, v1, :cond_1

    .end local p1    # "i":I
    goto :goto_3

    .line 928
    .restart local p1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eq v0, v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 934
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v1, v1, p1

    return-object v1

    .line 927
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 938
    .end local v0    # "namespace":Ljava/lang/String;
    .local p1, "namespace":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 939
    const/4 p1, 0x0

    .line 941
    :cond_5
    if-nez p1, :cond_8

    .line 943
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt v0, v1, :cond_6

    move-object v0, p1

    .line 950
    .end local p1    # "namespace":Ljava/lang/String;
    .local v0, "namespace":Ljava/lang/String;
    :goto_3
    const/4 p1, 0x0

    return-object p1

    .line 944
    .local v0, "i":I
    .restart local p1    # "namespace":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 946
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 943
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 941
    .end local v0    # "i":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when namespaces processing is disabled attribute namespace must be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attribute name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "only START_TAG can have attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnNumber()I
    .locals 1

    .line 695
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .line 641
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 957
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 472
    if-eqz p1, :cond_4

    .line 473
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    return v0

    .line 477
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 478
    return v1

    .line 479
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    return v1

    .line 483
    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    return v0

    .line 487
    :cond_3
    return v1

    .line 472
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature name should not be nulll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 690
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 816
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 818
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    .line 819
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 820
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    .line 821
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 822
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 823
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 825
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    return-object v0

    .line 827
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 3

    .line 789
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const-string v1, ""

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 791
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v1, v0, v1

    :cond_0
    return-object v1

    .line 792
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 793
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v1, v0, v1

    :cond_2
    return-object v1

    .line 795
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 616
    if-eqz p1, :cond_4

    .line 617
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_2

    .line 622
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    return-object v1

    .line 624
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    const-string v1, "http://www.w3.org/2000/xmlns/"

    return-object v1

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 618
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 619
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 617
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 628
    .end local v0    # "i":I
    :cond_4
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-gez v0, :cond_5

    .line 635
    .end local v0    # "i":I
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 629
    .restart local v0    # "i":I
    :cond_5
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_6

    .line 630
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 628
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getNamespaceCount(I)I
    .locals 3
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 576
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-gt p1, v0, :cond_1

    .line 583
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    aget v0, v0, p1

    return v0

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "napespace count mayt be for depth 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

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

    .line 577
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 592
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    .line 593
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 595
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " exceeded number of available namespaces "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 604
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    .line 605
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 607
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " exceedded number of available namespaces "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 6

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, "fragment":Ljava/lang/String;
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    const-string v3, "..."

    if-gt v1, v2, :cond_2

    .line 673
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-static {v4, v5, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->findFragment(I[CII)I

    move-result v1

    .line 675
    .local v1, "start":I
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    if-ge v1, v2, :cond_0

    .line 676
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v2, v1

    invoke-direct {v4, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v4

    .line 678
    :cond_0
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

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

    .line 683
    .end local v1    # "start":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " seen "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .line 833
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 835
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    .line 836
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 837
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    .line 839
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 500
    if-eqz p1, :cond_3

    .line 501
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    return-object v0

    .line 503
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    return-object v0

    .line 505
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    return-object v0

    .line 508
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 500
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "property name should not be nulll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 723
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 730
    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 731
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    return-object v0

    .line 733
    :cond_1
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 734
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 737
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    goto :goto_1

    .line 735
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 740
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    return-object v0

    .line 728
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 4
    .param p1, "holderForStartAndLength"    # [I

    .line 745
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 746
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 747
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    aput v0, p1, v1

    .line 748
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v2

    .line 749
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    return-object v0

    .line 751
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aput v0, p1, v1

    .line 752
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v2

    .line 753
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    return-object v0

    .line 756
    :cond_1
    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/16 v3, 0x9

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    const/16 v3, 0x8

    if-eq v0, v3, :cond_5

    const/4 v3, 0x7

    if-eq v0, v3, :cond_5

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 768
    :cond_2
    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 774
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unknown text eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_4
    :goto_0
    const/4 v0, -0x1

    aput v0, p1, v2

    aput v0, p1, v1

    .line 772
    const/4 v0, 0x0

    return-object v0

    .line 765
    :cond_5
    :goto_1
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aput v0, p1, v1

    .line 766
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v2

    .line 767
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 897
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 899
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 901
    const/4 v0, 0x0

    return v0

    .line 899
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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

    .line 897
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "only START_TAG can have attributes"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 848
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 850
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    return v0

    .line 848
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "parser must be on START_TAG to check for empty element"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected isNameChar(C)Z
    .locals 2
    .param p1, "ch"    # C

    .line 3070
    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    sget-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

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

    .line 3036
    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    sget-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

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

    .line 3092
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

.method public isWhitespace()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 701
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 716
    return v1

    .line 718
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no content available to check for whitespaces"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 703
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    if-lt v0, v3, :cond_3

    .line 707
    return v1

    .line 705
    :cond_3
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 703
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    .end local v0    # "i":I
    :cond_5
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .restart local v0    # "i":I
    :goto_2
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    if-lt v0, v3, :cond_6

    .line 713
    return v1

    .line 711
    :cond_6
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    .line 709
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected joinPC()V
    .locals 7

    .line 2960
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v0, v1

    .line 2961
    .local v0, "len":I
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 2962
    .local v1, "newEnd":I
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v3, v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2964
    :cond_0
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-static {v3, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2965
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2966
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2968
    .end local v0    # "len":I
    .end local v1    # "newEnd":I
    return-void
.end method

.method protected lookuEntityReplacement(I)[C
    .locals 6
    .param p1, "entitNameLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2207
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_5

    .line 2208
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v0

    .line 2210
    .local v0, "hash":I
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .end local v0    # "hash":I
    .end local v1    # "i":I
    goto :goto_4

    .line 2212
    .restart local v0    # "hash":I
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    aget-object v3, v2, v1

    array-length v3, v3

    if-ne p1, v3, :cond_4

    .line 2213
    aget-object v2, v2, v1

    .line 2214
    .local v2, "entityBuf":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_2

    .line 2218
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v4, v4, v1

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2219
    :cond_1
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    aget-object v4, v4, v1

    return-object v4

    .line 2216
    :cond_2
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    aget-char v5, v2, v3

    if-eq v4, v5, :cond_3

    goto :goto_2

    .line 2214
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2210
    .end local v2    # "entityBuf":[C
    .end local v3    # "j":I
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2223
    .end local v0    # "hash":I
    .end local v1    # "i":I
    :cond_5
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 2224
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3
    if-gez v0, :cond_6

    .line 2233
    .end local v0    # "i":I
    :goto_4
    const/4 v0, 0x0

    return-object v0

    .line 2227
    .restart local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-ne v1, v2, :cond_8

    .line 2228
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2229
    :cond_7
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    aget-object v1, v1, v0

    return-object v1

    .line 2224
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method protected more()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2928
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->fillBuf()V

    .line 2929
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    aget-char v0, v0, v1

    .line 2931
    .local v0, "ch":C
    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    goto :goto_0

    .line 2932
    :cond_1
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2934
    :goto_0
    return v0
.end method

.method protected newString([CII)Ljava/lang/String;
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 73
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
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    .line 1061
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected nextImpl()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1075
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 1076
    const/4 v1, 0x0

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 1077
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1078
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    .line 1079
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1080
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 1081
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 1082
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    aget v2, v4, v2

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 1084
    :cond_0
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    if-eqz v2, :cond_1

    .line 1085
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 1086
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 1087
    const/4 v0, 0x3

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1091
    :cond_1
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-lez v2, :cond_2e

    .line 1093
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    if-eqz v2, :cond_2

    .line 1094
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 1095
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1097
    :cond_2
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    if-eqz v2, :cond_3

    .line 1098
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 1099
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1105
    :cond_3
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    if-eqz v2, :cond_4

    .line 1106
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1107
    const/16 v2, 0x3c

    .local v2, "ch":C
    goto :goto_0

    .line 1105
    .end local v2    # "ch":C
    :cond_4
    move v2, v1

    .line 1108
    .restart local v2    # "ch":C
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    if-eqz v4, :cond_5

    .line 1109
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    .line 1110
    const/16 v2, 0x26

    goto :goto_0

    .line 1112
    :cond_5
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 1114
    :goto_0
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1117
    const/4 v4, 0x0

    .line 1120
    .local v4, "hadCharData":Z
    const/4 v5, 0x0

    .line 1123
    .local v5, "needsMerging":Z
    :goto_1
    nop

    .line 1125
    :goto_2
    const/16 v6, 0x3c

    const/4 v7, 0x4

    if-ne v2, v6, :cond_15

    .line 1126
    if-eqz v4, :cond_6

    .line 1128
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v6, :cond_6

    .line 1129
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1130
    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v7

    .line 1133
    :cond_6
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 1134
    const/16 v6, 0x2f

    if-ne v2, v6, :cond_8

    .line 1135
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-nez v0, :cond_7

    if-eqz v4, :cond_7

    .line 1136
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 1138
    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v7

    .line 1140
    :cond_7
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1141
    :cond_8
    const/16 v6, 0x21

    const-string v8, "unexpected character in markup "

    if-ne v2, v6, :cond_f

    .line 1142
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 1143
    const/16 v6, 0x2d

    if-ne v2, v6, :cond_b

    .line 1145
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 1146
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v6, :cond_9

    const/16 v0, 0x9

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1147
    :cond_9
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v6, :cond_a

    if-eqz v4, :cond_a

    .line 1148
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 1150
    :cond_a
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    goto/16 :goto_5

    .line 1152
    :cond_b
    const/16 v6, 0x5b

    if-ne v2, v6, :cond_e

    .line 1157
    invoke-virtual {p0, v4}, Lorg/xmlpull/mxp1/MXParser;->parseCDSect(Z)V

    .line 1158
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v6, :cond_c

    const/4 v0, 0x5

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1159
    :cond_c
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1160
    .local v6, "cdStart":I
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1161
    .local v7, "cdEnd":I
    sub-int v8, v7, v6

    .line 1164
    .local v8, "cdLen":I
    if-lez v8, :cond_d

    .line 1165
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v9, :cond_d

    .line 1166
    const/4 v4, 0x1

    .line 1167
    const/4 v5, 0x1

    .end local v6    # "cdStart":I
    .end local v7    # "cdEnd":I
    .end local v8    # "cdLen":I
    :cond_d
    goto/16 :goto_5

    .line 1209
    :cond_e
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1212
    :cond_f
    const/16 v6, 0x3f

    if-ne v2, v6, :cond_12

    .line 1213
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    .line 1214
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v6, :cond_10

    const/16 v0, 0x8

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1215
    :cond_10
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v6, :cond_11

    if-eqz v4, :cond_11

    .line 1216
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 1218
    :cond_11
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    goto/16 :goto_5

    .line 1221
    :cond_12
    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1222
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-nez v0, :cond_13

    if-eqz v4, :cond_13

    .line 1223
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 1225
    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v7

    .line 1227
    :cond_13
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1229
    :cond_14
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1234
    :cond_15
    const/16 v8, 0x26

    if-ne v2, v8, :cond_1e

    .line 1237
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v6, :cond_16

    if-eqz v4, :cond_16

    .line 1238
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    .line 1239
    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v7

    .line 1241
    :cond_16
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int v9, v6, v7

    .line 1242
    .local v9, "oldStart":I
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    add-int/2addr v7, v6

    .line 1243
    .local v7, "oldEnd":I
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEntityRef()[C

    move-result-object v10

    .line 1244
    .local v10, "resolvedEntity":[C
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v6, :cond_17

    const/4 v0, 0x6

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1246
    :cond_17
    if-nez v10, :cond_19

    .line 1247
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 1248
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v6, v3

    invoke-virtual {p0, v1, v3, v6}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 1250
    :cond_18
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "could not resolve entity named \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1256
    :cond_19
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v8, v9, v6

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1257
    sub-int v6, v7, v6

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1258
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v6, :cond_1b

    .line 1259
    if-eqz v4, :cond_1a

    .line 1260
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 1261
    const/4 v5, 0x0

    move v11, v5

    goto :goto_3

    .line 1263
    :cond_1a
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1264
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1269
    :cond_1b
    move v11, v5

    .end local v5    # "needsMerging":Z
    .local v11, "needsMerging":Z
    :goto_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v6, v10

    if-lt v5, v6, :cond_1c

    move v5, v11

    .line 1345
    .end local v7    # "oldEnd":I
    .end local v9    # "oldStart":I
    .end local v10    # "resolvedEntity":[C
    .end local v11    # "needsMerging":Z
    .local v5, "needsMerging":Z
    :goto_5
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    goto/16 :goto_1

    .line 1271
    .local v5, "i":I
    .restart local v7    # "oldEnd":I
    .restart local v9    # "oldStart":I
    .restart local v10    # "resolvedEntity":[C
    .restart local v11    # "needsMerging":Z
    :cond_1c
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v6, v8, :cond_1d

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1272
    :cond_1d
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v8, 0x1

    iput v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aget-char v12, v10, v5

    aput-char v12, v6, v8

    .line 1269
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1278
    .end local v7    # "oldEnd":I
    .end local v9    # "oldStart":I
    .end local v10    # "resolvedEntity":[C
    .end local v11    # "needsMerging":Z
    .local v5, "needsMerging":Z
    :cond_1e
    if-eqz v5, :cond_1f

    .line 1280
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    .line 1282
    const/4 v5, 0x0

    .line 1293
    :cond_1f
    const/4 v4, 0x1

    .line 1295
    const/4 v7, 0x0

    .line 1296
    .local v7, "normalizedCR":Z
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v9, :cond_21

    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v9, :cond_20

    goto :goto_6

    :cond_20
    move v9, v1

    goto :goto_7

    :cond_21
    :goto_6
    move v9, v3

    .line 1308
    .local v9, "normalizeInput":Z
    :cond_22
    :goto_7
    if-eqz v9, :cond_2c

    .line 1310
    const/16 v10, 0xd

    const/16 v11, 0xa

    if-ne v2, v10, :cond_26

    .line 1311
    const/4 v7, 0x1

    .line 1312
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v10, v3

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1314
    iget-boolean v12, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v12, :cond_24

    .line 1315
    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v10, v12, :cond_23

    .line 1316
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_8

    .line 1318
    :cond_23
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1319
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1323
    :cond_24
    :goto_8
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v12, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v12, v12

    if-lt v10, v12, :cond_25

    invoke-virtual {p0, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1324
    :cond_25
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v11, v10, v12

    goto :goto_9

    .line 1325
    :cond_26
    if-ne v2, v11, :cond_29

    .line 1327
    if-nez v7, :cond_28

    iget-boolean v10, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v10, :cond_28

    .line 1328
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v12, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v12, v12

    if-lt v10, v12, :cond_27

    invoke-virtual {p0, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1329
    :cond_27
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v11, v10, v12

    .line 1331
    :cond_28
    const/4 v7, 0x0

    goto :goto_9

    .line 1333
    :cond_29
    iget-boolean v10, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v10, :cond_2b

    .line 1334
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_2a

    invoke-virtual {p0, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1335
    :cond_2a
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v2, v10, v11

    .line 1337
    :cond_2b
    const/4 v7, 0x0

    .line 1340
    :cond_2c
    :goto_9
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 1341
    if-eq v2, v6, :cond_2d

    if-ne v2, v8, :cond_22

    .line 1342
    :cond_2d
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1343
    goto/16 :goto_2

    .line 1348
    .end local v2    # "ch":C
    .end local v4    # "hadCharData":Z
    .end local v5    # "needsMerging":Z
    .end local v7    # "normalizedCR":Z
    .end local v9    # "normalizeInput":Z
    :cond_2e
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    if-eqz v0, :cond_2f

    .line 1349
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEpilog()I

    move-result v0

    return v0

    .line 1351
    :cond_2f
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseProlog()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1046
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    .line 1047
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    .line 1050
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1051
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected START_TAG or END_TAG not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1054
    :cond_2
    :goto_0
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1022
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1026
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    move-result v0

    .line 1027
    .local v0, "eventType":I
    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    .line 1028
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 1029
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    move-result v0

    .line 1030
    if-ne v0, v3, :cond_0

    .line 1035
    return-object v2

    .line 1031
    :cond_0
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "TEXT must be immediately followed by END_TAG and not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 1036
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    if-ne v0, v3, :cond_2

    .line 1037
    const-string v1, ""

    return-object v1

    .line 1039
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "parser must be on START_TAG or TEXT to read text"

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1023
    .end local v0    # "eventType":I
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "parser must be on START_TAG to read next text"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    .line 1068
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected parseAttribute()C
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1849
    move-object/from16 v0, p0

    iget v1, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v1, v2

    .line 1850
    .local v1, "prevPosStart":I
    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v4, v3, -0x1

    add-int/2addr v4, v2

    .line 1851
    .local v4, "nameStart":I
    const/4 v2, -0x1

    .line 1852
    .local v2, "colonPos":I
    iget-object v5, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    aget-char v3, v5, v3

    .line 1853
    .local v3, "ch":C
    const/16 v5, 0x3a

    const/4 v7, 0x0

    if-ne v3, v5, :cond_1

    iget-boolean v8, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "when namespaces processing enabled colon can not be at attribute name start"

    invoke-direct {v5, v6, v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 1858
    :cond_1
    :goto_0
    iget-boolean v8, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v8, :cond_2

    const/16 v8, 0x78

    if-ne v3, v8, :cond_2

    move v8, v6

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 1859
    .local v8, "startsWithXmlns":Z
    :goto_1
    const/4 v10, 0x0

    .line 1861
    .local v10, "xmlnsPos":I
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v3

    .line 1862
    nop

    :goto_2
    invoke-virtual {v0, v3}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v11

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, -0x1

    if-nez v11, :cond_2e

    .line 1887
    iget v5, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    invoke-virtual {v0, v5}, Lorg/xmlpull/mxp1/MXParser;->ensureAttributesCapacity(I)V

    .line 1890
    const/4 v5, 0x0

    .line 1891
    .local v5, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1893
    .local v11, "prefix":Ljava/lang/String;
    iget-boolean v15, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v15, :cond_7

    .line 1894
    if-ge v10, v12, :cond_3

    const/4 v8, 0x0

    .line 1895
    :cond_3
    if-eqz v8, :cond_5

    .line 1896
    if-eq v2, v14, :cond_8

    .line 1898
    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v12, v13

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v15, v2, v13

    sub-int/2addr v12, v15

    .line 1899
    .local v12, "nameLen":I
    if-eqz v12, :cond_4

    .line 1904
    iget-object v15, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v13, v2, v13

    add-int/2addr v13, v6

    invoke-virtual {v0, v15, v13, v12}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v5

    .end local v12    # "nameLen":I
    goto/16 :goto_4

    .line 1900
    .restart local v12    # "nameLen":I
    :cond_4
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "namespace prefix is required after xmlns:  when namespaces are enabled"

    invoke-direct {v6, v9, v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6

    .line 1909
    .end local v12    # "nameLen":I
    :cond_5
    if-eq v2, v14, :cond_6

    .line 1910
    sub-int v12, v2, v4

    .line 1911
    .local v12, "prefixLen":I
    iget-object v15, v0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v14, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    iget-object v9, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v7, v4, v7

    invoke-virtual {v0, v9, v7, v12}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v14

    .line 1914
    .end local v11    # "prefix":Ljava/lang/String;
    .local v7, "prefix":Ljava/lang/String;
    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v9, v13

    iget v11, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v13, v2, v11

    sub-int/2addr v9, v13

    .line 1915
    .local v9, "nameLen":I
    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    iget v14, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    iget-object v15, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v11, v2, v11

    add-int/2addr v11, v6

    invoke-virtual {v0, v15, v11, v9}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v14

    move-object v5, v11

    move-object v11, v7

    .end local v9    # "nameLen":I
    .end local v12    # "prefixLen":I
    goto :goto_3

    .line 1921
    .end local v7    # "prefix":Ljava/lang/String;
    .restart local v11    # "prefix":Ljava/lang/String;
    :cond_6
    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    const/4 v12, 0x0

    aput-object v12, v7, v9

    move-object v7, v12

    .line 1922
    .end local v11    # "prefix":Ljava/lang/String;
    .restart local v7    # "prefix":Ljava/lang/String;
    iget-object v11, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v14, v4, v13

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v15, v6

    sub-int v13, v4, v13

    sub-int/2addr v15, v13

    invoke-virtual {v0, v12, v14, v15}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    move-object v5, v12

    move-object v11, v7

    .line 1926
    .end local v7    # "prefix":Ljava/lang/String;
    .restart local v11    # "prefix":Ljava/lang/String;
    :goto_3
    iget-boolean v7, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v7, :cond_8

    .line 1927
    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v7, v9

    goto :goto_4

    .line 1933
    :cond_7
    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v14, v4, v13

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v15, v6

    sub-int v13, v4, v13

    sub-int/2addr v15, v13

    invoke-virtual {v0, v12, v14, v15}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v9

    move-object v5, v12

    .line 1937
    iget-boolean v7, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v7, :cond_8

    .line 1938
    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v7, v9

    .line 1943
    :cond_8
    :goto_4
    invoke-virtual {v0, v3}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 1944
    const/16 v7, 0x3d

    if-ne v3, v7, :cond_2c

    .line 1946
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v3

    .line 1947
    nop

    :goto_5
    invoke-virtual {v0, v3}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 1951
    move v7, v3

    .line 1952
    .local v7, "delimit":C
    const/16 v9, 0x22

    if-eq v7, v9, :cond_a

    const/16 v9, 0x27

    if-ne v7, v9, :cond_9

    goto :goto_6

    :cond_9
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "attribute value must start with quotation or apostrophe not "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v0, v7}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-direct {v6, v9, v0, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6

    .line 1960
    :cond_a
    :goto_6
    const/4 v9, 0x0

    .line 1961
    .local v9, "normalizedCR":Z
    const/4 v12, 0x0

    iput-boolean v12, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1962
    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1963
    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v12, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1965
    nop

    .line 1966
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v3

    .line 1967
    const-string v12, "\'"

    if-ne v3, v7, :cond_17

    .line 1968
    nop

    .line 2033
    iget-boolean v13, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v13, :cond_15

    if-eqz v8, :cond_15

    .line 2034
    const/4 v13, 0x0

    .line 2035
    .local v13, "ns":Ljava/lang/String;
    iget-boolean v14, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v14, :cond_b

    .line 2036
    iget-object v14, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    move/from16 v17, v4

    .end local v4    # "nameStart":I
    .local v17, "nameStart":I
    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v15

    invoke-virtual {v0, v14, v15, v4}, Lorg/xmlpull/mxp1/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v4

    .end local v13    # "ns":Ljava/lang/String;
    .local v4, "ns":Ljava/lang/String;
    goto :goto_8

    .line 2038
    .end local v17    # "nameStart":I
    .local v4, "nameStart":I
    .restart local v13    # "ns":Ljava/lang/String;
    :cond_b
    move/from16 v17, v4

    .end local v4    # "nameStart":I
    .restart local v17    # "nameStart":I
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v14, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v15, v14

    invoke-virtual {v0, v4, v14, v15}, Lorg/xmlpull/mxp1/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v4

    .line 2040
    .end local v13    # "ns":Ljava/lang/String;
    .local v4, "ns":Ljava/lang/String;
    :goto_8
    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {v0, v13}, Lorg/xmlpull/mxp1/MXParser;->ensureNamespacesCapacity(I)V

    .line 2041
    const/4 v13, -0x1

    .line 2042
    .local v13, "prefixHash":I
    const/4 v14, -0x1

    if-eq v2, v14, :cond_d

    .line 2043
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_c

    .line 2048
    iget-object v14, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput-object v5, v14, v15

    .line 2049
    iget-boolean v14, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v14, :cond_e

    .line 2050
    iget-object v14, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    aput v16, v14, v15

    move/from16 v13, v16

    goto :goto_9

    .line 2044
    :cond_c
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v12, "non-default namespace can not be declared to be empty string"

    const/4 v14, 0x0

    invoke-direct {v6, v12, v0, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6

    .line 2054
    :cond_d
    const/4 v14, 0x0

    iget-object v15, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput-object v14, v15, v6

    .line 2055
    iget-boolean v14, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v14, :cond_e

    .line 2056
    iget-object v14, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    const/4 v15, -0x1

    aput v15, v14, v6

    move v13, v15

    .line 2059
    :cond_e
    :goto_9
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v14, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput-object v4, v6, v14

    .line 2062
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget v6, v6, v15

    .line 2063
    .local v6, "startNs":I
    add-int/lit8 v14, v14, -0x1

    .local v14, "i":I
    :goto_a
    if-ge v14, v6, :cond_f

    .line 2077
    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    move-object/from16 v18, v5

    .end local v4    # "ns":Ljava/lang/String;
    .end local v6    # "startNs":I
    .end local v13    # "prefixHash":I
    .end local v14    # "i":I
    goto/16 :goto_10

    .line 2065
    .restart local v4    # "ns":Ljava/lang/String;
    .restart local v6    # "startNs":I
    .restart local v13    # "prefixHash":I
    .restart local v14    # "i":I
    :cond_f
    iget-boolean v15, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v15, :cond_11

    if-nez v5, :cond_10

    goto :goto_b

    :cond_10
    move-object/from16 v16, v4

    goto :goto_c

    :cond_11
    :goto_b
    move-object/from16 v16, v4

    .end local v4    # "ns":Ljava/lang/String;
    .local v16, "ns":Ljava/lang/String;
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v4, v4, v14

    if-eq v4, v5, :cond_13

    :goto_c
    if-nez v15, :cond_12

    if-eqz v5, :cond_12

    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    aget v4, v4, v14

    if-ne v4, v13, :cond_12

    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v4, v4, v14

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_d

    .line 2063
    :cond_12
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v4, v16

    const/16 v16, 0x1

    goto :goto_a

    .line 2071
    :cond_13
    :goto_d
    if-nez v5, :cond_14

    const-string v4, "default"

    goto :goto_e

    :cond_14
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2072
    .local v4, "s":Ljava/lang/String;
    :goto_e
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v18, v5

    .end local v5    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    const-string v5, "duplicated namespace declaration for "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v15, " prefix"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    invoke-direct {v12, v5, v0, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v12

    .line 2033
    .end local v6    # "startNs":I
    .end local v13    # "prefixHash":I
    .end local v14    # "i":I
    .end local v16    # "ns":Ljava/lang/String;
    .end local v17    # "nameStart":I
    .end local v18    # "name":Ljava/lang/String;
    .local v4, "nameStart":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_15
    move/from16 v17, v4

    move-object/from16 v18, v5

    .line 2080
    .end local v4    # "nameStart":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v17    # "nameStart":I
    .restart local v18    # "name":Ljava/lang/String;
    iget-boolean v4, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v4, :cond_16

    .line 2081
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    iget v5, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    new-instance v6, Ljava/lang/String;

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v14, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    sub-int/2addr v14, v13

    invoke-direct {v6, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    aput-object v6, v4, v5

    goto :goto_f

    .line 2084
    :cond_16
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    iget v5, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    new-instance v6, Ljava/lang/String;

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iget v14, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v14, v13

    invoke-direct {v6, v12, v13, v14}, Ljava/lang/String;-><init>([CII)V

    aput-object v6, v4, v5

    .line 2087
    :goto_f
    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    .line 2089
    :goto_10
    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v4, v1, v4

    iput v4, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2090
    return v3

    .line 1969
    .end local v17    # "nameStart":I
    .end local v18    # "name":Ljava/lang/String;
    .restart local v4    # "nameStart":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_17
    move/from16 v17, v4

    move-object/from16 v18, v5

    .end local v4    # "nameStart":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v17    # "nameStart":I
    .restart local v18    # "name":Ljava/lang/String;
    const/16 v4, 0x3c

    if-eq v3, v4, :cond_2a

    .line 1972
    const/16 v4, 0x26

    const/16 v5, 0xd

    if-ne v3, v4, :cond_1f

    .line 1974
    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    iput v4, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1975
    iget-boolean v6, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v6, :cond_1a

    .line 1976
    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v4, v6, :cond_18

    const/4 v4, 0x1

    goto :goto_11

    :cond_18
    const/4 v4, 0x0

    .line 1977
    .local v4, "hadCharData":Z
    :goto_11
    if-eqz v4, :cond_19

    .line 1979
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_12

    .line 1981
    :cond_19
    const/4 v6, 0x1

    iput-boolean v6, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1982
    const/4 v6, 0x0

    iput v6, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v6, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1987
    .end local v4    # "hadCharData":Z
    :cond_1a
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseEntityRef()[C

    move-result-object v4

    .line 1989
    .local v4, "resolvedEntity":[C
    if-nez v4, :cond_1c

    .line 1990
    iget-object v5, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v5, :cond_1b

    .line 1991
    iget-object v5, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v13, v6

    invoke-virtual {v0, v5, v6, v13}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 1993
    :cond_1b
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "could not resolve entity named \'"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-direct {v5, v6, v0, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 1998
    :cond_1c
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    array-length v12, v4

    if-lt v6, v12, :cond_1d

    const/4 v4, 0x0

    .end local v4    # "resolvedEntity":[C
    .end local v6    # "i":I
    goto/16 :goto_16

    .line 2000
    .restart local v4    # "resolvedEntity":[C
    .restart local v6    # "i":I
    :cond_1d
    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v13, v13

    if-lt v12, v13, :cond_1e

    invoke-virtual {v0, v12}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2001
    :cond_1e
    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aget-char v14, v4, v6

    aput-char v14, v12, v13

    .line 1998
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 2003
    .end local v4    # "resolvedEntity":[C
    .end local v6    # "i":I
    :cond_1f
    const/16 v4, 0x9

    const/16 v6, 0xa

    if-eq v3, v4, :cond_23

    if-eq v3, v6, :cond_23

    if-ne v3, v5, :cond_20

    goto :goto_14

    .line 2024
    :cond_20
    iget-boolean v4, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v4, :cond_22

    .line 2025
    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v6, v6

    if-lt v4, v6, :cond_21

    invoke-virtual {v0, v4}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2026
    :cond_21
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v6, 0x1

    iput v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v3, v4, v6

    const/4 v4, 0x0

    goto :goto_16

    .line 2024
    :cond_22
    const/4 v4, 0x0

    goto :goto_16

    .line 2008
    :cond_23
    :goto_14
    iget-boolean v4, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v4, :cond_25

    .line 2009
    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    const/4 v12, 0x1

    sub-int/2addr v4, v12

    iput v4, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2010
    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v4, v13, :cond_24

    .line 2011
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    const/4 v4, 0x0

    goto :goto_15

    .line 2013
    :cond_24
    iput-boolean v12, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2014
    const/4 v4, 0x0

    iput v4, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iput v4, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    goto :goto_15

    .line 2008
    :cond_25
    const/4 v4, 0x0

    .line 2018
    :goto_15
    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v13, v13

    if-lt v12, v13, :cond_26

    invoke-virtual {v0, v12}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2019
    :cond_26
    if-ne v3, v6, :cond_27

    if-nez v9, :cond_28

    .line 2020
    :cond_27
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v13, 0x20

    aput-char v13, v6, v12

    .line 2029
    :cond_28
    :goto_16
    if-ne v3, v5, :cond_29

    const/4 v12, 0x1

    goto :goto_17

    :cond_29
    move v12, v4

    :goto_17
    move v9, v12

    .line 1965
    move/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1970
    :cond_2a
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "markup not allowed inside attribute value - illegal < "

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 1947
    .end local v7    # "delimit":C
    .end local v9    # "normalizedCR":Z
    .end local v17    # "nameStart":I
    .end local v18    # "name":Ljava/lang/String;
    .local v4, "nameStart":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_2b
    move/from16 v17, v4

    move-object/from16 v18, v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    .end local v4    # "nameStart":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v17    # "nameStart":I
    .restart local v18    # "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v3

    move/from16 v4, v17

    const/4 v6, 0x1

    goto/16 :goto_5

    .line 1944
    .end local v17    # "nameStart":I
    .end local v18    # "name":Ljava/lang/String;
    .restart local v4    # "nameStart":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_2c
    move/from16 v17, v4

    move-object/from16 v18, v5

    const/4 v6, 0x0

    .end local v4    # "nameStart":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v17    # "nameStart":I
    .restart local v18    # "name":Ljava/lang/String;
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "expected = after attribute name"

    invoke-direct {v4, v5, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 1943
    .end local v17    # "nameStart":I
    .end local v18    # "name":Ljava/lang/String;
    .restart local v4    # "nameStart":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_2d
    move/from16 v17, v4

    move-object/from16 v18, v5

    const/4 v4, 0x0

    .end local v4    # "nameStart":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v17    # "nameStart":I
    .restart local v18    # "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v3

    move/from16 v4, v17

    const/4 v6, 0x1

    goto/16 :goto_4

    .line 1863
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v17    # "nameStart":I
    .end local v18    # "name":Ljava/lang/String;
    .restart local v4    # "nameStart":I
    :cond_2e
    move/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "nameStart":I
    .restart local v17    # "nameStart":I
    iget-boolean v6, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v6, :cond_37

    .line 1864
    if-eqz v8, :cond_34

    const/4 v6, 0x5

    if-ge v10, v6, :cond_34

    .line 1865
    add-int/lit8 v10, v10, 0x1

    .line 1866
    const/4 v7, 0x1

    if-ne v10, v7, :cond_2f

    const/16 v6, 0x6d

    if-eq v3, v6, :cond_34

    const/4 v8, 0x0

    goto :goto_18

    .line 1867
    :cond_2f
    if-ne v10, v13, :cond_30

    const/16 v6, 0x6c

    if-eq v3, v6, :cond_34

    const/4 v8, 0x0

    goto :goto_18

    .line 1868
    :cond_30
    const/4 v7, 0x3

    if-ne v10, v7, :cond_31

    const/16 v6, 0x6e

    if-eq v3, v6, :cond_34

    const/4 v8, 0x0

    goto :goto_18

    .line 1869
    :cond_31
    if-ne v10, v12, :cond_32

    const/16 v6, 0x73

    if-eq v3, v6, :cond_34

    const/4 v8, 0x0

    goto :goto_18

    .line 1870
    :cond_32
    if-ne v10, v6, :cond_34

    .line 1871
    if-ne v3, v5, :cond_33

    goto :goto_18

    :cond_33
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "after xmlns in attribute name must be colonwhen namespaces are enabled"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 1877
    :cond_34
    :goto_18
    if-ne v3, v5, :cond_36

    .line 1878
    const/4 v6, -0x1

    if-ne v2, v6, :cond_35

    .line 1881
    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v6, v9

    move v2, v6

    const/4 v6, 0x0

    .end local v2    # "colonPos":I
    .local v6, "colonPos":I
    goto :goto_19

    .line 1878
    .end local v6    # "colonPos":I
    .restart local v2    # "colonPos":I
    :cond_35
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "only one colon is allowed in attribute name when namespaces are enabled"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 1877
    :cond_36
    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_19

    .line 1863
    :cond_37
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1884
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v3

    move/from16 v4, v17

    move/from16 v19, v7

    move-object v7, v6

    move/from16 v6, v19

    goto/16 :goto_2
.end method

.method protected parseCDSect(Z)V
    .locals 14
    .param p1, "hadCharData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2708
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2709
    .local v0, "ch":C
    const/4 v1, 0x0

    const-string v2, "expected <[CDATA[ for comment start"

    const/16 v3, 0x43

    if-ne v0, v3, :cond_18

    .line 2711
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2712
    const/16 v3, 0x44

    if-ne v0, v3, :cond_17

    .line 2714
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2715
    const/16 v3, 0x41

    if-ne v0, v3, :cond_16

    .line 2717
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2718
    const/16 v4, 0x54

    if-ne v0, v4, :cond_15

    .line 2720
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2721
    if-ne v0, v3, :cond_14

    .line 2723
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2724
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_13

    .line 2728
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v1, v2

    .line 2729
    .local v1, "cdStart":I
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2730
    .local v2, "curLine":I
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2731
    .local v3, "curColumn":I
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    .line 2733
    .local v4, "normalizeInput":Z
    :goto_1
    if-eqz v4, :cond_3

    .line 2734
    if-eqz p1, :cond_3

    .line 2735
    :try_start_0
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v7, :cond_3

    .line 2737
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v7, v8, :cond_2

    .line 2738
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_2

    .line 2740
    :cond_2
    iput-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2741
    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2746
    :cond_3
    :goto_2
    const/4 v7, 0x0

    .line 2747
    .local v7, "seenBracket":Z
    const/4 v8, 0x0

    .line 2748
    .local v8, "seenBracketBracket":Z
    const/4 v9, 0x0

    .line 2749
    .local v9, "normalizedCR":Z
    nop

    .line 2751
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v10
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v10

    .line 2752
    const/16 v10, 0x5d

    if-ne v0, v10, :cond_6

    .line 2753
    if-nez v7, :cond_5

    .line 2754
    const/4 v7, 0x1

    goto :goto_4

    .line 2756
    :cond_5
    const/4 v8, 0x1

    goto :goto_4

    .line 2759
    :cond_6
    const/16 v10, 0x3e

    if-ne v0, v10, :cond_9

    .line 2760
    if-eqz v8, :cond_8

    .line 2761
    nop

    .line 2802
    .end local v7    # "seenBracket":Z
    .end local v8    # "seenBracketBracket":Z
    .end local v9    # "normalizedCR":Z
    nop

    .line 2808
    if-eqz v4, :cond_7

    .line 2809
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v5, :cond_7

    .line 2810
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2813
    :cond_7
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v5, v1, v5

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2814
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v5, v5, -0x3

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2815
    .end local v0    # "ch":C
    .end local v1    # "cdStart":I
    .end local v2    # "curLine":I
    .end local v3    # "curColumn":I
    .end local v4    # "normalizeInput":Z
    return-void

    .line 2763
    .restart local v0    # "ch":C
    .restart local v1    # "cdStart":I
    .restart local v2    # "curLine":I
    .restart local v3    # "curColumn":I
    .restart local v4    # "normalizeInput":Z
    .restart local v7    # "seenBracket":Z
    .restart local v8    # "seenBracketBracket":Z
    .restart local v9    # "normalizedCR":Z
    :cond_8
    const/4 v8, 0x0

    .line 2765
    const/4 v7, 0x0

    goto :goto_4

    .line 2767
    :cond_9
    const/4 v7, 0x0

    .line 2769
    :goto_4
    if-eqz v4, :cond_4

    .line 2771
    const/16 v10, 0xd

    const/16 v11, 0xa

    if-ne v0, v10, :cond_d

    .line 2772
    const/4 v9, 0x1

    .line 2774
    :try_start_1
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v10, v1, v10

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2775
    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v12, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2776
    iget-boolean v13, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v13, :cond_b

    .line 2777
    if-le v12, v10, :cond_a

    .line 2778
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_5

    .line 2780
    :cond_a
    iput-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2781
    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2785
    :cond_b
    :goto_5
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v12, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v12, v12

    if-lt v10, v12, :cond_c

    invoke-virtual {p0, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2786
    :cond_c
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v11, v10, v12

    goto :goto_3

    .line 2787
    :cond_d
    if-ne v0, v11, :cond_10

    .line 2788
    if-nez v9, :cond_f

    iget-boolean v10, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v10, :cond_f

    .line 2789
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v12, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v12, v12

    if-lt v10, v12, :cond_e

    invoke-virtual {p0, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2790
    :cond_e
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v11, v10, v12

    .line 2792
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2794
    :cond_10
    iget-boolean v10, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v10, :cond_12

    .line 2795
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_11

    invoke-virtual {p0, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2796
    :cond_11
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v0, v10, v11
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2798
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2804
    .end local v7    # "seenBracket":Z
    .end local v8    # "seenBracketBracket":Z
    .end local v9    # "normalizedCR":Z
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/io/EOFException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "CDATA section started on line "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " and column "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " was not closed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6

    .line 2724
    .end local v1    # "cdStart":I
    .end local v2    # "curLine":I
    .end local v3    # "curColumn":I
    .end local v4    # "normalizeInput":Z
    .end local v5    # "ex":Ljava/io/EOFException;
    :cond_13
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2721
    :cond_14
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2718
    :cond_15
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2715
    :cond_16
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2712
    :cond_17
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2709
    :cond_18
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected parseComment()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2243
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2244
    .local v0, "ch":C
    const/4 v1, 0x0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_13

    .line 2246
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v3, :cond_0

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2248
    :cond_0
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2249
    .local v4, "curLine":I
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2251
    .local v5, "curColumn":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    :try_start_0
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v3, :cond_1

    move v3, v7

    goto :goto_0

    .line 2317
    :catch_0
    move-exception v1

    goto/16 :goto_5

    .line 2251
    :cond_1
    move v3, v6

    .line 2252
    .local v3, "normalizeIgnorableWS":Z
    :goto_0
    const/4 v8, 0x0

    .line 2254
    .local v8, "normalizedCR":Z
    const/4 v9, 0x0

    .line 2255
    .local v9, "seenDash":Z
    const/4 v10, 0x0

    .line 2256
    .local v10, "seenDashDash":Z
    nop

    .line 2258
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v11

    move v0, v11

    .line 2259
    const/16 v11, 0x3e

    if-eqz v10, :cond_4

    if-ne v0, v11, :cond_3

    goto :goto_2

    .line 2260
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in comment after two dashes (--) next character must be > not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "ch":C
    .end local v4    # "curLine":I
    .end local v5    # "curColumn":I
    throw v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2264
    .restart local v0    # "ch":C
    .restart local v4    # "curLine":I
    .restart local v5    # "curColumn":I
    :cond_4
    :goto_2
    if-ne v0, v2, :cond_6

    .line 2265
    if-nez v9, :cond_5

    .line 2266
    const/4 v9, 0x1

    goto :goto_3

    .line 2268
    :cond_5
    const/4 v10, 0x1

    .line 2269
    const/4 v9, 0x0

    goto :goto_3

    .line 2271
    :cond_6
    if-ne v0, v11, :cond_9

    .line 2272
    if-eqz v10, :cond_8

    .line 2273
    nop

    .line 2315
    .end local v3    # "normalizeIgnorableWS":Z
    .end local v8    # "normalizedCR":Z
    .end local v9    # "seenDash":Z
    .end local v10    # "seenDashDash":Z
    nop

    .line 2321
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v1, :cond_7

    .line 2322
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2323
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v1, :cond_7

    .line 2324
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2327
    .end local v0    # "ch":C
    .end local v4    # "curLine":I
    .end local v5    # "curColumn":I
    :cond_7
    return-void

    .line 2275
    .restart local v0    # "ch":C
    .restart local v3    # "normalizeIgnorableWS":Z
    .restart local v4    # "curLine":I
    .restart local v5    # "curColumn":I
    .restart local v8    # "normalizedCR":Z
    .restart local v9    # "seenDash":Z
    .restart local v10    # "seenDashDash":Z
    :cond_8
    const/4 v10, 0x0

    .line 2277
    const/4 v9, 0x0

    goto :goto_3

    .line 2279
    :cond_9
    const/4 v9, 0x0

    .line 2281
    :goto_3
    if-eqz v3, :cond_2

    .line 2282
    const/16 v11, 0xd

    const/16 v12, 0xa

    if-ne v0, v11, :cond_d

    .line 2283
    const/4 v8, 0x1

    .line 2287
    :try_start_1
    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v11, :cond_b

    .line 2288
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v11, v7

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2289
    iget v13, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v11, v13, :cond_a

    .line 2290
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_4

    .line 2292
    :cond_a
    iput-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2293
    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2297
    :cond_b
    :goto_4
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v13, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v13, v13

    if-lt v11, v13, :cond_c

    invoke-virtual {p0, v11}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2298
    :cond_c
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v13, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v12, v11, v13

    goto/16 :goto_1

    .line 2299
    :cond_d
    if-ne v0, v12, :cond_10

    .line 2300
    if-nez v8, :cond_f

    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v11, :cond_f

    .line 2301
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v13, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v13, v13

    if-lt v11, v13, :cond_e

    invoke-virtual {p0, v11}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2302
    :cond_e
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v13, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v12, v11, v13

    .line 2304
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2306
    :cond_10
    iget-boolean v11, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v11, :cond_12

    .line 2307
    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v12, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v12, v12

    if-lt v11, v12, :cond_11

    invoke-virtual {p0, v11}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2308
    :cond_11
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v0, v11, v12
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2310
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2317
    .end local v3    # "normalizeIgnorableWS":Z
    .end local v8    # "normalizedCR":Z
    .end local v9    # "seenDash":Z
    .end local v10    # "seenDashDash":Z
    .local v1, "ex":Ljava/io/EOFException;
    :goto_5
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "comment started on line "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, " and column "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, " was not closed"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2244
    .end local v1    # "ex":Ljava/io/EOFException;
    .end local v4    # "curLine":I
    .end local v5    # "curColumn":I
    :cond_13
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "expected <!-- for comment start"

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected parseDocdecl()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2629
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2630
    .local v0, "ch":C
    const/4 v1, 0x0

    const-string v2, "expected <!DOCTYPE"

    const/16 v3, 0x4f

    if-ne v0, v3, :cond_13

    .line 2632
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2633
    const/16 v3, 0x43

    if-ne v0, v3, :cond_12

    .line 2635
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2636
    const/16 v3, 0x54

    if-ne v0, v3, :cond_11

    .line 2638
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2639
    const/16 v3, 0x59

    if-ne v0, v3, :cond_10

    .line 2641
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2642
    const/16 v3, 0x50

    if-ne v0, v3, :cond_f

    .line 2644
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2645
    const/16 v3, 0x45

    if-ne v0, v3, :cond_e

    .line 2647
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2652
    const/4 v1, 0x0

    .line 2653
    .local v1, "bracketLevel":I
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v5, v2

    .line 2654
    .local v5, "normalizeIgnorableWS":Z
    const/4 v2, 0x0

    .line 2655
    .local v2, "normalizedCR":Z
    nop

    .line 2656
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2657
    const/16 v6, 0x5b

    if-ne v0, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 2658
    :cond_2
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 2659
    :cond_3
    const/16 v6, 0x3e

    if-ne v0, v6, :cond_4

    if-nez v1, :cond_4

    .line 2694
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2695
    .end local v0    # "ch":C
    .end local v1    # "bracketLevel":I
    .end local v2    # "normalizedCR":Z
    .end local v5    # "normalizeIgnorableWS":Z
    return-void

    .line 2660
    .restart local v0    # "ch":C
    .restart local v1    # "bracketLevel":I
    .restart local v2    # "normalizedCR":Z
    .restart local v5    # "normalizeIgnorableWS":Z
    :cond_4
    if-eqz v5, :cond_1

    .line 2661
    const/16 v6, 0xd

    const/16 v7, 0xa

    if-ne v0, v6, :cond_8

    .line 2662
    const/4 v2, 0x1

    .line 2666
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v6, :cond_6

    .line 2667
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v4

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2668
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v6, v8, :cond_5

    .line 2669
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_2

    .line 2671
    :cond_5
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2672
    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2676
    :cond_6
    :goto_2
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v6, v8, :cond_7

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2677
    :cond_7
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v6, v8

    goto :goto_1

    .line 2678
    :cond_8
    if-ne v0, v7, :cond_b

    .line 2679
    if-nez v2, :cond_a

    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v6, :cond_a

    .line 2680
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v6, v8, :cond_9

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2681
    :cond_9
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v6, v8

    .line 2683
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    .line 2685
    :cond_b
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v6, :cond_d

    .line 2686
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v7, v7

    if-lt v6, v7, :cond_c

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2687
    :cond_c
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v0, v6, v7

    .line 2689
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2645
    .end local v1    # "bracketLevel":I
    .end local v2    # "normalizedCR":Z
    .end local v5    # "normalizeIgnorableWS":Z
    :cond_e
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2642
    :cond_f
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2639
    :cond_10
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2636
    :cond_11
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2633
    :cond_12
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 2630
    :cond_13
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v3, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public parseEndTag()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1603
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1604
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 1608
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v3, v1, -0x3

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1609
    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v1, v4

    .line 1611
    .local v1, "nameStart":I
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1612
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1621
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v4, v1, v4

    .line 1623
    .local v4, "off":I
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    .line 1624
    .local v5, "len":I
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v6, v6, v7

    .line 1625
    .local v6, "cbuf":[C
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v7, v8, v7

    const-string v8, ">"

    const-string v9, "end tag name </"

    const/4 v10, 0x0

    const-string v11, " from line "

    if-ne v7, v5, :cond_5

    .line 1633
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v5, :cond_3

    .line 1645
    nop

    :goto_1
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1646
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_1

    .line 1655
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1656
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 1657
    const/4 v2, 0x3

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v2

    .line 1647
    :cond_1
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "expected > to finsh end tag not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 1645
    :cond_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    goto :goto_1

    .line 1635
    :cond_3
    iget-object v12, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "off":I
    .local v13, "off":I
    aget-char v4, v12, v4

    aget-char v12, v6, v7

    if-ne v4, v12, :cond_4

    .line 1633
    add-int/lit8 v7, v7, 0x1

    move v4, v13

    goto :goto_0

    .line 1637
    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6, v10, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1638
    .local v4, "startname":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    iget-object v12, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v14, v13, v7

    sub-int/2addr v14, v3

    invoke-direct {v10, v12, v14, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v10

    .line 1639
    .local v3, "endname":Ljava/lang/String;
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v12, "> must be the same as start tag <"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v10

    .line 1627
    .end local v3    # "endname":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v13    # "off":I
    .local v4, "off":I
    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6, v10, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1628
    .local v3, "startname":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-direct {v7, v10, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1629
    .local v7, "endname":Ljava/lang/String;
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v12, "> must match start tag name <"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v10

    .line 1605
    .end local v1    # "nameStart":I
    .end local v3    # "startname":Ljava/lang/String;
    .end local v4    # "off":I
    .end local v5    # "len":I
    .end local v6    # "cbuf":[C
    .end local v7    # "endname":Ljava/lang/String;
    :cond_6
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected name start and not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseEntityRef()[C
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2099
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 2100
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2101
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2102
    .local v1, "ch":C
    const/16 v2, 0x61

    const/16 v3, 0x3b

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x23

    if-ne v1, v6, :cond_8

    .line 2104
    const/4 v6, 0x0

    .line 2105
    .local v6, "charRef":C
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2106
    const/16 v7, 0x78

    const/16 v8, 0x39

    const/16 v9, 0x30

    if-ne v1, v7, :cond_4

    .line 2108
    nop

    .line 2109
    :goto_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2110
    if-lt v1, v9, :cond_0

    if-gt v1, v8, :cond_0

    .line 2111
    mul-int/lit8 v7, v6, 0x10

    add-int/lit8 v10, v1, -0x30

    add-int/2addr v7, v10

    int-to-char v6, v7

    goto :goto_0

    .line 2112
    :cond_0
    if-lt v1, v2, :cond_1

    const/16 v7, 0x66

    if-gt v1, v7, :cond_1

    .line 2113
    mul-int/lit8 v7, v6, 0x10

    add-int/lit8 v10, v1, -0x57

    add-int/2addr v7, v10

    int-to-char v6, v7

    goto :goto_0

    .line 2114
    :cond_1
    const/16 v7, 0x41

    if-lt v1, v7, :cond_2

    const/16 v7, 0x46

    if-gt v1, v7, :cond_2

    .line 2115
    mul-int/lit8 v7, v6, 0x10

    add-int/lit8 v10, v1, -0x37

    add-int/2addr v7, v10

    int-to-char v6, v7

    goto :goto_0

    .line 2116
    :cond_2
    if-ne v1, v3, :cond_3

    .line 2117
    goto :goto_2

    .line 2119
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "character reference (with hex value) may not contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2127
    :cond_4
    :goto_1
    if-lt v1, v9, :cond_5

    if-gt v1, v8, :cond_5

    .line 2128
    mul-int/lit8 v2, v6, 0xa

    add-int/lit8 v7, v1, -0x30

    add-int/2addr v2, v7

    int-to-char v6, v2

    .line 2136
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2126
    goto :goto_1

    .line 2129
    :cond_5
    if-ne v1, v3, :cond_7

    .line 2130
    nop

    .line 2139
    :goto_2
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2140
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    aput-char v6, v0, v4

    .line 2141
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_6

    .line 2142
    invoke-virtual {p0, v0, v4, v5}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2144
    :cond_6
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    return-object v0

    .line 2132
    :cond_7
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "character reference (with decimal value) may not contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2149
    .end local v6    # "charRef":C
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    if-ne v1, v3, :cond_15

    .line 2150
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v3, v5

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2152
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v3, v5

    .line 2153
    .local v3, "len":I
    const/16 v6, 0x74

    const/4 v7, 0x2

    if-ne v3, v7, :cond_a

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v9, v8, v5

    const/16 v10, 0x6c

    if-ne v9, v10, :cond_a

    add-int/lit8 v9, v5, 0x1

    aget-char v8, v8, v9

    if-ne v8, v6, :cond_a

    .line 2154
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_9

    .line 2155
    const-string v0, "<"

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2157
    :cond_9
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v2, 0x3c

    aput-char v2, v0, v4

    .line 2158
    return-object v0

    .line 2163
    :cond_a
    const/16 v8, 0x70

    const/4 v9, 0x3

    if-ne v3, v9, :cond_c

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v11, v10, v5

    if-ne v11, v2, :cond_c

    add-int/lit8 v11, v5, 0x1

    aget-char v11, v10, v11

    const/16 v12, 0x6d

    if-ne v11, v12, :cond_c

    add-int/lit8 v11, v5, 0x2

    aget-char v10, v10, v11

    if-ne v10, v8, :cond_c

    .line 2165
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_b

    .line 2166
    const-string v0, "&"

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2168
    :cond_b
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v2, 0x26

    aput-char v2, v0, v4

    .line 2169
    return-object v0

    .line 2170
    :cond_c
    if-ne v3, v7, :cond_e

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v10, v7, v5

    const/16 v11, 0x67

    if-ne v10, v11, :cond_e

    add-int/lit8 v10, v5, 0x1

    aget-char v7, v7, v10

    if-ne v7, v6, :cond_e

    .line 2171
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_d

    .line 2172
    const-string v0, ">"

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2174
    :cond_d
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v2, 0x3e

    aput-char v2, v0, v4

    .line 2175
    return-object v0

    .line 2176
    :cond_e
    const/16 v7, 0x6f

    const/4 v10, 0x4

    if-ne v3, v10, :cond_10

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v12, v11, v5

    if-ne v12, v2, :cond_10

    add-int/lit8 v2, v5, 0x1

    aget-char v2, v11, v2

    if-ne v2, v8, :cond_10

    add-int/lit8 v2, v5, 0x2

    aget-char v2, v11, v2

    if-ne v2, v7, :cond_10

    add-int/lit8 v2, v5, 0x3

    aget-char v2, v11, v2

    const/16 v8, 0x73

    if-ne v2, v8, :cond_10

    .line 2179
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_f

    .line 2180
    const-string v0, "\'"

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2182
    :cond_f
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v2, 0x27

    aput-char v2, v0, v4

    .line 2183
    return-object v0

    .line 2184
    :cond_10
    if-ne v3, v10, :cond_12

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v8, v2, v5

    const/16 v10, 0x71

    if-ne v8, v10, :cond_12

    add-int/lit8 v8, v5, 0x1

    aget-char v8, v2, v8

    const/16 v10, 0x75

    if-ne v8, v10, :cond_12

    add-int/lit8 v8, v5, 0x2

    aget-char v8, v2, v8

    if-ne v8, v7, :cond_12

    add-int/2addr v5, v9

    aget-char v2, v2, v5

    if-ne v2, v6, :cond_12

    .line 2187
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_11

    .line 2188
    const-string v0, "\""

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2190
    :cond_11
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v2, 0x22

    aput-char v2, v0, v4

    .line 2191
    return-object v0

    .line 2193
    :cond_12
    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->lookuEntityReplacement(I)[C

    move-result-object v2

    .line 2194
    .local v2, "result":[C
    if-eqz v2, :cond_13

    .line 2195
    return-object v2

    .line 2198
    .end local v2    # "result":[C
    :cond_13
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_14

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2199
    :cond_14
    return-object v0

    .line 2149
    .end local v3    # "len":I
    :cond_15
    goto/16 :goto_3
.end method

.method protected parseEpilog()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1486
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    .line 1489
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    if-eqz v0, :cond_0

    .line 1490
    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v2

    .line 1492
    :cond_0
    const/4 v0, 0x0

    .line 1493
    .local v0, "gotS":Z
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    const/4 v4, 0x0

    if-ne v3, v2, :cond_1

    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1494
    .local v3, "normalizeIgnorableWS":Z
    :goto_0
    const/4 v5, 0x0

    .line 1498
    .local v5, "normalizedCR":Z
    const/4 v6, 0x7

    :try_start_0
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    if-eqz v7, :cond_2

    .line 1499
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v8, v2

    aget-char v7, v7, v8

    .local v7, "ch":C
    goto :goto_1

    .line 1498
    .end local v7    # "ch":C
    :cond_2
    move v7, v4

    .line 1501
    .restart local v7    # "ch":C
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v8

    move v7, v8

    .line 1503
    :goto_1
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1504
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v8, v2

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1505
    :goto_2
    nop

    .line 1508
    const/16 v8, 0x3c

    const/16 v9, 0xa

    if-ne v7, v8, :cond_a

    .line 1509
    if-eqz v0, :cond_3

    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v8, :cond_3

    .line 1510
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1511
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1512
    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v6

    .line 1514
    :cond_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v8

    move v7, v8

    .line 1515
    const/16 v8, 0x3f

    if-ne v7, v8, :cond_4

    .line 1518
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    .line 1519
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v8, :cond_14

    const/16 v1, 0x8

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v1

    .line 1521
    :cond_4
    const/16 v8, 0x21

    if-ne v7, v8, :cond_7

    .line 1522
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v8

    move v7, v8

    .line 1523
    const/16 v8, 0x44

    if-ne v7, v8, :cond_5

    .line 1524
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseDocdecl()V

    .line 1525
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v8, :cond_14

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v9

    .line 1526
    :cond_5
    const/16 v8, 0x2d

    if-ne v7, v8, :cond_6

    .line 1527
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 1528
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v8, :cond_14

    const/16 v1, 0x9

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v1

    .line 1530
    :cond_6
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "unexpected markup <!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "gotS":Z
    .end local v3    # "normalizeIgnorableWS":Z
    .end local v5    # "normalizedCR":Z
    throw v4

    .line 1533
    .restart local v0    # "gotS":Z
    .restart local v3    # "normalizeIgnorableWS":Z
    .restart local v5    # "normalizedCR":Z
    :cond_7
    const/16 v4, 0x2f

    if-eq v7, v4, :cond_9

    .line 1536
    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1537
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "start tag not allowed in epilog but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "gotS":Z
    .end local v3    # "normalizeIgnorableWS":Z
    .end local v5    # "normalizedCR":Z
    throw v4

    .line 1540
    .restart local v0    # "gotS":Z
    .restart local v3    # "normalizeIgnorableWS":Z
    .restart local v5    # "normalizedCR":Z
    :cond_8
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "in epilog expected ignorable content and not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "gotS":Z
    .end local v3    # "normalizeIgnorableWS":Z
    .end local v5    # "normalizedCR":Z
    throw v4

    .line 1534
    .restart local v0    # "gotS":Z
    .restart local v3    # "normalizeIgnorableWS":Z
    .restart local v5    # "normalizedCR":Z
    :cond_9
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "end tag not allowed in epilog but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "gotS":Z
    .end local v3    # "normalizeIgnorableWS":Z
    .end local v5    # "normalizedCR":Z
    throw v4

    .line 1544
    .restart local v0    # "gotS":Z
    .restart local v3    # "normalizeIgnorableWS":Z
    .restart local v5    # "normalizedCR":Z
    :cond_a
    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1545
    const/4 v0, 0x1

    .line 1546
    if-eqz v3, :cond_14

    .line 1547
    const/16 v8, 0xd

    if-ne v7, v8, :cond_e

    .line 1548
    const/4 v5, 0x1

    .line 1552
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v8, :cond_c

    .line 1553
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v8, v2

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1554
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v8, v10, :cond_b

    .line 1555
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_3

    .line 1557
    :cond_b
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1558
    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1562
    :cond_c
    :goto_3
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v8, v10, :cond_d

    invoke-virtual {p0, v8}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1563
    :cond_d
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v9, v8, v10

    goto :goto_4

    .line 1564
    :cond_e
    if-ne v7, v9, :cond_11

    .line 1565
    if-nez v5, :cond_10

    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v8, :cond_10

    .line 1566
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v8, v10, :cond_f

    invoke-virtual {p0, v8}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1567
    :cond_f
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v9, v8, v10

    .line 1569
    :cond_10
    const/4 v5, 0x0

    goto :goto_4

    .line 1571
    :cond_11
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v8, :cond_13

    .line 1572
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v8, v9, :cond_12

    invoke-virtual {p0, v8}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1573
    :cond_12
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v8, v9

    .line 1575
    :cond_13
    const/4 v5, 0x0

    .line 1583
    :cond_14
    :goto_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v8

    move v7, v8

    goto/16 :goto_2

    .line 1579
    :cond_15
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "in epilog non whitespace content is not allowed but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "gotS":Z
    .end local v3    # "normalizeIgnorableWS":Z
    .end local v5    # "normalizedCR":Z
    throw v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    .end local v7    # "ch":C
    .restart local v0    # "gotS":Z
    .restart local v3    # "normalizeIgnorableWS":Z
    .restart local v5    # "normalizedCR":Z
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/EOFException;
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    .line 1591
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v4, :cond_16

    if-eqz v0, :cond_16

    .line 1592
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1593
    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v6

    .line 1595
    :cond_16
    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v2

    .line 1487
    .end local v0    # "gotS":Z
    .end local v1    # "ex":Ljava/io/EOFException;
    .end local v3    # "normalizeIgnorableWS":Z
    .end local v5    # "normalizedCR":Z
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "already reached end of XML input"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parsePI()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2337
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_0

    iget v2, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v2, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2338
    :cond_0
    iget v2, v1, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2339
    .local v2, "curLine":I
    iget v3, v1, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2340
    .local v3, "curColumn":I
    iget v4, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v5, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v4, v5

    .line 2341
    .local v4, "piTargetStart":I
    const/4 v5, -0x1

    .line 2342
    .local v5, "piTargetEnd":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    iget-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 2343
    .local v8, "normalizeIgnorableWS":Z
    const/4 v0, 0x0

    .line 2346
    .local v0, "normalizedCR":Z
    const/4 v9, 0x0

    .line 2348
    .local v9, "seenQ":Z
    move/from16 v16, v5

    move v5, v0

    move v0, v9

    move/from16 v9, v16

    .line 2350
    .local v0, "seenQ":Z
    .local v5, "normalizedCR":Z
    .local v9, "piTargetEnd":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v10
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2351
    .local v10, "ch":C
    const/16 v11, 0x3f

    if-ne v10, v11, :cond_2

    .line 2352
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 2353
    :cond_2
    const/16 v11, 0x3e

    const/4 v12, -0x1

    if-ne v10, v11, :cond_6

    .line 2354
    if-eqz v0, :cond_5

    .line 2355
    nop

    .line 2427
    .end local v0    # "seenQ":Z
    .end local v10    # "ch":C
    nop

    .line 2434
    if-ne v9, v12, :cond_3

    .line 2435
    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    iget v6, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int v9, v0, v6

    .line 2439
    :cond_3
    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v4, v0

    .line 2440
    sub-int/2addr v9, v0

    .line 2441
    iget-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_4

    .line 2442
    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2443
    if-eqz v8, :cond_4

    .line 2444
    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v0, v7

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2447
    :cond_4
    return v7

    .line 2357
    .restart local v0    # "seenQ":Z
    .restart local v10    # "ch":C
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2359
    :cond_6
    if-ne v9, v12, :cond_e

    :try_start_1
    invoke-virtual {v1, v10}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2360
    iget v11, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v11, v7

    iget v12, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int v9, v11, v12

    .line 2363
    sub-int v11, v9, v4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_e

    .line 2364
    iget-object v11, v1, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v13, v11, v4

    const/16 v14, 0x78

    if-eq v13, v14, :cond_7

    const/16 v15, 0x58

    if-ne v13, v15, :cond_e

    :cond_7
    add-int/lit8 v15, v4, 0x1

    aget-char v15, v11, v15

    const/16 v7, 0x6d

    if-eq v15, v7, :cond_8

    add-int/lit8 v15, v4, 0x1

    aget-char v15, v11, v15

    const/16 v6, 0x4d

    if-ne v15, v6, :cond_e

    :cond_8
    add-int/lit8 v6, v4, 0x2

    aget-char v6, v11, v6

    const/16 v15, 0x6c

    if-eq v6, v15, :cond_9

    add-int/lit8 v6, v4, 0x2

    aget-char v6, v11, v6

    const/16 v15, 0x4c

    if-ne v6, v15, :cond_e

    .line 2369
    :cond_9
    const/4 v6, 0x0

    if-gt v4, v12, :cond_d

    .line 2374
    if-eq v13, v14, :cond_b

    add-int/lit8 v13, v4, 0x1

    aget-char v13, v11, v13

    if-eq v13, v7, :cond_b

    add-int/lit8 v7, v4, 0x2

    aget-char v7, v11, v7

    const/16 v11, 0x6c

    if-ne v7, v11, :cond_a

    goto :goto_2

    .line 2378
    :cond_a
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v11, "XMLDecl must have xml name in lowercase"

    invoke-direct {v7, v11, v1, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v2    # "curLine":I
    .end local v3    # "curColumn":I
    .end local v4    # "piTargetStart":I
    .end local v5    # "normalizedCR":Z
    .end local v8    # "normalizeIgnorableWS":Z
    .end local v9    # "piTargetEnd":I
    throw v7

    .line 2383
    .restart local v2    # "curLine":I
    .restart local v3    # "curColumn":I
    .restart local v4    # "piTargetStart":I
    .restart local v5    # "normalizedCR":Z
    .restart local v8    # "normalizeIgnorableWS":Z
    .restart local v9    # "piTargetEnd":I
    :cond_b
    :goto_2
    invoke-virtual {v1, v10}, Lorg/xmlpull/mxp1/MXParser;->parseXmlDecl(C)V

    .line 2384
    iget-boolean v6, v1, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v6, :cond_c

    iget v6, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2385
    :cond_c
    iget v6, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v6, v4, v6

    add-int/2addr v6, v12

    .line 2386
    .local v6, "off":I
    iget v7, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v7, v7, -0x2

    sub-int/2addr v7, v6

    .line 2387
    .local v7, "len":I
    iget-object v11, v1, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-virtual {v1, v11, v6, v7}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    .line 2388
    const/4 v11, 0x0

    return v11

    .line 2370
    .end local v6    # "off":I
    .end local v7    # "len":I
    :cond_d
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v11, "processing instruction can not have PITarget with reserveld xml name"

    invoke-direct {v7, v11, v1, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v2    # "curLine":I
    .end local v3    # "curColumn":I
    .end local v4    # "piTargetStart":I
    .end local v5    # "normalizedCR":Z
    .end local v8    # "normalizeIgnorableWS":Z
    .end local v9    # "piTargetEnd":I
    throw v7

    .line 2392
    .restart local v2    # "curLine":I
    .restart local v3    # "curColumn":I
    .restart local v4    # "piTargetStart":I
    .restart local v5    # "normalizedCR":Z
    .restart local v8    # "normalizeIgnorableWS":Z
    .restart local v9    # "piTargetEnd":I
    :cond_e
    const/4 v0, 0x0

    .line 2394
    :goto_3
    if-eqz v8, :cond_18

    .line 2395
    const/16 v6, 0xd

    const/16 v7, 0xa

    if-ne v10, v6, :cond_12

    .line 2396
    const/4 v5, 0x1

    .line 2400
    iget-boolean v6, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v6, :cond_10

    .line 2401
    iget v6, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    iput v6, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2402
    iget v11, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v6, v11, :cond_f

    .line 2403
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    const/4 v6, 0x1

    const/4 v11, 0x0

    goto :goto_4

    .line 2405
    :cond_f
    const/4 v6, 0x1

    iput-boolean v6, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2406
    const/4 v11, 0x0

    iput v11, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v11, v1, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto :goto_4

    .line 2400
    :cond_10
    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 2410
    :goto_4
    iget v12, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v13, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v13, v13

    if-lt v12, v13, :cond_11

    invoke-virtual {v1, v12}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2411
    :cond_11
    iget-object v12, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v13, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v12, v13

    move v7, v6

    goto/16 :goto_1

    .line 2412
    :cond_12
    const/4 v6, 0x1

    const/4 v11, 0x0

    if-ne v10, v7, :cond_15

    .line 2413
    if-nez v5, :cond_14

    iget-boolean v12, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v12, :cond_14

    .line 2414
    iget v12, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v13, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v13, v13

    if-lt v12, v13, :cond_13

    invoke-virtual {v1, v12}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2415
    :cond_13
    iget-object v12, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v13, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v12, v13

    .line 2417
    :cond_14
    const/4 v5, 0x0

    move v7, v6

    goto/16 :goto_1

    .line 2419
    :cond_15
    iget-boolean v7, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_17

    .line 2420
    iget v7, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v12, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v12, v12

    if-lt v7, v12, :cond_16

    invoke-virtual {v1, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2421
    :cond_16
    iget-object v7, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v12, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v7, v12
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2423
    :cond_17
    const/4 v5, 0x0

    move v7, v6

    goto/16 :goto_1

    .line 2394
    :cond_18
    const/4 v6, 0x1

    const/4 v11, 0x0

    move v7, v6

    goto/16 :goto_1

    .line 2429
    .end local v0    # "seenQ":Z
    .end local v10    # "ch":C
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/EOFException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "processing instruction started on line "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v10, " and column "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v10, " was not closed"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected parseProlog()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1363
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v3, v2

    aget-char v0, v0, v3

    .local v0, "ch":C
    goto :goto_0

    .line 1363
    .end local v0    # "ch":C
    :cond_0
    move v0, v1

    .line 1366
    .restart local v0    # "ch":C
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1369
    :goto_0
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 1373
    const v3, 0xfffe

    if-eq v0, v3, :cond_1

    .line 1378
    const v3, 0xfeff

    if-ne v0, v3, :cond_2

    .line 1380
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    goto :goto_1

    .line 1374
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "first character in input was UNICODE noncharacter (0xFFFE)- input requires int swapping"

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1383
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1384
    const/4 v3, 0x0

    .line 1385
    .local v3, "gotS":Z
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1386
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-ne v5, v2, :cond_3

    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    .line 1387
    .local v5, "normalizeIgnorableWS":Z
    :goto_2
    const/4 v6, 0x0

    .line 1388
    .local v6, "normalizedCR":Z
    :goto_3
    nop

    .line 1393
    const/16 v7, 0x3c

    const/16 v8, 0xa

    if-ne v0, v7, :cond_d

    .line 1394
    if-eqz v3, :cond_4

    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v7, :cond_4

    .line 1395
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1396
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1397
    const/4 v1, 0x7

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v1

    .line 1399
    :cond_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1400
    const/16 v7, 0x3f

    if-ne v0, v7, :cond_6

    .line 1403
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1404
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v7, :cond_17

    .line 1405
    const/16 v1, 0x8

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v1

    .line 1409
    :cond_5
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1410
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 1413
    :cond_6
    const/16 v7, 0x21

    if-ne v0, v7, :cond_a

    .line 1414
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1415
    const/16 v7, 0x44

    if-ne v0, v7, :cond_8

    .line 1416
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    if-nez v7, :cond_7

    .line 1420
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    .line 1421
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseDocdecl()V

    .line 1422
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v7, :cond_17

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1417
    :cond_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "only one docdecl allowed in XML document"

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1423
    :cond_8
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_9

    .line 1424
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 1425
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v7, :cond_17

    const/16 v1, 0x9

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v1

    .line 1427
    :cond_9
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "unexpected markup <!"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1430
    :cond_a
    const/16 v1, 0x2f

    const-string v7, "expected start tag name and not "

    if-eq v0, v1, :cond_c

    .line 1433
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1434
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    .line 1435
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v1

    return v1

    .line 1437
    :cond_b
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1431
    :cond_c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1440
    :cond_d
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1441
    const/4 v3, 0x1

    .line 1442
    if-eqz v5, :cond_17

    .line 1443
    const/16 v7, 0xd

    if-ne v0, v7, :cond_11

    .line 1444
    const/4 v6, 0x1

    .line 1448
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v7, :cond_f

    .line 1449
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v7, v2

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1450
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v7, v9, :cond_e

    .line 1451
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_4

    .line 1453
    :cond_e
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1454
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1458
    :cond_f
    :goto_4
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_10

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1459
    :cond_10
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v8, v7, v9

    goto :goto_5

    .line 1460
    :cond_11
    if-ne v0, v8, :cond_14

    .line 1461
    if-nez v6, :cond_13

    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_13

    .line 1462
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_12

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1463
    :cond_12
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v8, v7, v9

    .line 1465
    :cond_13
    const/4 v6, 0x0

    goto :goto_5

    .line 1467
    :cond_14
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_16

    .line 1468
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_15

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1469
    :cond_15
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v0, v7, v8

    .line 1471
    :cond_16
    const/4 v6, 0x0

    .line 1479
    :cond_17
    :goto_5
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    goto/16 :goto_3

    .line 1475
    :cond_18
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "only whitespace content allowed before start tag and not "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseStartTag()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1664
    move-object/from16 v0, p0

    iget v1, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 1666
    iget v1, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v3, v1, -0x2

    iput v3, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1668
    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 1669
    iput v3, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    .line 1671
    add-int/lit8 v4, v1, -0x1

    iget v5, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v4, v5

    .line 1672
    .local v4, "nameStart":I
    const/4 v5, -0x1

    .line 1673
    .local v5, "colonPos":I
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v1, v2

    aget-char v1, v6, v1

    .line 1674
    .local v1, "ch":C
    const/16 v6, 0x3a

    const/4 v7, 0x0

    if-ne v1, v6, :cond_1

    iget-boolean v8, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "when namespaces processing enabled colon can not be at element name start"

    invoke-direct {v2, v3, v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1678
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 1679
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v8

    const/4 v9, -0x1

    if-nez v8, :cond_1e

    .line 1689
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->ensureElementsCapacity()V

    .line 1694
    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v2

    iget v8, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v10, v4, v8

    sub-int v10, v6, v10

    .line 1695
    .local v10, "elLen":I
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    iget v11, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v12, v6, v11

    if-eqz v12, :cond_2

    array-length v12, v12

    if-ge v12, v10, :cond_3

    .line 1696
    :cond_2
    mul-int/lit8 v12, v10, 0x2

    new-array v12, v12, [C

    aput-object v12, v6, v11

    .line 1698
    :cond_3
    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v8, v4, v8

    aget-object v6, v6, v11

    invoke-static {v12, v8, v6, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1699
    iget-object v3, v0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aput v10, v3, v6

    .line 1700
    iget-object v3, v0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v8, v0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    aput v8, v3, v6

    .line 1702
    const/4 v3, 0x0

    .line 1705
    .local v3, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1706
    .local v8, "prefix":Ljava/lang/String;
    iget-boolean v11, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const/4 v12, 0x2

    if-eqz v11, :cond_5

    .line 1707
    if-eq v5, v9, :cond_4

    .line 1708
    iget-object v9, v0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget-object v11, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v13, v4, v13

    sub-int v14, v5, v4

    invoke-virtual {v0, v11, v13, v14}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v6

    move-object v8, v11

    .line 1710
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    iget-object v11, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v13, v5, 0x1

    iget v14, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v13, v14

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v15, v12

    sub-int v14, v5, v14

    sub-int/2addr v15, v14

    invoke-virtual {v0, v11, v13, v15}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    move-object v3, v11

    goto :goto_1

    .line 1714
    :cond_4
    iget-object v9, v0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    aput-object v7, v9, v6

    move-object v8, v7

    .line 1715
    iget-object v9, v0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget-object v11, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v13, v4, v13

    invoke-virtual {v0, v11, v13, v10}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v6

    move-object v3, v11

    goto :goto_1

    .line 1719
    :cond_5
    iget-object v9, v0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget-object v11, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v13, v4, v13

    invoke-virtual {v0, v11, v13, v10}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v6

    move-object v3, v11

    .line 1724
    nop

    .line 1726
    :goto_1
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1728
    const/16 v6, 0x3e

    if-ne v1, v6, :cond_6

    .line 1729
    move v2, v1

    goto :goto_2

    .line 1730
    :cond_6
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_1b

    .line 1731
    iget-boolean v9, v0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    if-nez v9, :cond_1a

    .line 1733
    iput-boolean v2, v0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 1734
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 1735
    if-ne v1, v6, :cond_19

    move v2, v1

    .line 1750
    .end local v1    # "ch":C
    .local v2, "ch":C
    :goto_2
    iget-boolean v1, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const-string v6, " and "

    const-string v9, "duplicated attributes "

    if-eqz v1, :cond_13

    .line 1751
    invoke-virtual {v0, v8}, Lorg/xmlpull/mxp1/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1752
    .local v1, "uri":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 1753
    if-nez v8, :cond_7

    .line 1754
    const-string v1, ""

    goto :goto_3

    .line 1756
    :cond_7
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "could not determine namespace bound to element prefix "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6

    .line 1762
    :cond_8
    :goto_3
    iget-object v11, v0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aput-object v1, v11, v13

    .line 1770
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt v11, v13, :cond_10

    .line 1791
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_5
    iget v14, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt v13, v14, :cond_9

    move/from16 v17, v2

    .end local v1    # "uri":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "i":I
    goto/16 :goto_b

    .line 1793
    .restart local v1    # "uri":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v13    # "i":I
    :cond_9
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_6
    if-lt v14, v13, :cond_a

    .line 1791
    .end local v14    # "j":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1795
    .restart local v14    # "j":I
    :cond_a
    iget-object v15, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v12, v15, v14

    aget-object v15, v15, v13

    if-ne v12, v15, :cond_f

    iget-boolean v12, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-eqz v12, :cond_b

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v15, v12, v14

    aget-object v12, v12, v13

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    :cond_b
    iget-boolean v12, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v12, :cond_f

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    aget v15, v12, v14

    aget v12, v12, v13

    if-ne v15, v12, :cond_f

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v15, v12, v14

    aget-object v12, v12, v13

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1803
    :cond_c
    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v12, v12, v14

    .line 1804
    .local v12, "attr1":Ljava/lang/String;
    iget-object v15, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v15, v15, v14

    const-string v7, ":"

    if-eqz v15, :cond_d

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "uri":Ljava/lang/String;
    .local v16, "uri":Ljava/lang/String;
    iget-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v1, v14

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    .end local v16    # "uri":Ljava/lang/String;
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_d
    move-object/from16 v16, v1

    .line 1805
    .end local v1    # "uri":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/lang/String;
    :goto_7
    iget-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v13

    .line 1806
    .local v1, "attr2":Ljava/lang/String;
    iget-object v15, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v15, v15, v13

    if-eqz v15, :cond_e

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v17, v2

    .end local v2    # "ch":C
    .local v17, "ch":C
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .end local v17    # "ch":C
    .restart local v2    # "ch":C
    :cond_e
    move/from16 v17, v2

    .line 1807
    .end local v2    # "ch":C
    .restart local v17    # "ch":C
    :goto_8
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v6, v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1795
    .end local v12    # "attr1":Ljava/lang/String;
    .end local v16    # "uri":Ljava/lang/String;
    .end local v17    # "ch":C
    .local v1, "uri":Ljava/lang/String;
    .restart local v2    # "ch":C
    :cond_f
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 1793
    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "ch":C
    .restart local v16    # "uri":Ljava/lang/String;
    .restart local v17    # "ch":C
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    const/4 v7, 0x0

    const/4 v12, 0x2

    goto/16 :goto_6

    .line 1772
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v16    # "uri":Ljava/lang/String;
    .end local v17    # "ch":C
    .restart local v1    # "uri":Ljava/lang/String;
    .restart local v2    # "ch":C
    :cond_10
    move-object/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "ch":C
    .restart local v16    # "uri":Ljava/lang/String;
    .restart local v17    # "ch":C
    iget-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v1, v1, v11

    .line 1773
    .local v1, "attrPrefix":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 1774
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1775
    .local v2, "attrUri":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 1781
    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v2, v7, v11

    .end local v2    # "attrUri":Ljava/lang/String;
    goto :goto_9

    .line 1776
    .restart local v2    # "attrUri":Ljava/lang/String;
    :cond_11
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "could not determine namespace bound to attribute prefix "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6

    .line 1783
    .end local v2    # "attrUri":Ljava/lang/String;
    :cond_12
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v2, v11

    .line 1770
    .end local v1    # "attrPrefix":Ljava/lang/String;
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    const/4 v7, 0x0

    const/4 v12, 0x2

    goto/16 :goto_4

    .line 1818
    .end local v11    # "i":I
    .end local v16    # "uri":Ljava/lang/String;
    .end local v17    # "ch":C
    .local v2, "ch":C
    :cond_13
    move/from16 v17, v2

    .end local v2    # "ch":C
    .restart local v17    # "ch":C
    const/4 v1, 0x1

    move v2, v1

    .local v2, "i":I
    :goto_a
    iget v1, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-lt v2, v1, :cond_14

    .line 1838
    .end local v2    # "i":I
    :goto_b
    iget-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    iget v6, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput v6, v1, v2

    .line 1839
    iget v1, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v1, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1840
    const/4 v7, 0x2

    iput v7, v0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v7

    .line 1820
    .restart local v2    # "i":I
    :cond_14
    const/4 v7, 0x2

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_c
    if-lt v1, v2, :cond_15

    .line 1818
    .end local v1    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1822
    .restart local v1    # "j":I
    :cond_15
    iget-boolean v11, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-eqz v11, :cond_16

    iget-object v11, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v12, v11, v1

    aget-object v11, v11, v2

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    :cond_16
    iget-boolean v11, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v11, :cond_18

    iget-object v11, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    aget v12, v11, v1

    aget v11, v11, v2

    if-ne v12, v11, :cond_18

    iget-object v11, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v12, v11, v1

    aget-object v11, v11, v2

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    goto :goto_d

    .line 1829
    :cond_17
    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v11, v7, v1

    .line 1830
    .local v11, "attr1":Ljava/lang/String;
    aget-object v7, v7, v2

    .line 1831
    .local v7, "attr2":Ljava/lang/String;
    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-direct {v12, v6, v0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v12

    .line 1820
    .end local v7    # "attr2":Ljava/lang/String;
    .end local v11    # "attr1":Ljava/lang/String;
    :cond_18
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1735
    .end local v2    # "i":I
    .end local v17    # "ch":C
    .local v1, "ch":C
    :cond_19
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "expected > to end empty tag not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v6, v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1731
    :cond_1a
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "repeated / in tag declaration"

    invoke-direct {v2, v6, v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1738
    :cond_1b
    move v7, v12

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseAttribute()C

    move-result v1

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 1741
    move v12, v7

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1743
    :cond_1c
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "start tag unexpected character "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v6, v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1726
    :cond_1d
    move v7, v12

    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1680
    .end local v3    # "name":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v10    # "elLen":I
    :cond_1e
    if-ne v1, v6, :cond_20

    iget-boolean v7, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v7, :cond_20

    .line 1681
    if-ne v5, v9, :cond_1f

    .line 1684
    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v7, v2

    iget v8, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int v5, v7, v8

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1681
    :cond_1f
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "only one colon is allowed in name of element when namespaces are enabled"

    const/4 v7, 0x0

    invoke-direct {v2, v3, v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1680
    :cond_20
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected parseXmlDecl(C)V
    .locals 6
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    .line 2464
    const/4 v1, 0x0

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    .line 2470
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    .line 2471
    sget-object v2, Lorg/xmlpull/mxp1/MXParser;->VERSION:[C

    invoke-virtual {p0, p1, v2}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result p1

    .line 2473
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    .line 2474
    const/4 v2, 0x0

    const/16 v3, 0x3d

    if-ne p1, v3, :cond_8

    .line 2478
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    .line 2479
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    .line 2480
    const/16 v3, 0x27

    if-eq p1, v3, :cond_1

    const/16 v3, 0x22

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 2481
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected apostrophe (\') or quotation mark (\") after version and not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2485
    :cond_1
    :goto_0
    move v3, p1

    .line 2487
    .local v3, "quotChar":C
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 2488
    .local v4, "versionStart":I
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    .line 2490
    nop

    :goto_1
    if-ne p1, v3, :cond_2

    .line 2500
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v2, v0

    .line 2501
    .local v2, "versionEnd":I
    invoke-virtual {p0, v4, v2}, Lorg/xmlpull/mxp1/MXParser;->parseXmlDeclWithVersion(II)V

    .line 2502
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    .line 2503
    .end local v2    # "versionEnd":I
    .end local v3    # "quotChar":C
    .end local v4    # "versionStart":I
    return-void

    .line 2491
    .restart local v3    # "quotChar":C
    .restart local v4    # "versionStart":I
    :cond_2
    const/16 v5, 0x61

    if-lt p1, v5, :cond_3

    const/16 v5, 0x7a

    if-le p1, v5, :cond_7

    :cond_3
    const/16 v5, 0x41

    if-lt p1, v5, :cond_4

    const/16 v5, 0x5a

    if-le p1, v5, :cond_7

    :cond_4
    const/16 v5, 0x30

    if-lt p1, v5, :cond_5

    const/16 v5, 0x39

    if-le p1, v5, :cond_7

    :cond_5
    const/16 v5, 0x5f

    if-eq p1, v5, :cond_7

    const/16 v5, 0x2e

    if-eq p1, v5, :cond_7

    const/16 v5, 0x3a

    if-eq p1, v5, :cond_7

    const/16 v5, 0x2d

    if-ne p1, v5, :cond_6

    goto :goto_2

    .line 2494
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "<?xml version value expected to be in ([a-zA-Z0-9_.:] | \'-\') not "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2498
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    goto :goto_1

    .line 2475
    .end local v3    # "quotChar":C
    .end local v4    # "versionStart":I
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected equals sign (=) after version and not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected parseXmlDeclWithVersion(II)V
    .locals 16
    .param p1, "versionStart"    # I
    .param p2, "versionEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2510
    move-object/from16 v0, p0

    move/from16 v1, p1

    sub-int v2, p2, v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_16

    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v4, v2, v1

    const/16 v5, 0x31

    if-ne v4, v5, :cond_16

    add-int/lit8 v4, v1, 0x1

    aget-char v4, v2, v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_16

    add-int/lit8 v4, v1, 0x2

    aget-char v4, v2, v4

    const/16 v6, 0x30

    if-ne v4, v6, :cond_16

    .line 2519
    sub-int v4, p2, v1

    invoke-virtual {v0, v2, v1, v4}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 2522
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 2523
    .local v2, "ch":C
    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v2

    .line 2524
    const/16 v4, 0x65

    const-string v7, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    const/16 v8, 0x22

    const/16 v9, 0x27

    const/16 v10, 0x3d

    const/4 v11, 0x1

    if-ne v2, v4, :cond_c

    .line 2525
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 2526
    sget-object v4, Lorg/xmlpull/mxp1/MXParser;->NCODING:[C

    invoke-virtual {v0, v2, v4}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v2

    .line 2527
    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v2

    .line 2528
    if-ne v2, v10, :cond_b

    .line 2532
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 2533
    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v2

    .line 2534
    if-eq v2, v9, :cond_1

    if-ne v2, v8, :cond_0

    goto :goto_0

    .line 2535
    :cond_0
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2539
    :cond_1
    :goto_0
    move v4, v2

    .line 2540
    .local v4, "quotChar":C
    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 2541
    .local v12, "encodingStart":I
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 2543
    const/16 v13, 0x5a

    const/16 v14, 0x7a

    const/16 v15, 0x41

    const/16 v8, 0x61

    if-lt v2, v8, :cond_2

    if-le v2, v14, :cond_3

    :cond_2
    if-lt v2, v15, :cond_a

    if-gt v2, v13, :cond_a

    .line 2549
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 2550
    nop

    :goto_1
    if-ne v2, v4, :cond_4

    .line 2560
    iget v5, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v5, v11

    .line 2564
    .local v5, "encodingEnd":I
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v8, v5, v12

    invoke-virtual {v0, v6, v12, v8}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    .line 2565
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    goto/16 :goto_3

    .line 2551
    .end local v5    # "encodingEnd":I
    :cond_4
    if-lt v2, v8, :cond_5

    if-le v2, v14, :cond_9

    :cond_5
    if-lt v2, v15, :cond_6

    if-le v2, v13, :cond_9

    :cond_6
    if-lt v2, v6, :cond_7

    const/16 v6, 0x39

    if-le v2, v6, :cond_9

    :cond_7
    if-eq v2, v5, :cond_9

    const/16 v6, 0x5f

    if-eq v2, v6, :cond_9

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_8

    goto :goto_2

    .line 2554
    :cond_8
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "<?xml encoding value expected to be in ([A-Za-z0-9._] | \'-\') not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 2558
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    const/16 v6, 0x30

    goto :goto_1

    .line 2545
    :cond_a
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "<?xml encoding name expected to start with [A-Za-z] not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v5

    .line 2529
    .end local v4    # "quotChar":C
    .end local v12    # "encodingStart":I
    :cond_b
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "expected equals sign (=) after encoding and not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2568
    :cond_c
    :goto_3
    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v2

    .line 2570
    const/16 v4, 0x73

    if-ne v2, v4, :cond_13

    .line 2571
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 2572
    sget-object v4, Lorg/xmlpull/mxp1/MXParser;->TANDALONE:[C

    invoke-virtual {v0, v2, v4}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v2

    .line 2573
    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v2

    .line 2574
    if-ne v2, v10, :cond_12

    .line 2579
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 2580
    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v2

    .line 2581
    if-eq v2, v9, :cond_e

    const/16 v4, 0x22

    if-ne v2, v4, :cond_d

    goto :goto_4

    .line 2582
    :cond_d
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2586
    :cond_e
    :goto_4
    move v4, v2

    .line 2587
    .restart local v4    # "quotChar":C
    iget v5, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 2588
    .local v5, "standaloneStart":I
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 2589
    const/16 v6, 0x79

    if-ne v2, v6, :cond_f

    .line 2590
    sget-object v6, Lorg/xmlpull/mxp1/MXParser;->YES:[C

    invoke-virtual {v0, v2, v6}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v2

    .line 2592
    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v11}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    goto :goto_5

    .line 2593
    :cond_f
    const/16 v6, 0x6e

    if-ne v2, v6, :cond_11

    .line 2594
    sget-object v6, Lorg/xmlpull/mxp1/MXParser;->NO:[C

    invoke-virtual {v0, v2, v6}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v2

    .line 2596
    new-instance v6, Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    .line 2602
    :goto_5
    if-ne v2, v4, :cond_10

    .line 2607
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    goto :goto_6

    .line 2603
    :cond_10
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " after standalone value not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6

    .line 2598
    :cond_11
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "expected \'yes\' or \'no\' after standalone and not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6

    .line 2575
    .end local v4    # "quotChar":C
    .end local v5    # "standaloneStart":I
    :cond_12
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "expected equals sign (=) after standalone and not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2611
    :cond_13
    :goto_6
    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v2

    .line 2612
    const/16 v4, 0x3f

    const-string v5, "expected ?> as last part of <?xml not "

    if-ne v2, v4, :cond_15

    .line 2617
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 2618
    const/16 v4, 0x3e

    if-ne v2, v4, :cond_14

    .line 2624
    .end local v2    # "ch":C
    return-void

    .line 2619
    .restart local v2    # "ch":C
    :cond_14
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2613
    :cond_15
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2515
    .end local v2    # "ch":C
    :cond_16
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "only 1.0 is supported as <?xml version not \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v7, p2, v1

    invoke-direct {v5, v6, v1, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected printable(C)Ljava/lang/String;
    .locals 2
    .param p1, "ch"    # C

    .line 3102
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3103
    const-string v0, "\\n"

    return-object v0

    .line 3104
    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 3105
    const-string v0, "\\r"

    return-object v0

    .line 3106
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 3107
    const-string v0, "\\t"

    return-object v0

    .line 3108
    :cond_2
    const/16 v0, 0x27

    if-ne p1, v0, :cond_3

    .line 3109
    const-string v0, "\\\'"

    return-object v0

    .line 3110
    :cond_3
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_5

    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    goto :goto_0

    .line 3113
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

    .line 3111
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
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 3117
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3119
    .local v0, "sLen":I
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3120
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 3123
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3124
    return-object p1

    .line 3121
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const-string v1, ")"

    const-string v2, " (postion:"

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 964
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "processing namespaces must be enabled on parser (or factory) to have possible namespaces delcared on elements"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 990
    :cond_3
    return-void

    .line 973
    :cond_4
    :goto_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'"

    const-string v5, ""

    if-eqz p3, :cond_5

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

    goto :goto_2

    :cond_5
    move-object v6, v5

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, " and"

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    move-object v7, v6

    goto :goto_3

    :cond_6
    move-object v7, v5

    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-eqz p2, :cond_7

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

    goto :goto_4

    :cond_7
    move-object v7, v5

    :goto_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v7, " but got"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v7

    if-eq p1, v7, :cond_8

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_8
    move-object v7, v5

    :goto_5
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_9
    move-object v7, v5

    :goto_6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    move-object v6, v5

    :goto_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, " namespace \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected requireInput(C[C)C
    .locals 4
    .param p1, "ch"    # C
    .param p2, "input"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2973
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 2982
    return p1

    .line 2975
    :cond_0
    aget-char v1, p2, v0

    if-ne p1, v1, :cond_1

    .line 2980
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    .line 2973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2976
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-char v3, p2, v0

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected requireNextS()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2988
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 2989
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2993
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    return v1

    .line 2990
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "white space is required and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected reset()V
    .locals 2

    .line 380
    const/4 v0, 0x1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 382
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    .line 383
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    .line 384
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    .line 385
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 387
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 389
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    .line 391
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 393
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    .line 395
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    .line 396
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    .line 398
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    .line 399
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    .line 400
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    .line 401
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 403
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 405
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 407
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 408
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 409
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 410
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    .line 411
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 412
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    .line 414
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 415
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    .line 416
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    .line 418
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->resetStringCache()V

    .line 419
    return-void
.end method

.method protected resetStringCache()V
    .locals 0

    .line 66
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 437
    if-eqz p1, :cond_7

    .line 438
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-nez v0, :cond_0

    .line 441
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    goto :goto_0

    .line 439
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "namespace processing feature can only be changed before parsing"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 446
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    if-nez p2, :cond_2

    goto :goto_0

    .line 448
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "interning names in this implementation is not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_3
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 452
    if-nez p2, :cond_4

    goto :goto_0

    .line 453
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "processing DOCDECL is not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_5
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 463
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unsupporte feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature name should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 522
    if-eqz p1, :cond_2

    .line 526
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 528
    if-eqz p2, :cond_0

    .line 529
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .local v0, "reader":Ljava/io/Reader;
    goto :goto_0

    .line 534
    .end local v0    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v1

    .restart local v0    # "reader":Ljava/io/Reader;
    goto :goto_1

    .line 531
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 533
    :goto_0
    nop

    .line 536
    goto :goto_2

    .line 534
    :catch_1
    move-exception v1

    .local v1, "une":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "could not create reader for encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 538
    .end local v1    # "une":Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 540
    :goto_2
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->setInput(Ljava/io/Reader;)V

    .line 542
    iput-object p2, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    .line 543
    .end local v0    # "reader":Ljava/io/Reader;
    return-void

    .line 523
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input stream can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->reset()V

    .line 515
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    .line 516
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 494
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unsupported property: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected skipS(C)C
    .locals 1
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2999
    nop

    :goto_0
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3000
    return p1

    .line 2999
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    goto :goto_0
.end method
