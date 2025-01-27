.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;
.super Ljava/lang/Object;
.source "CssAttributeSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private matchSymbol:C

.field private property:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "attrSelector"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->matchSymbol:C

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    .line 73
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 74
    .local v1, "indexOfEqual":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    goto :goto_2

    .line 77
    :cond_0
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    .line 82
    :goto_1
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->matchSymbol:C

    .line 83
    const-string/jumbo v5, "~^$*|"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 84
    iput-char v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->matchSymbol:C

    .line 85
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    goto :goto_2

    .line 87
    :cond_3
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    .line 90
    :goto_2
    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    .line 97
    const/16 v0, 0x400

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 6
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 105
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_8

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 108
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 109
    .local v0, "element":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "attributeValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 111
    return v1

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 114
    return v4

    .line 116
    :cond_2
    iget-char v5, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->matchSymbol:C

    sparse-switch v5, :sswitch_data_0

    .line 131
    return v1

    .line 126
    :sswitch_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v3, v5, v4

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const-string v1, "(^{0}\\s+)|(\\s+{1}\\s+)|(\\s+{2}$)"

    invoke-static {v1, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "pattern":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3

    .line 120
    .end local v1    # "pattern":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_3

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1

    .line 122
    :sswitch_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v4

    :cond_5
    return v1

    .line 129
    :sswitch_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v4

    :cond_6
    return v1

    .line 124
    :sswitch_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v4

    :cond_7
    return v1

    .line 118
    :sswitch_5
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 106
    .end local v0    # "element":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .end local v2    # "attributeValue":Ljava/lang/String;
    :cond_8
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x24 -> :sswitch_4
        0x2a -> :sswitch_3
        0x5e -> :sswitch_2
        0x7c -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 142
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "[{0}]"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-char v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->matchSymbol:C

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "[{0}{1}=\"{2}\"]"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
