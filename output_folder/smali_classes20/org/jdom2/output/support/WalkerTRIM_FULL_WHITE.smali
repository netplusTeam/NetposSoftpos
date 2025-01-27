.class public Lorg/jdom2/output/support/WalkerTRIM_FULL_WHITE;
.super Lorg/jdom2/output/support/AbstractFormattedWalker;
.source "WalkerTRIM_FULL_WHITE.java"


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

    .line 79
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jdom2/output/support/AbstractFormattedWalker;-><init>(Ljava/util/List;Lorg/jdom2/output/support/FormatStack;Z)V

    .line 80
    return-void
.end method


# virtual methods
.method protected analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V
    .locals 5
    .param p1, "mtext"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 85
    move v0, p3

    .line 86
    .local v0, "ln":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 87
    add-int v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/jdom2/output/support/WalkerTRIM_FULL_WHITE;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    .line 88
    .local v1, "c":Lorg/jdom2/Content;
    instance-of v2, v1, Lorg/jdom2/Text;

    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {v1}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    goto :goto_1

    .line 96
    .end local v1    # "c":Lorg/jdom2/Content;
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    :goto_1
    if-gez v0, :cond_2

    .line 99
    return-void

    .line 103
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_3

    .line 104
    add-int v2, p2, v1

    invoke-virtual {p0, v2}, Lorg/jdom2/output/support/WalkerTRIM_FULL_WHITE;->get(I)Lorg/jdom2/Content;

    move-result-object v2

    .line 105
    .local v2, "c":Lorg/jdom2/Content;
    sget-object v3, Lorg/jdom2/output/support/WalkerTRIM_FULL_WHITE$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v2}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 116
    invoke-virtual {p1, v2}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendRaw(Lorg/jdom2/Content;)V

    goto :goto_3

    .line 110
    :pswitch_0
    sget-object v3, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {v2}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendCDATA(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 111
    goto :goto_3

    .line 107
    :pswitch_1
    sget-object v3, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {v2}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 108
    nop

    .line 103
    .end local v2    # "c":Lorg/jdom2/Content;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    .end local v1    # "i":I
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
