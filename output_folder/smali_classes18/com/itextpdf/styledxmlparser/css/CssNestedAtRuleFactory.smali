.class public final Lcom/itextpdf/styledxmlparser/css/CssNestedAtRuleFactory;
.super Ljava/lang/Object;
.source "CssNestedAtRuleFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static createNestedRule(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;
    .locals 3
    .param p0, "ruleDeclaration"    # Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRuleFactory;->extractRuleNameFromDeclaration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "ruleName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "ruleParameters":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "top-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "left-top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "left-middle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "left-bottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "bottom-left-corner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "bottom-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "bottom-right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v2, "right-middle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v2, "right-bottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_a
    const-string v2, "page"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_b
    const-string/jumbo v2, "top-right-corner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_c
    const-string v2, "bottom-right-corner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_d
    const-string v2, "bottom-left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto :goto_1

    :sswitch_e
    const-string/jumbo v2, "top-left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_f
    const-string/jumbo v2, "top-right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_10
    const-string/jumbo v2, "top-left-corner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_11
    const-string/jumbo v2, "right-top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_12
    const-string v2, "font-face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 97
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-direct {v2, v0, v1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 95
    :pswitch_0
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;

    invoke-direct {v2}, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;-><init>()V

    return-object v2

    .line 93
    :pswitch_1
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 76
    :pswitch_2
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;

    invoke-direct {v2, v1}, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 74
    :pswitch_3
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;

    invoke-direct {v2, v1}, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;-><init>(Ljava/lang/String;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e8fbae5 -> :sswitch_12
        -0x5d9875dc -> :sswitch_11
        -0x53610d9d -> :sswitch_10
        -0x4e5f7c5c -> :sswitch_f
        -0x3c587281 -> :sswitch_e
        -0x27103597 -> :sswitch_d
        -0x25d59478 -> :sswitch_c
        -0x3af4762 -> :sswitch_b
        0x34628f -> :sswitch_a
        0x62f6fe4 -> :sswitch_9
        0x1050eafc -> :sswitch_8
        0x22ba2a66 -> :sswitch_7
        0x455fe3fa -> :sswitch_6
        0x4ccee637 -> :sswitch_5
        0x50ae3a39 -> :sswitch_4
        0x50c79eb1 -> :sswitch_3
        0x6330de1b -> :sswitch_2
        0x665b7a8f -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static extractRuleNameFromDeclaration(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ruleDeclaration"    # Ljava/lang/String;

    .line 108
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 109
    .local v0, "spaceIndex":I
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 111
    .local v1, "colonIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 112
    move v3, v1

    .local v3, "separatorIndex":I
    goto :goto_0

    .line 113
    .end local v3    # "separatorIndex":I
    :cond_0
    if-ne v1, v2, :cond_1

    .line 114
    move v3, v0

    .restart local v3    # "separatorIndex":I
    goto :goto_0

    .line 116
    .end local v3    # "separatorIndex":I
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 118
    .restart local v3    # "separatorIndex":I
    :goto_0
    if-ne v3, v2, :cond_2

    move-object v2, p0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method
