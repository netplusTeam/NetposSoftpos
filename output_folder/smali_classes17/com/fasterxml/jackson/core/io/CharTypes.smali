.class public final Lcom/fasterxml/jackson/core/io/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;
    }
.end annotation


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field private static final sHexValues:[I

.field private static final sInputCodes:[I

.field private static final sInputCodesComment:[I

.field private static final sInputCodesJsNames:[I

.field private static final sInputCodesUTF8:[I

.field private static final sInputCodesUtf8JsNames:[I

.field private static final sInputCodesWS:[I

.field private static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 7
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    .line 10
    array-length v0, v0

    .line 11
    .local v0, "len":I
    new-array v1, v0, [B

    sput-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    .line 12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    sget-object v2, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    aget-char v3, v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 12
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_0
    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 30
    .local v1, "table":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x20

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 31
    aput v4, v1, v2

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x22

    const/4 v5, 0x1

    aput v5, v1, v2

    .line 35
    const/16 v6, 0x5c

    aput v5, v1, v6

    .line 36
    sput-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    .line 45
    .end local v1    # "table":[I
    array-length v7, v1

    new-array v7, v7, [I

    .line 46
    .local v7, "table":[I
    array-length v8, v7

    const/4 v9, 0x0

    invoke-static {v1, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    const/16 v1, 0x80

    .local v1, "c":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 51
    and-int/lit16 v8, v1, 0xe0

    const/16 v10, 0xc0

    if-ne v8, v10, :cond_2

    .line 52
    const/4 v8, 0x2

    .local v8, "code":I
    goto :goto_3

    .line 53
    .end local v8    # "code":I
    :cond_2
    and-int/lit16 v8, v1, 0xf0

    const/16 v10, 0xe0

    if-ne v8, v10, :cond_3

    .line 54
    const/4 v8, 0x3

    .restart local v8    # "code":I
    goto :goto_3

    .line 55
    .end local v8    # "code":I
    :cond_3
    and-int/lit16 v8, v1, 0xf8

    const/16 v10, 0xf0

    if-ne v8, v10, :cond_4

    .line 57
    const/4 v8, 0x4

    .restart local v8    # "code":I
    goto :goto_3

    .line 60
    .end local v8    # "code":I
    :cond_4
    const/4 v8, -0x1

    .line 62
    .restart local v8    # "code":I
    :goto_3
    aput v8, v7, v1

    .line 47
    .end local v8    # "code":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 64
    .end local v1    # "c":I
    :cond_5
    sput-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    .line 75
    .end local v7    # "table":[I
    new-array v1, v0, [I

    .line 77
    .local v1, "table":[I
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 79
    const/16 v7, 0x21

    .local v7, "i":I
    :goto_4
    if-ge v7, v0, :cond_7

    .line 80
    int-to-char v8, v7

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 81
    aput v9, v1, v7

    .line 79
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 87
    .end local v7    # "i":I
    :cond_7
    const/16 v7, 0x40

    aput v9, v1, v7

    .line 88
    const/16 v7, 0x23

    aput v9, v1, v7

    .line 89
    const/16 v8, 0x2a

    aput v9, v1, v8

    .line 90
    const/16 v10, 0x2d

    aput v9, v1, v10

    .line 91
    const/16 v10, 0x2b

    aput v9, v1, v10

    .line 92
    sput-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    .line 102
    .end local v1    # "table":[I
    new-array v10, v0, [I

    .line 104
    .local v10, "table":[I
    array-length v11, v10

    invoke-static {v1, v9, v10, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    const/16 v1, 0x80

    invoke-static {v10, v1, v1, v9}, Ljava/util/Arrays;->fill([IIII)V

    .line 106
    sput-object v10, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    .line 115
    .end local v10    # "table":[I
    new-array v10, v0, [I

    .line 117
    .local v10, "buf":[I
    sget-object v11, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    invoke-static {v11, v1, v10, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    invoke-static {v10, v9, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 121
    const/16 v12, 0x9

    aput v9, v10, v12

    .line 122
    const/16 v13, 0xa

    aput v13, v10, v13

    .line 123
    const/16 v14, 0xd

    aput v14, v10, v14

    .line 124
    aput v8, v10, v8

    .line 125
    sput-object v10, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    .line 136
    .end local v10    # "buf":[I
    new-array v0, v0, [I

    .line 137
    .local v0, "buf":[I
    invoke-static {v11, v1, v0, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    invoke-static {v0, v9, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 143
    aput v5, v0, v3

    .line 144
    aput v5, v0, v12

    .line 145
    aput v13, v0, v13

    .line 146
    aput v14, v0, v14

    .line 147
    const/16 v5, 0x2f

    aput v5, v0, v5

    .line 148
    aput v7, v0, v7

    .line 149
    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesWS:[I

    .line 158
    .end local v0    # "buf":[I
    new-array v0, v1, [I

    .line 160
    .local v0, "table":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v3, :cond_8

    .line 162
    aput v4, v0, v5

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 165
    .end local v5    # "i":I
    :cond_8
    aput v2, v0, v2

    .line 166
    aput v6, v0, v6

    .line 168
    const/16 v2, 0x8

    const/16 v3, 0x62

    aput v3, v0, v2

    .line 169
    const/16 v2, 0x74

    aput v2, v0, v12

    .line 170
    const/16 v2, 0xc

    const/16 v3, 0x66

    aput v3, v0, v2

    .line 171
    const/16 v2, 0x6e

    aput v2, v0, v13

    .line 172
    const/16 v2, 0x72

    aput v2, v0, v14

    .line 173
    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 181
    .end local v0    # "table":[I
    new-array v0, v1, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    .line 183
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([II)V

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v13, :cond_9

    .line 185
    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x30

    aput v0, v1, v2

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 187
    .end local v0    # "i":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    .line 188
    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 189
    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 191
    .end local v0    # "i":I
    :cond_a
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 5
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "content"    # Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 232
    .local v0, "escCodes":[I
    array-length v1, v0

    .line 233
    .local v1, "escLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 234
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 235
    .local v4, "c":C
    if-ge v4, v1, :cond_2

    aget v5, v0, v4

    if-nez v5, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    const/16 v5, 0x5c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    aget v5, v0, v4

    .line 241
    .local v5, "escCode":I
    if-gez v5, :cond_1

    .line 250
    const/16 v6, 0x75

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    const/16 v6, 0x30

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    move v6, v4

    .line 254
    .local v6, "value":I
    sget-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    shr-int/lit8 v8, v6, 0x4

    aget-char v8, v7, v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    and-int/lit8 v8, v6, 0xf

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    .end local v6    # "value":I
    goto :goto_2

    .line 257
    :cond_1
    int-to-char v6, v5

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 236
    .end local v5    # "escCode":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    nop

    .line 233
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_3
    return-void
.end method

.method public static charToHex(I)I
    .locals 1
    .param p0, "ch"    # I

    .line 226
    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    aget v0, v0, p0

    :goto_0
    return v0
.end method

.method public static copyHexBytes()[B
    .locals 1

    .line 267
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static copyHexChars()[C
    .locals 1

    .line 263
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static get7BitOutputEscapes()[I
    .locals 1

    .line 209
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0
.end method

.method public static get7BitOutputEscapes(I)[I
    .locals 1
    .param p0, "quoteChar"    # I

    .line 218
    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    .line 219
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0

    .line 221
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;->instance:Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;->escapesFor(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getInputCodeComment()[I
    .locals 1

    .line 199
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static getInputCodeLatin1()[I
    .locals 1

    .line 193
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static getInputCodeLatin1JsNames()[I
    .locals 1

    .line 196
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method

.method public static getInputCodeUtf8()[I
    .locals 1

    .line 194
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    return-object v0
.end method

.method public static getInputCodeUtf8JsNames()[I
    .locals 1

    .line 197
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    return-object v0
.end method

.method public static getInputCodeWS()[I
    .locals 1

    .line 200
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesWS:[I

    return-object v0
.end method
