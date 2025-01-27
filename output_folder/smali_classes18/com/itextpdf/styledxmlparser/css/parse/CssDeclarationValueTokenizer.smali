.class public Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
.super Ljava/lang/Object;
.source "CssDeclarationValueTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;,
        Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    }
.end annotation


# instance fields
.field private functionDepth:I

.field private inString:Z

.field private index:I

.field private src:Ljava/lang/String;

.field private stringQuote:C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyValue"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    .line 71
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private getNextToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    .locals 8

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "buff":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    .line 110
    const/4 v1, 0x0

    return-object v1

    .line 112
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->inString:Z

    if-eqz v1, :cond_a

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "isEscaped":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v2, "pendingUnicodeSequence":Ljava/lang/StringBuilder;
    :goto_0
    iget v4, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 116
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    iget v5, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 117
    .local v4, "curChar":C
    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 118
    invoke-direct {p0, v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->isHexDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_1

    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_5

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 122
    .local v6, "codePoint":I
    invoke-static {v6}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 123
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 125
    :cond_2
    const-string/jumbo v7, "\ufffd"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 128
    iget-char v7, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->stringQuote:C

    if-ne v4, v7, :cond_3

    .line 129
    iput-boolean v5, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->inString:Z

    .line 130
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->STRING:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v3, v5, v7}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v3

    .line 131
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_4
    const/4 v1, 0x0

    .line 135
    .end local v6    # "codePoint":I
    goto :goto_0

    .line 136
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    :cond_6
    iget-char v6, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->stringQuote:C

    if-ne v4, v6, :cond_7

    .line 140
    iput-boolean v5, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->inString:Z

    .line 141
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->STRING:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v3

    .line 142
    :cond_7
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_8

    .line 143
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 145
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 148
    .end local v1    # "isEscaped":Z
    .end local v2    # "pendingUnicodeSequence":Ljava/lang/StringBuilder;
    .end local v4    # "curChar":C
    :cond_9
    goto/16 :goto_5

    .line 149
    :cond_a
    :goto_2
    iget v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 150
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 151
    .local v1, "curChar":C
    const/16 v2, 0x28

    if-ne v1, v2, :cond_b

    .line 152
    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 154
    :cond_b
    const/16 v2, 0x29

    if-ne v1, v2, :cond_c

    .line 155
    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-nez v2, :cond_a

    .line 158
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v2

    .line 160
    :cond_c
    const/16 v2, 0x22

    if-eq v1, v2, :cond_13

    const/16 v2, 0x27

    if-ne v1, v2, :cond_d

    goto :goto_4

    .line 164
    :cond_d
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_f

    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->inString:Z

    if-nez v2, :cond_f

    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-nez v2, :cond_f

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_e

    .line 166
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    sget-object v3, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->COMMA:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    const-string v4, ","

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v2

    .line 168
    :cond_e
    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    .line 169
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->UNKNOWN:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v2

    .line 171
    :cond_f
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 172
    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-lez v2, :cond_10

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :cond_10
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-lez v4, :cond_11

    sget-object v4, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    goto :goto_3

    :cond_11
    sget-object v4, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->UNKNOWN:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    :goto_3
    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v2

    .line 177
    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 161
    :cond_13
    :goto_4
    iput-char v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->stringQuote:C

    .line 162
    iput-boolean v3, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->inString:Z

    .line 163
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v2

    .line 181
    .end local v1    # "curChar":C
    :cond_14
    :goto_5
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v1
.end method

.method private isHexDigit(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 191
    const/16 v0, 0x2f

    if-ge v0, p1, :cond_0

    const/16 v0, 0x3a

    if-lt p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x40

    if-ge v0, p1, :cond_1

    const/16 v0, 0x47

    if-lt p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x60

    if-ge v0, p1, :cond_3

    const/16 v0, 0x67

    if-ge p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processFunctionToken(Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "token"    # Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    .param p2, "functionBuffer"    # Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-char v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->stringQuote:C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-char v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->stringQuote:C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :goto_0
    return-void
.end method


# virtual methods
.method public getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    .locals 5

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v0

    .line 81
    .local v0, "token":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_0
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-lez v1, :cond_3

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v1, "functionBuffer":Ljava/lang/StringBuilder;
    :goto_1
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-lez v2, :cond_1

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->processFunctionToken(Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;Ljava/lang/StringBuilder;)V

    .line 88
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    if-eqz v0, :cond_2

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->processFunctionToken(Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;Ljava/lang/StringBuilder;)V

    .line 95
    :cond_2
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v2

    .line 98
    .end local v1    # "functionBuffer":Ljava/lang/StringBuilder;
    :cond_3
    return-object v0
.end method
