.class public Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;
.super Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;
.source "StaticXmlSerializerWrapper.java"

# interfaces
.implements Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;


# static fields
.field private static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xmldecl-standalone"

.field private static final TRACE_SIZING:Z = false


# instance fields
.field protected currentNs:Ljava/lang/String;

.field protected fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

.field protected namespaceDepth:[I

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespaceUri:[Ljava/lang/String;

.field protected wf:Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlSerializer;Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;)V
    .locals 2
    .param p1, "xs"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "wf"    # Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;

    .line 33
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 100
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    .line 101
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    .line 34
    iput-object p2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->wf:Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;

    .line 35
    return-void
.end method

.method private ensureNamespacesCapacity()V
    .locals 7

    .line 104
    iget v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 109
    .local v1, "newSize":I
    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    .line 110
    .local v2, "newNamespacePrefix":[Ljava/lang/String;
    new-array v3, v1, [Ljava/lang/String;

    .line 111
    .local v3, "newNamespaceUri":[Ljava/lang/String;
    new-array v4, v1, [I

    .line 112
    .local v4, "newNamespaceDepth":[I
    iget-object v5, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 113
    const/4 v6, 0x0

    invoke-static {v5, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    iget v5, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    invoke-static {v0, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    iget v5, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    :cond_1
    iput-object v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 118
    iput-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    .line 119
    iput-object v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    .line 120
    .end local v1    # "newSize":I
    .end local v2    # "newNamespacePrefix":[Ljava/lang/String;
    .end local v3    # "newNamespaceUri":[Ljava/lang/String;
    .end local v4    # "newNamespaceDepth":[I
    return-void
.end method

.method private writeStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    .line 257
    .local v0, "nsStart":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v1

    .line 258
    .local v1, "nsEnd":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "prefix":Ljava/lang/String;
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "ns":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "ns":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "nsStart":I
    .end local v1    # "nsEnd":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 273
    .end local v0    # "i":I
    return-void

    .line 267
    .restart local v0    # "i":I
    :cond_2
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "elementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 78
    if-eqz p2, :cond_1

    .line 82
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    if-nez p3, :cond_0

    .line 84
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v2, "nil"

    const-string v3, "true"

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    :goto_0
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    return-object p0

    .line 79
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "name for element can not be null"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endTag(Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    return-object p0
.end method

.method public escapeAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .line 279
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 280
    .local v0, "posLt":I
    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 281
    .local v1, "posAmp":I
    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 282
    .local v2, "posQuot":I
    const/16 v3, 0x27

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 283
    .local v3, "posApos":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    if-ne v1, v4, :cond_0

    if-ne v2, v4, :cond_0

    if-ne v3, v4, :cond_0

    .line 284
    return-object p1

    .line 286
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 289
    .local v4, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "pos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "len":I
    :goto_0
    if-lt v5, v6, :cond_1

    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 290
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 291
    .local v7, "ch":C
    sparse-switch v7, :sswitch_data_0

    .line 305
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 293
    :sswitch_0
    const-string v8, "&lt;"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    goto :goto_1

    .line 299
    :sswitch_1
    const-string v8, "&apos;"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    goto :goto_1

    .line 296
    :sswitch_2
    const-string v8, "&amp;"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    goto :goto_1

    .line 302
    :sswitch_3
    const-string v8, "&quot;"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    nop

    .line 289
    .end local v7    # "ch":C
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method public escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .line 316
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 317
    .local v1, "posLt":I
    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 318
    .local v3, "posAmp":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    .line 319
    return-object p1

    .line 321
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 323
    .local v5, "buf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 324
    .local v6, "pos":I
    nop

    .line 325
    :goto_0
    if-ne v1, v4, :cond_1

    if-ne v3, v4, :cond_1

    .line 326
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    nop

    .line 347
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_1
    if-eq v1, v4, :cond_6

    if-eq v1, v4, :cond_2

    if-eq v3, v4, :cond_2

    if-ge v3, v1, :cond_2

    goto :goto_2

    .line 335
    :cond_2
    if-eq v3, v4, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v3, v4, :cond_3

    if-ge v1, v3, :cond_3

    goto :goto_1

    .line 343
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "wrong state posLt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " posAmp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_4
    :goto_1
    if-ge v6, v1, :cond_5

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    :cond_5
    const-string v7, "&lt;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    add-int/lit8 v6, v1, 0x1

    .line 341
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    .line 331
    :cond_6
    :goto_2
    if-ge v6, v3, :cond_7

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_7
    const-string v7, "&amp;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    add-int/lit8 v6, v3, 0x1

    .line 334
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0
.end method

.method public event(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 199
    .local v0, "eventType":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object v2, v1

    .line 249
    .local v1, "standalone":Ljava/lang/Boolean;
    .local v2, "s":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->docdecl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    .end local v1    # "standalone":Ljava/lang/Boolean;
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_1
    move-object v2, v1

    .line 245
    .restart local v1    # "standalone":Ljava/lang/Boolean;
    .restart local v2    # "s":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->comment(Ljava/lang/String;)V

    .line 246
    goto :goto_0

    .line 199
    .end local v1    # "standalone":Ljava/lang/Boolean;
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_2
    move-object v2, v1

    .line 241
    .restart local v1    # "standalone":Ljava/lang/Boolean;
    .restart local v2    # "s":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->processingInstruction(Ljava/lang/String;)V

    .line 242
    goto :goto_0

    .line 220
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2    # "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->ignorableWhitespace(Ljava/lang/String;)V

    .line 222
    goto :goto_0

    .line 199
    .end local v1    # "standalone":Ljava/lang/Boolean;
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_4
    move-object v2, v1

    .line 233
    .restart local v1    # "standalone":Ljava/lang/Boolean;
    .restart local v2    # "s":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->entityRef(Ljava/lang/String;)V

    .line 234
    goto :goto_0

    .line 199
    .end local v1    # "standalone":Ljava/lang/Boolean;
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_5
    move-object v2, v1

    .line 237
    .restart local v1    # "standalone":Ljava/lang/Boolean;
    .restart local v2    # "s":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->cdsect(Ljava/lang/String;)V

    .line 238
    goto :goto_0

    .line 199
    .end local v1    # "standalone":Ljava/lang/Boolean;
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_6
    move-object v2, v1

    .line 225
    .restart local v1    # "standalone":Ljava/lang/Boolean;
    .restart local v2    # "s":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-lez v3, :cond_0

    .line 226
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->ignorableWhitespace(Ljava/lang/String;)V

    .line 230
    goto :goto_0

    .line 215
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    goto :goto_0

    .line 211
    :pswitch_8
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 212
    goto :goto_0

    .line 207
    :pswitch_9
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->endDocument()V

    .line 208
    goto :goto_0

    .line 202
    .end local v1    # "standalone":Ljava/lang/Boolean;
    :pswitch_a
    const-string v1, "http://xmlpull.org/v1/doc/features.html#xmldecl-standalone"

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 203
    .restart local v1    # "standalone":Ljava/lang/Boolean;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    nop

    .line 252
    .end local v0    # "eventType":I
    .end local v1    # "standalone":Ljava/lang/Boolean;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fragment(Ljava/lang/String;)V
    .locals 8
    .param p1, "xmlFragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    mul-int/lit8 v2, v2, 0x1e

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 155
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "<fragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "pos":I
    :goto_0
    if-gez v1, :cond_2

    .line 173
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v3, "</fragment>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    if-nez v3, :cond_0

    .line 178
    iget-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->wf:Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;

    invoke-virtual {v3}, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->newPullParserWrapper()Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    move-result-object v3

    iput-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 180
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->setInput(Ljava/io/Reader;)V

    .line 183
    iget-object v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-interface {v4}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->nextTag()I

    .line 184
    iget-object v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "fragment"

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_1
    nop

    .line 186
    iget-object v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-interface {v4}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->nextToken()I

    .line 187
    iget-object v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-interface {v4}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->getDepth()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-interface {v4}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 190
    nop

    .line 194
    iget-object v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "pos":I
    .end local v3    # "s":Ljava/lang/String;
    return-void

    .line 192
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "pos":I
    .restart local v3    # "s":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    invoke-virtual {p0, v4}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->event(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 158
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 159
    .local v3, "prefix":Ljava/lang/String;
    iget v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_2
    if-gt v4, v1, :cond_4

    .line 164
    const-string v5, " xmlns"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 166
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_3
    const-string v5, "=\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v5, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->escapeAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 160
    :cond_4
    iget-object v5, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 161
    nop

    .line 157
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "i":I
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 159
    .restart local v3    # "prefix":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method public getCurrentNamespaceForElements()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentNamespaceForElements(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    .line 42
    .local v0, "old":Ljava/lang/String;
    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    .line 43
    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->getDepth()I

    move-result v0

    .line 135
    .local v0, "depth":I
    iget v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "pos":I
    :goto_0
    if-gez v1, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    aget v2, v2, v1

    if-gt v2, v0, :cond_2

    .line 137
    nop

    .line 142
    :goto_1
    iget v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    iget-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 143
    invoke-direct {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->ensureNamespacesCapacity()V

    .line 145
    :cond_1
    iget-object v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    iget v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    aput-object p1, v2, v3

    .line 146
    iget-object v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    aput-object p2, v2, v3

    .line 147
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 149
    .end local v0    # "depth":I
    .end local v1    # "pos":I
    return-void

    .line 139
    .restart local v0    # "depth":I
    .restart local v1    # "pos":I
    :cond_2
    iget v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 135
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    return-object p0
.end method

.method public wiriteStringElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    invoke-virtual {p0, p3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 354
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "INF"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 356
    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "-INF"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    :goto_0
    return-void
.end method

.method public writeDoubleElement(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    invoke-virtual {p0, p3, p4}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeDouble(D)V

    .line 395
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 366
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "INF"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 368
    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "-INF"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    :goto_0
    return-void
.end method

.method public writeFloatElement(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    invoke-virtual {p0, p3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeFloat(F)V

    .line 403
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    return-void
.end method

.method public writeIntElement(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    invoke-virtual {p0, p3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeInt(I)V

    .line 411
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 384
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    return-void

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null string can not be written"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
