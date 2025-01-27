.class public Lorg/xmlpull/mxp1_serializer/MXSerializer;
.super Ljava/lang/Object;
.source "MXSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final TRACE_SIZING:Z = false

.field protected static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field protected static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field protected static final precomputedPrefixes:[Ljava/lang/String;


# instance fields
.field protected final FEATURE_NAMES_INTERNED:Ljava/lang/String;

.field protected final FEATURE_SERIALIZER_ATTVALUE_USE_APOSTROPHE:Ljava/lang/String;

.field protected final PROPERTY_SERIALIZER_INDENTATION:Ljava/lang/String;

.field protected final PROPERTY_SERIALIZER_LINE_SEPARATOR:Ljava/lang/String;

.field protected attributeUseApostrophe:Z

.field protected autoDeclaredPrefixes:I

.field private checkNamesInterned:Z

.field protected depth:I

.field protected doIndent:Z

.field protected elName:[Ljava/lang/String;

.field protected elNamespace:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected finished:Z

.field protected indentationBuf:[C

.field protected indentationJump:I

.field protected indentationString:Ljava/lang/String;

.field protected lineSeparator:Ljava/lang/String;

.field protected maxIndentLevel:I

.field protected namesInterned:Z

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespaceUri:[Ljava/lang/String;

.field protected offsetNewLine:I

.field protected out:Ljava/io/Writer;

.field protected pastRoot:Z

.field protected seenTag:Z

.field protected setPrefixCalled:Z

.field protected startTagIncomplete:Z

.field protected writeIndentation:Z

.field protected writeLineSepartor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 73
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/xmlpull/mxp1_serializer/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 78
    .end local v0    # "i":I
    return-void

    .line 76
    .restart local v0    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "http://xmlpull.org/v1/doc/features.html#serializer-attvalue-use-apostrophe"

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->FEATURE_SERIALIZER_ATTVALUE_USE_APOSTROPHE:Ljava/lang/String;

    .line 33
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->FEATURE_NAMES_INTERNED:Ljava/lang/String;

    .line 35
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->PROPERTY_SERIALIZER_INDENTATION:Ljava/lang/String;

    .line 37
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->PROPERTY_SERIALIZER_LINE_SEPARATOR:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    .line 44
    const-string v0, "\n"

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    .line 53
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    .line 54
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    .line 55
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    .line 58
    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    .line 59
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    .line 60
    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    .line 80
    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    return-void
.end method

.method private static addPrintable(Ljava/lang/StringBuffer;C)V
    .locals 4
    .param p0, "retval"    # Ljava/lang/StringBuffer;
    .param p1, "ch"    # C

    .line 894
    sparse-switch p1, :sswitch_data_0

    .line 921
    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7e

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 918
    :sswitch_0
    const-string v0, "\\\\"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    goto :goto_1

    .line 915
    :sswitch_1
    const-string v0, "\\\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 916
    goto :goto_1

    .line 912
    :sswitch_2
    const-string v0, "\\\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 913
    goto :goto_1

    .line 909
    :sswitch_3
    const-string v0, "\\r"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 910
    goto :goto_1

    .line 906
    :sswitch_4
    const-string v0, "\\f"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 907
    goto :goto_1

    .line 903
    :sswitch_5
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 904
    goto :goto_1

    .line 900
    :sswitch_6
    const-string v0, "\\t"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 901
    goto :goto_1

    .line 897
    :sswitch_7
    const-string v0, "\\b"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 898
    goto :goto_1

    .line 925
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 922
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "ss":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    .end local v0    # "ss":Ljava/lang/String;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private checkInterning(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "all names passed as arguments must be internedwhen NAMES INTERNED feature is enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    :goto_0
    return-void
.end method

.method private generatePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;

    .line 449
    nop

    .line 450
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->autoDeclaredPrefixes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->autoDeclaredPrefixes:I

    .line 452
    sget-object v1, Lorg/xmlpull/mxp1_serializer/MXSerializer;->precomputedPrefixes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->autoDeclaredPrefixes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_2

    .line 463
    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 464
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->ensureNamespacesCapacity()V

    .line 466
    :cond_1
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    aput-object v0, v2, v3

    .line 467
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aput-object p1, v2, v3

    .line 468
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    .line 470
    return-object v0

    .line 457
    :cond_2
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 455
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method protected static final printable(C)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # C

    .line 887
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 888
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->addPrintable(Ljava/lang/StringBuffer;C)V

    .line 889
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static final printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 875
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 876
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 877
    .local v0, "retval":Ljava/lang/StringBuffer;
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 879
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 882
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 880
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v0, v3}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->addPrintable(Ljava/lang/StringBuffer;C)V

    .line 879
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private writeNamespaceDeclarations()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    if-lt v0, v1, :cond_0

    .line 620
    .end local v0    # "i":I
    return-void

    .line 606
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 607
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, " xmlns:"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 611
    :cond_1
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, " xmlns="

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 613
    :goto_1
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    const/16 v3, 0x27

    const/16 v4, 0x22

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 616
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, v1, v2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeAttributeValue(Ljava/lang/String;Ljava/io/Writer;)V

    .line 618
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_6

    .line 554
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 556
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 558
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 560
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_1

    .line 561
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    .line 563
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 567
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->generatePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_2
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 573
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 576
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    const/16 v2, 0x27

    const/16 v3, 0x22

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 577
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, p3, v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeAttributeValue(Ljava/lang/String;Ljava/io/Writer;)V

    .line 578
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 579
    return-object p0

    .line 551
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startTag() must be called before attribute()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 704
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 705
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method protected closeStartTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->finished:Z

    if-nez v0, :cond_2

    .line 586
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-nez v0, :cond_1

    .line 590
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeNamespaceDeclarations()V

    .line 596
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 597
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    aput v2, v0, v1

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    .line 599
    return-void

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trying to close start tag that is not opened"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startTag() must be called immediately after setPrefix()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trying to write past already finished output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 731
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 732
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 740
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 741
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<!DOCTYPE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    nop

    :goto_0
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    if-gtz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->pastRoot:Z

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->finished:Z

    .line 364
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 365
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {p0, v1, v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    if-eqz p1, :cond_1

    .line 630
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 632
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_1

    .line 633
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    .line 637
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v0, v0, v1

    const-string v1, " and not "

    if-ne p1, v0, :cond_a

    .line 643
    if-eqz p2, :cond_9

    .line 646
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-eqz v0, :cond_2

    .line 647
    invoke-direct {p0, p2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    .line 650
    :cond_2
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v0, v0, v2

    if-ne p2, v0, :cond_4

    goto :goto_1

    .line 653
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected element name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    iget v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 657
    invoke-direct {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeNamespaceDeclarations()V

    .line 658
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, " />"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 659
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    goto :goto_2

    .line 661
    :cond_6
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    .line 663
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeIndent()V

    .line 664
    :cond_7
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 665
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 667
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 670
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 671
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 674
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 678
    :goto_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget v0, v0, v2

    iput v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    .line 680
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 681
    return-object p0

    .line 644
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end tag name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected namespace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected ensureElementsCapacity()V
    .locals 7

    .line 133
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    array-length v1, v0

    .line 136
    .local v1, "elStackSize":I
    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    add-int/lit8 v2, v2, 0x2

    .line 141
    .local v2, "newSize":I
    const/4 v3, 0x0

    if-lez v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 142
    .local v4, "needsCopying":Z
    :goto_1
    const/4 v5, 0x0

    .line 144
    .local v5, "arr":[Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    .line 145
    if-eqz v4, :cond_2

    invoke-static {v0, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    :cond_2
    iput-object v5, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    .line 147
    new-array v0, v2, [Ljava/lang/String;

    .line 148
    .end local v5    # "arr":[Ljava/lang/String;
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v4, :cond_3

    iget-object v5, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    invoke-static {v5, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    :cond_3
    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    .line 151
    new-array v5, v2, [I

    .line 152
    .local v5, "iarr":[I
    if-eqz v4, :cond_4

    .line 153
    iget-object v6, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    invoke-static {v6, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 156
    :cond_4
    aput v3, v5, v3

    .line 158
    :goto_2
    iput-object v5, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    .line 159
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "elStackSize":I
    .end local v2    # "newSize":I
    .end local v4    # "needsCopying":Z
    .end local v5    # "iarr":[I
    return-void
.end method

.method protected ensureNamespacesCapacity()V
    .locals 6

    .line 167
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 172
    .local v1, "newSize":I
    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    .line 173
    .local v2, "newNamespacePrefix":[Ljava/lang/String;
    new-array v3, v1, [Ljava/lang/String;

    .line 174
    .local v3, "newNamespaceUri":[Ljava/lang/String;
    iget-object v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 175
    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    iget v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    :cond_1
    iput-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    .line 181
    iput-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    .line 195
    .end local v1    # "newSize":I
    .end local v2    # "newNamespacePrefix":[Ljava/lang/String;
    .end local v3    # "newNamespaceUri":[Ljava/lang/String;
    return-void
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 713
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 714
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 715
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 717
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 756
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 757
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 476
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 215
    if-eqz p1, :cond_2

    .line 218
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    return v0

    .line 220
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#serializer-attvalue-use-apostrophe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    return v0

    .line 223
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 486
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .line 481
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z

    .line 415
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    .line 418
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_1

    .line 419
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_1
    if-eqz p1, :cond_6

    .line 426
    :goto_0
    move-object v0, p1

    .end local p1    # "namespace":Ljava/lang/String;
    .local v0, "namespace":Ljava/lang/String;
    :goto_1
    iget p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    add-int/lit8 p1, p1, -0x1

    .local p1, "i":I
    :goto_2
    if-gez p1, :cond_3

    .line 441
    if-nez p2, :cond_2

    .line 442
    const/4 v1, 0x0

    return-object v1

    .line 444
    :cond_2
    invoke-direct {p0, v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->generatePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 428
    :cond_3
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_5

    .line 429
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 431
    .local v1, "prefix":Ljava/lang/String;
    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "p":I
    :goto_3
    if-gt v2, p1, :cond_4

    .line 436
    return-object v1

    .line 433
    :cond_4
    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 431
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 426
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "p":I
    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 422
    .end local v0    # "namespace":Ljava/lang/String;
    .local p1, "namespace":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "namespace must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 307
    if-eqz p1, :cond_2

    .line 310
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    return-object v0

    .line 312
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    return-object v0

    .line 315
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "property name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 749
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 750
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method protected lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;

    .line 409
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 722
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 723
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method protected rebuildIndentationBuf()V
    .locals 8

    .line 240
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    const/16 v0, 0x41

    .line 242
    .local v0, "maxIndent":I
    const/4 v1, 0x0

    .line 243
    .local v1, "bufSize":I
    const/4 v2, 0x0

    iput v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->offsetNewLine:I

    .line 244
    iget-boolean v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeLineSepartor:Z

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->offsetNewLine:I

    .line 246
    add-int/2addr v1, v3

    .line 248
    :cond_1
    iput v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->maxIndentLevel:I

    .line 249
    iget-boolean v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeIndentation:Z

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationJump:I

    .line 251
    const/16 v3, 0x41

    div-int/2addr v3, v2

    iput v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->maxIndentLevel:I

    .line 252
    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 254
    :cond_2
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationBuf:[C

    if-eqz v2, :cond_3

    array-length v2, v2

    if-ge v2, v1, :cond_4

    .line 255
    :cond_3
    add-int/lit8 v2, v1, 0x8

    new-array v2, v2, [C

    iput-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationBuf:[C

    .line 257
    :cond_4
    const/4 v2, 0x0

    .line 258
    .local v2, "bufPos":I
    iget-boolean v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeLineSepartor:Z

    if-eqz v3, :cond_6

    .line 259
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_5

    goto :goto_1

    .line 261
    :cond_5
    iget-object v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationBuf:[C

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "bufPos":I
    .local v5, "bufPos":I
    iget-object v6, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v2

    .line 259
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    .line 264
    .end local v3    # "i":I
    .end local v5    # "bufPos":I
    .restart local v2    # "bufPos":I
    :cond_6
    :goto_1
    iget-boolean v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeIndentation:Z

    if-eqz v3, :cond_9

    .line 265
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->maxIndentLevel:I

    if-lt v3, v4, :cond_7

    goto :goto_4

    .line 267
    :cond_7
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget-object v5, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 265
    .end local v4    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 269
    .restart local v4    # "j":I
    :cond_8
    iget-object v5, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationBuf:[C

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "bufPos":I
    .local v6, "bufPos":I
    iget-object v7, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v5, v2

    .line 267
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_3

    .line 273
    .end local v0    # "maxIndent":I
    .end local v1    # "bufSize":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "bufPos":I
    :cond_9
    :goto_4
    return-void
.end method

.method protected reset()V
    .locals 6

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->autoDeclaredPrefixes:I

    .line 93
    iput v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    .line 96
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 104
    iput v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    .line 115
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    const-string v3, "xmlns"

    aput-object v3, v0, v1

    .line 116
    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    const-string v4, "http://www.w3.org/2000/xmlns/"

    aput-object v4, v3, v1

    .line 117
    const/4 v4, 0x0

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    .line 119
    const-string v5, "xml"

    aput-object v5, v0, v4

    .line 120
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    aput-object v0, v3, v4

    .line 121
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    .line 123
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->finished:Z

    .line 124
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->pastRoot:Z

    .line 125
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    .line 126
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    .line 128
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 129
    .end local v2    # "i":I
    return-void

    .line 98
    .restart local v2    # "i":I
    :cond_0
    iget-object v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    aput-object v0, v4, v2

    .line 99
    iget-object v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    aput-object v0, v4, v2

    .line 100
    const/4 v4, 0x2

    aput v4, v3, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 201
    if-eqz p1, :cond_2

    .line 204
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iput-boolean p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    goto :goto_0

    .line 206
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#serializer-attvalue-use-apostrophe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iput-boolean p2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unsupported feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->reset()V

    .line 330
    if-eqz p2, :cond_0

    .line 331
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    goto :goto_0

    .line 333
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    .line 335
    :goto_0
    return-void

    .line 328
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output stream can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    .line 322
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->reset()V

    .line 323
    iput-object p1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    .line 324
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 372
    :cond_0
    if-nez p1, :cond_1

    .line 373
    const-string p1, ""

    .line 375
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v0, :cond_2

    .line 376
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 377
    :cond_2
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v0, :cond_3

    .line 378
    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_3
    if-eqz p1, :cond_a

    .line 384
    :goto_0
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespaceCount:[I

    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    aget v0, v0, v1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    if-lt v0, v1, :cond_8

    .line 391
    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v1, :cond_4

    .line 392
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 393
    :cond_4
    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v1, :cond_5

    .line 394
    invoke-direct {p0, p2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    goto :goto_2

    .line 395
    :cond_5
    if-eqz p2, :cond_7

    .line 399
    :goto_2
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_6

    .line 400
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->ensureNamespacesCapacity()V

    .line 402
    :cond_6
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    aput-object p1, v1, v2

    .line 403
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aput-object p2, v1, v2

    .line 404
    const/4 v1, 0x1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    .line 405
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    .line 406
    .end local v0    # "i":I
    return-void

    .line 396
    .restart local v0    # "i":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "namespace must be not null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_8
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eq p1, v1, :cond_9

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "duplicated prefix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    .end local v0    # "i":I
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefix must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 285
    if-eqz p1, :cond_6

    .line 288
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    .line 295
    :goto_0
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lineSeparator:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeLineSepartor:Z

    .line 296
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeIndentation:Z

    .line 298
    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationString:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeLineSepartor:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    .line 301
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->rebuildIndentationBuf()V

    .line 302
    iput-boolean v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 303
    return-void

    .line 293
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unsupported property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "property name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "<?xml version=\"1.0\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, " encoding=\'"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 345
    :cond_0
    if-eqz p2, :cond_2

    .line 346
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, " standalone=\'yes\'"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, " standalone=\'no\'"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 352
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 495
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeIndent()V

    .line 498
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 499
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    .line 500
    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    .line 501
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    .line 502
    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 503
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->ensureElementsCapacity()V

    .line 507
    :cond_2
    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    .line 508
    :cond_3
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elNamespace:[Ljava/lang/String;

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    iget-boolean v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v3, :cond_5

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    :goto_0
    move-object v3, p1

    :goto_1
    aput-object v3, v1, v2

    .line 511
    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkNamesInterned:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, p2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->checkInterning(Ljava/lang/String;)V

    .line 512
    :cond_6
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->elName:[Ljava/lang/String;

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    iget-boolean v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namesInterned:Z

    if-nez v3, :cond_8

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    :goto_2
    move-object v3, p2

    :goto_3
    aput-object v3, v1, v2

    .line 513
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 514
    if-eqz p1, :cond_f

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 516
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->lookupOrDeclarePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 520
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .end local v0    # "prefix":Ljava/lang/String;
    :cond_9
    goto :goto_5

    .line 525
    :cond_a
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceEnd:I

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_4
    if-gez v1, :cond_b

    goto :goto_5

    .line 527
    :cond_b
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, ""

    if-ne v0, v2, :cond_e

    .line 528
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->namespaceUri:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 529
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 531
    invoke-virtual {p0, v2, v2}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 532
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_d

    goto :goto_5

    .line 533
    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "start tag can not be written in empty default namespace as default namespace is currently bound to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 525
    .end local v0    # "uri":Ljava/lang/String;
    :cond_e
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 543
    .end local v1    # "i":I
    :cond_f
    :goto_5
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 544
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 688
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 689
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeElementContent(Ljava/lang/String;Ljava/io/Writer;)V

    .line 690
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->startTagIncomplete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->setPrefixCalled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->closeStartTag()V

    .line 696
    :cond_1
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->doIndent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->seenTag:Z

    .line 697
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeElementContent([CIILjava/io/Writer;)V

    .line 698
    return-object p0
.end method

.method protected writeAttributeValue(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->attributeUseApostrophe:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x27

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    .line 765
    .local v1, "quot":C
    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "&apos;"

    goto :goto_1

    :cond_1
    const-string v0, "&quot;"

    .line 766
    .local v0, "quotEntity":Ljava/lang/String;
    :goto_1
    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 767
    .local v3, "posLt":I
    const/16 v4, 0x26

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 768
    .local v5, "posAmp":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 770
    .local v6, "posQuot":I
    const/4 v7, 0x0

    .line 771
    .local v7, "pos":I
    nop

    .line 772
    :goto_2
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    if-ne v5, v8, :cond_3

    if-ne v6, v8, :cond_3

    .line 773
    if-lez v7, :cond_2

    .line 774
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 776
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 778
    nop

    .line 811
    .end local v0    # "quotEntity":Ljava/lang/String;
    .end local v1    # "quot":C
    .end local v3    # "posLt":I
    .end local v5    # "posAmp":I
    .end local v6    # "posQuot":I
    .end local v7    # "pos":I
    :goto_3
    return-void

    .line 779
    .restart local v0    # "quotEntity":Ljava/lang/String;
    .restart local v1    # "quot":C
    .restart local v3    # "posLt":I
    .restart local v5    # "posAmp":I
    .restart local v6    # "posQuot":I
    .restart local v7    # "pos":I
    :cond_3
    if-eq v6, v8, :cond_7

    if-eq v5, v8, :cond_4

    if-eq v5, v8, :cond_7

    if-ge v6, v5, :cond_7

    :cond_4
    if-eq v3, v8, :cond_5

    if-eq v3, v8, :cond_7

    if-ge v6, v3, :cond_7

    .line 784
    :cond_5
    if-ge v7, v6, :cond_6

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 785
    :cond_6
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 786
    add-int/lit8 v7, v6, 0x1

    .line 787
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    goto :goto_2

    .line 788
    :cond_7
    if-eq v5, v8, :cond_b

    if-eq v6, v8, :cond_8

    if-eq v6, v8, :cond_b

    if-ge v5, v6, :cond_b

    :cond_8
    if-eq v3, v8, :cond_9

    if-eq v3, v8, :cond_b

    if-ge v5, v3, :cond_b

    .line 793
    :cond_9
    if-ge v7, v5, :cond_a

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 794
    :cond_a
    const-string v8, "&amp;"

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 795
    add-int/lit8 v7, v5, 0x1

    .line 796
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_2

    .line 797
    :cond_b
    if-eq v3, v8, :cond_f

    if-eq v6, v8, :cond_c

    if-eq v6, v8, :cond_f

    if-ge v3, v6, :cond_f

    :cond_c
    if-eq v5, v8, :cond_d

    if-eq v5, v8, :cond_f

    if-ge v3, v5, :cond_f

    .line 802
    :cond_d
    if-ge v7, v3, :cond_e

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 803
    :cond_e
    const-string v8, "&lt;"

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 804
    add-int/lit8 v7, v3, 0x1

    .line 805
    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_2

    .line 807
    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "wrong state #1 posLt="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, " posAmp="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, " posQuot="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v8, " for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected writeElementContent(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 818
    .local v1, "posLt":I
    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 820
    .local v3, "posAmp":I
    const/4 v4, 0x0

    .line 821
    .local v4, "pos":I
    nop

    .line 822
    :goto_0
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    if-ne v3, v5, :cond_0

    .line 823
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 824
    nop

    .line 844
    .end local v1    # "posLt":I
    .end local v3    # "posAmp":I
    .end local v4    # "pos":I
    return-void

    .line 825
    .restart local v1    # "posLt":I
    .restart local v3    # "posAmp":I
    .restart local v4    # "pos":I
    :cond_0
    if-eq v1, v5, :cond_5

    if-eq v1, v5, :cond_1

    if-eq v3, v5, :cond_1

    if-ge v3, v1, :cond_1

    goto :goto_2

    .line 832
    :cond_1
    if-eq v3, v5, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v3, v5, :cond_2

    if-ge v1, v3, :cond_2

    goto :goto_1

    .line 840
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "wrong state posLt="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, " posAmp="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, " for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_3
    :goto_1
    if-ge v4, v1, :cond_4

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 836
    :cond_4
    const-string v5, "&lt;"

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 837
    add-int/lit8 v4, v1, 0x1

    .line 838
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    .line 828
    :cond_5
    :goto_2
    if-ge v4, v3, :cond_6

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 829
    :cond_6
    const-string v5, "&amp;"

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 830
    add-int/lit8 v4, v3, 0x1

    .line 831
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0
.end method

.method protected writeElementContent([CIILjava/io/Writer;)V
    .locals 5
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    add-int v0, p2, p3

    .line 850
    .local v0, "end":I
    move v1, p2

    .line 851
    .local v1, "pos":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 868
    if-le v0, v1, :cond_0

    .line 869
    sub-int v3, v0, v1

    invoke-virtual {p4, p1, v1, v3}, Ljava/io/Writer;->write([CII)V

    .line 871
    .end local v0    # "end":I
    .end local v1    # "pos":I
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 853
    .restart local v0    # "end":I
    .restart local v1    # "pos":I
    .restart local v2    # "i":I
    :cond_1
    aget-char v3, p1, v2

    .line 854
    .local v3, "ch":C
    const/16 v4, 0x26

    if-ne v3, v4, :cond_3

    .line 855
    if-le v2, v1, :cond_2

    .line 856
    sub-int v4, v2, v1

    invoke-virtual {p4, p1, v1, v4}, Ljava/io/Writer;->write([CII)V

    .line 858
    :cond_2
    const-string v4, "&amp;"

    invoke-virtual {p4, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 859
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 860
    :cond_3
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_5

    .line 861
    if-le v2, v1, :cond_4

    .line 862
    sub-int v4, v2, v1

    invoke-virtual {p4, p1, v1, v4}, Ljava/io/Writer;->write([CII)V

    .line 864
    :cond_4
    const-string v4, "&lt;"

    invoke-virtual {p4, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 865
    add-int/lit8 v1, v2, 0x1

    .line 851
    .end local v3    # "ch":C
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected writeIndent()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-boolean v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->writeLineSepartor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->offsetNewLine:I

    .line 278
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->depth:I

    iget v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->maxIndentLevel:I

    if-le v1, v2, :cond_1

    move v1, v2

    .line 279
    .local v1, "level":I
    :cond_1
    iget-object v2, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->out:Ljava/io/Writer;

    iget-object v3, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationBuf:[C

    iget v4, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->indentationJump:I

    mul-int/2addr v4, v1

    iget v5, p0, Lorg/xmlpull/mxp1_serializer/MXSerializer;->offsetNewLine:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/Writer;->write([CII)V

    .line 280
    .end local v0    # "start":I
    .end local v1    # "level":I
    return-void
.end method
