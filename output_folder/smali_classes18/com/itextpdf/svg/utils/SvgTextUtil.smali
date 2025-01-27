.class public final Lcom/itextpdf/svg/utils/SvgTextUtil;
.super Ljava/lang/Object;
.source "SvgTextUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static filterReferenceValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 211
    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "url("

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isOnlyWhiteSpace(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 170
    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "trimmedText":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgTextUtil;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgTextUtil;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static processWhiteSpace(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;Z)V
    .locals 8
    .param p0, "root"    # Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;
    .param p1, "isLeadingElement"    # Z

    .line 134
    move v0, p1

    .line 135
    .local v0, "performLeadingTrim":Z
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 137
    .local v2, "child":Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    instance-of v3, v2, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    if-eqz v3, :cond_0

    .line 139
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-interface {v2}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->containsAbsolutePositionChange()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/itextpdf/svg/utils/SvgTextUtil;->processWhiteSpace(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;Z)V

    .line 140
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->markWhiteSpaceProcessed()V

    .line 142
    :cond_0
    instance-of v3, v2, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;

    if-eqz v3, :cond_2

    .line 144
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;

    .line 146
    .local v3, "leafRend":Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;
    const-string/jumbo v4, "text_content"

    invoke-virtual {v3, v4}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "toProcess":Ljava/lang/String;
    const-string v6, "\\s+"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/util/WhiteSpaceUtil;->collapseConsecutiveSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    if-eqz v0, :cond_1

    .line 151
    invoke-static {v5}, Lcom/itextpdf/svg/utils/SvgTextUtil;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-static {v5}, Lcom/itextpdf/svg/utils/SvgTextUtil;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    const/4 v0, 0x0

    goto :goto_1

    .line 156
    :cond_1
    invoke-static {v5}, Lcom/itextpdf/svg/utils/SvgTextUtil;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v2    # "child":Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    .end local v3    # "leafRend":Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;
    .end local v5    # "toProcess":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 161
    :cond_3
    return-void
.end method

.method public static resolveFontSize(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;F)F
    .locals 3
    .param p0, "renderer"    # Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    .param p1, "parentFontSize"    # F

    .line 187
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 188
    .local v0, "fontSize":F
    const-string v1, "font-size"

    invoke-interface {p0, v1}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "elementFontSize":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    const-string v2, "larger"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    const-string/jumbo v2, "smaller"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    const-string/jumbo v2, "px"

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    goto :goto_1

    .line 193
    :cond_1
    :goto_0
    invoke-static {v1, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeFontSize(Ljava/lang/String;F)F

    move-result v0

    .line 198
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 199
    :cond_3
    move v0, p1

    .line 201
    :cond_4
    return v0
.end method

.method public static trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "toTrim"    # Ljava/lang/String;

    .line 72
    if-nez p0, :cond_0

    .line 73
    const-string v0, ""

    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 76
    .local v0, "current":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 77
    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 79
    .local v2, "currentChar":C
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    .line 81
    nop

    .end local v2    # "currentChar":C
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "toTrim"    # Ljava/lang/String;

    .line 96
    const-string v0, ""

    if-nez p0, :cond_0

    .line 97
    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 100
    .local v1, "end":I
    if-lez v1, :cond_3

    .line 101
    add-int/lit8 v2, v1, -0x1

    .line 102
    .local v2, "current":I
    :goto_0
    if-ltz v2, :cond_1

    .line 103
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 104
    .local v3, "currentChar":C
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    .line 106
    nop

    .end local v3    # "currentChar":C
    add-int/lit8 v2, v2, -0x1

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    if-gez v2, :cond_2

    .line 112
    return-object v0

    .line 114
    :cond_2
    const/4 v0, 0x0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    .end local v2    # "current":I
    :cond_3
    return-object p0
.end method
