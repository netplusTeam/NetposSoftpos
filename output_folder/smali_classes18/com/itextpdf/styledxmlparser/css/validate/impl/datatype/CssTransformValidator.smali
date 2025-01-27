.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssTransformValidator;
.super Ljava/lang/Object;
.source "CssTransformValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isValidComponent(Ljava/lang/String;)Z
    .locals 16
    .param p1, "objectString"    # Ljava/lang/String;

    .line 70
    move-object/from16 v1, p1

    const-string v0, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1e

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "function":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "args":Ljava/lang/String;
    const-string v0, "matrix"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v7, "scaley"

    const-string/jumbo v8, "scalex"

    const-string/jumbo v9, "scale"

    const/4 v10, 0x2

    const-string v11, ","

    if-nez v6, :cond_17

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 77
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_9

    .line 94
    :cond_0
    const-string/jumbo v0, "translate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 95
    const-string/jumbo v6, "translatex"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string/jumbo v6, "translatey"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_6

    .line 104
    :cond_1
    const-string/jumbo v0, "rotate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v6, "rad"

    const-string v7, "deg"

    const/16 v8, 0x72

    const/16 v9, 0x64

    const/4 v12, 0x0

    if-eqz v0, :cond_7

    .line 106
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .local v0, "value":F
    cmpl-float v10, v0, v12

    if-nez v10, :cond_2

    .line 108
    return v4

    .line 110
    .end local v0    # "value":F
    :cond_2
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    :goto_0
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 112
    .local v9, "deg":I
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 113
    .local v8, "rad":I
    if-lez v9, :cond_3

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-lez v8, :cond_6

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    :cond_4
    if-lez v9, :cond_5

    move v0, v9

    goto :goto_1

    :cond_5
    move v0, v8

    :goto_1
    :try_start_1
    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    nop

    .line 119
    return v4

    .line 116
    :catch_1
    move-exception v0

    .line 117
    .local v0, "exc":Ljava/lang/NumberFormatException;
    return v2

    .line 121
    .end local v0    # "exc":Ljava/lang/NumberFormatException;
    :cond_6
    return v2

    .line 122
    .end local v8    # "rad":I
    .end local v9    # "deg":I
    :cond_7
    const-string/jumbo v0, "skew"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 123
    const-string/jumbo v13, "skewx"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string/jumbo v13, "skewy"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 124
    :cond_8
    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "arg":[Ljava/lang/String;
    array-length v13, v11

    if-eq v13, v4, :cond_a

    array-length v13, v11

    if-ne v13, v10, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 148
    .end local v11    # "arg":[Ljava/lang/String;
    :cond_9
    return v2

    .line 126
    .restart local v11    # "arg":[Ljava/lang/String;
    :cond_a
    :goto_2
    const/4 v0, 0x0

    move v10, v0

    .local v10, "k":I
    :goto_3
    array-length v0, v11

    if-ge v10, v0, :cond_11

    .line 128
    :try_start_2
    aget-object v0, v11, v10

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    .local v0, "value":F
    cmpl-float v13, v0, v12

    if-eqz v13, :cond_b

    .line 130
    return v2

    .line 132
    .end local v0    # "value":F
    :cond_b
    goto :goto_4

    .line 131
    :catch_2
    move-exception v0

    .line 133
    :goto_4
    aget-object v0, v11, v10

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 134
    .local v13, "deg":I
    aget-object v0, v11, v10

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 135
    .local v14, "rad":I
    if-gez v13, :cond_c

    if-gez v14, :cond_c

    .line 136
    return v2

    .line 137
    :cond_c
    if-lez v13, :cond_d

    aget-object v0, v11, v10

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    if-ltz v14, :cond_e

    :cond_d
    if-lez v14, :cond_f

    aget-object v0, v11, v10

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 138
    :cond_e
    return v2

    .line 140
    :cond_f
    :try_start_3
    aget-object v0, v11, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-lez v14, :cond_10

    move v15, v14

    goto :goto_5

    :cond_10
    move v15, v13

    :goto_5
    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 143
    nop

    .line 126
    .end local v13    # "deg":I
    .end local v14    # "rad":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 141
    .restart local v13    # "deg":I
    .restart local v14    # "rad":I
    :catch_3
    move-exception v0

    .line 142
    .local v0, "exc":Ljava/lang/NumberFormatException;
    return v2

    .line 145
    .end local v0    # "exc":Ljava/lang/NumberFormatException;
    .end local v10    # "k":I
    .end local v13    # "deg":I
    .end local v14    # "rad":I
    :cond_11
    return v4

    .line 96
    .end local v11    # "arg":[Ljava/lang/String;
    :cond_12
    :goto_6
    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "arg":[Ljava/lang/String;
    array-length v7, v6

    if-eq v7, v4, :cond_14

    array-length v7, v6

    if-ne v7, v10, :cond_13

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_7

    .line 103
    :cond_13
    return v2

    .line 98
    :cond_14
    :goto_7
    array-length v0, v6

    move v7, v2

    :goto_8
    if-ge v7, v0, :cond_16

    aget-object v8, v6, v7

    .line 99
    .local v8, "a":Ljava/lang/String;
    invoke-static {v8}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssTransformValidator;->isValidForTranslate(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 100
    return v2

    .line 98
    .end local v8    # "a":Ljava/lang/String;
    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 101
    :cond_16
    return v4

    .line 78
    .end local v6    # "arg":[Ljava/lang/String;
    :cond_17
    :goto_9
    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 79
    .restart local v6    # "arg":[Ljava/lang/String;
    array-length v11, v6

    const/4 v12, 0x6

    if-ne v11, v12, :cond_18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_18
    array-length v0, v6

    if-eq v0, v4, :cond_19

    array-length v0, v6

    if-ne v0, v10, :cond_1a

    .line 80
    :cond_19
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    array-length v0, v6

    if-ne v0, v4, :cond_1d

    .line 81
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 82
    :cond_1b
    const/4 v0, 0x0

    move v7, v0

    .line 83
    .local v7, "i":I
    :goto_a
    array-length v0, v6

    if-ge v7, v0, :cond_1c

    .line 85
    :try_start_4
    aget-object v0, v6, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 88
    nop

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 86
    :catch_4
    move-exception v0

    .line 87
    .restart local v0    # "exc":Ljava/lang/NumberFormatException;
    return v2

    .line 90
    .end local v0    # "exc":Ljava/lang/NumberFormatException;
    :cond_1c
    array-length v0, v6

    if-ne v7, v0, :cond_1d

    .line 91
    return v4

    .line 93
    .end local v7    # "i":I
    :cond_1d
    return v2

    .line 74
    .end local v3    # "function":Ljava/lang/String;
    .end local v5    # "args":Ljava/lang/String;
    .end local v6    # "arg":[Ljava/lang/String;
    :cond_1e
    return v2
.end method

.method private static isValidForTranslate(Ljava/lang/String;)Z
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 153
    return v0

    .line 154
    :cond_0
    const/4 v1, 0x0

    .line 155
    .local v1, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    .line 158
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    .line 160
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_2
    if-lez v1, :cond_5

    .line 167
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 171
    :cond_4
    return v0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "exc":Ljava/lang/NumberFormatException;
    return v0

    .line 176
    .end local v2    # "exc":Ljava/lang/NumberFormatException;
    :cond_5
    return v0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 7
    .param p1, "objectString"    # Ljava/lang/String;

    .line 59
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 60
    return v1

    .line 61
    :cond_0
    const-string v0, "\\)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "components":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 63
    .local v5, "component":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssTransformValidator;->isValidComponent(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 64
    return v3

    .line 62
    .end local v5    # "component":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    :cond_2
    return v1
.end method
