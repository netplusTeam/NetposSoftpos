.class public Lorg/jdom2/output/support/WalkerNORMALIZE;
.super Lorg/jdom2/output/support/AbstractFormattedWalker;
.source "WalkerNORMALIZE.java"


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/jdom2/output/support/FormatStack;Z)V
    .locals 0
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "escape"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;",
            "Lorg/jdom2/output/support/FormatStack;",
            "Z)V"
        }
    .end annotation

    .line 78
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jdom2/output/support/AbstractFormattedWalker;-><init>(Ljava/util/List;Lorg/jdom2/output/support/FormatStack;Z)V

    .line 79
    return-void
.end method

.method private isSpaceFirst(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v0

    return v0

    .line 85
    :cond_0
    return v1
.end method

.method private isSpaceLast(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    .local v0, "tlen":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x1

    return v1

    .line 93
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V
    .locals 7
    .param p1, "mtext"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "needspace":Z
    const/4 v1, 0x0

    .line 102
    .local v1, "between":Z
    const/4 v2, 0x0

    .line 103
    .local v2, "ttext":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_8

    .line 104
    add-int v4, p2, v3

    invoke-virtual {p0, v4}, Lorg/jdom2/output/support/WalkerNORMALIZE;->get(I)Lorg/jdom2/Content;

    move-result-object v4

    .line 105
    .local v4, "c":Lorg/jdom2/Content;
    sget-object v5, Lorg/jdom2/output/support/WalkerNORMALIZE$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v4}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, " "

    packed-switch v5, :pswitch_data_0

    .line 140
    const/4 v2, 0x0

    .line 141
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 142
    sget-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v5, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :pswitch_0
    invoke-virtual {v4}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v2}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 125
    const/4 v0, 0x1

    goto :goto_2

    .line 128
    :cond_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceFirst(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    :cond_1
    sget-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v5, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 131
    :cond_2
    sget-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->COMPACT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v5, v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendCDATA(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x1

    .line 133
    invoke-direct {p0, v2}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceLast(Ljava/lang/String;)Z

    move-result v0

    .line 135
    goto :goto_2

    .line 107
    :pswitch_1
    invoke-virtual {v4}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v2}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 110
    const/4 v0, 0x1

    goto :goto_2

    .line 113
    :cond_3
    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    invoke-direct {p0, v2}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceFirst(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 114
    :cond_4
    sget-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v5, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 116
    :cond_5
    sget-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->COMPACT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v5, v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x1

    .line 118
    invoke-direct {p0, v2}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceLast(Ljava/lang/String;)Z

    move-result v0

    .line 120
    goto :goto_2

    .line 144
    :cond_6
    :goto_1
    invoke-virtual {p1, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendRaw(Lorg/jdom2/Content;)V

    .line 145
    const/4 v1, 0x1

    .line 146
    const/4 v0, 0x0

    .line 103
    .end local v4    # "c":Lorg/jdom2/Content;
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 150
    .end local v3    # "i":I
    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
