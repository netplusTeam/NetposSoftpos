.class public Lcom/bea/xml/stream/reader/XmlChars;
.super Ljava/lang/Object;
.source "XmlChars.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isChar(I)Z
    .locals 1
    .param p0, "ucs4char"    # I

    .line 99
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isCompatibilityChar(C)Z
    .locals 3
    .param p0, "c"    # C

    .line 250
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 352
    return v1

    .line 348
    :sswitch_0
    return v2

    .line 338
    :sswitch_1
    const/16 v0, 0x3131

    if-lt p0, v0, :cond_0

    const/16 v0, 0x318e

    if-gt p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 334
    :sswitch_2
    const/16 v0, 0x309b

    if-lt p0, v0, :cond_1

    const/16 v0, 0x309c

    if-gt p0, v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 316
    :sswitch_3
    const/16 v0, 0x2102

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2107

    if-eq p0, v0, :cond_6

    const/16 v0, 0x210a

    if-lt p0, v0, :cond_2

    const/16 v0, 0x2113

    if-le p0, v0, :cond_6

    :cond_2
    const/16 v0, 0x2115

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2118

    if-lt p0, v0, :cond_3

    const/16 v0, 0x211d

    if-le p0, v0, :cond_6

    :cond_3
    const/16 v0, 0x2124

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2128

    if-eq p0, v0, :cond_6

    const/16 v0, 0x212c

    if-lt p0, v0, :cond_4

    const/16 v0, 0x212d

    if-le p0, v0, :cond_6

    :cond_4
    const/16 v0, 0x212f

    if-lt p0, v0, :cond_5

    const/16 v0, 0x2138

    if-le p0, v0, :cond_6

    :cond_5
    const/16 v0, 0x2160

    if-lt p0, v0, :cond_7

    const/16 v0, 0x217f

    if-gt p0, v0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1

    .line 313
    :sswitch_4
    const/16 v0, 0x207f

    if-ne p0, v0, :cond_8

    move v1, v2

    :cond_8
    return v1

    .line 280
    :sswitch_5
    const/16 v0, 0x1101

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1104

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1108

    if-eq p0, v0, :cond_16

    const/16 v0, 0x110a

    if-eq p0, v0, :cond_16

    const/16 v0, 0x110d

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1113

    if-lt p0, v0, :cond_9

    const/16 v0, 0x113b

    if-le p0, v0, :cond_16

    :cond_9
    const/16 v0, 0x113d

    if-eq p0, v0, :cond_16

    const/16 v0, 0x113f

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1141

    if-lt p0, v0, :cond_a

    const/16 v0, 0x114b

    if-le p0, v0, :cond_16

    :cond_a
    const/16 v0, 0x114d

    if-eq p0, v0, :cond_16

    const/16 v0, 0x114f

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1151

    if-lt p0, v0, :cond_b

    const/16 v0, 0x1153

    if-le p0, v0, :cond_16

    :cond_b
    const/16 v0, 0x1156

    if-lt p0, v0, :cond_c

    const/16 v0, 0x1158

    if-le p0, v0, :cond_16

    :cond_c
    const/16 v0, 0x1162

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1164

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1166

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1168

    if-eq p0, v0, :cond_16

    const/16 v0, 0x116a

    if-lt p0, v0, :cond_d

    const/16 v0, 0x116c

    if-le p0, v0, :cond_16

    :cond_d
    const/16 v0, 0x116f

    if-lt p0, v0, :cond_e

    const/16 v0, 0x1171

    if-le p0, v0, :cond_16

    :cond_e
    const/16 v0, 0x1174

    if-eq p0, v0, :cond_16

    const/16 v0, 0x1176

    if-lt p0, v0, :cond_f

    const/16 v0, 0x119d

    if-le p0, v0, :cond_16

    :cond_f
    const/16 v0, 0x119f

    if-lt p0, v0, :cond_10

    const/16 v0, 0x11a2

    if-le p0, v0, :cond_16

    :cond_10
    const/16 v0, 0x11a9

    if-lt p0, v0, :cond_11

    const/16 v0, 0x11aa

    if-le p0, v0, :cond_16

    :cond_11
    const/16 v0, 0x11ac

    if-lt p0, v0, :cond_12

    const/16 v0, 0x11ad

    if-le p0, v0, :cond_16

    :cond_12
    const/16 v0, 0x11b0

    if-lt p0, v0, :cond_13

    const/16 v0, 0x11b6

    if-le p0, v0, :cond_16

    :cond_13
    const/16 v0, 0x11b9

    if-eq p0, v0, :cond_16

    const/16 v0, 0x11bb

    if-eq p0, v0, :cond_16

    const/16 v0, 0x11c3

    if-lt p0, v0, :cond_14

    const/16 v0, 0x11ea

    if-le p0, v0, :cond_16

    :cond_14
    const/16 v0, 0x11ec

    if-lt p0, v0, :cond_15

    const/16 v0, 0x11ef

    if-le p0, v0, :cond_16

    :cond_15
    const/16 v0, 0x11f1

    if-lt p0, v0, :cond_17

    const/16 v0, 0x11f8

    if-gt p0, v0, :cond_17

    :cond_16
    move v1, v2

    :cond_17
    return v1

    .line 276
    :sswitch_6
    const/16 v0, 0xedc

    if-lt p0, v0, :cond_18

    const/16 v0, 0xedd

    if-gt p0, v0, :cond_18

    move v1, v2

    :cond_18
    return v1

    .line 273
    :sswitch_7
    const/16 v0, 0x587

    if-ne p0, v0, :cond_19

    move v1, v2

    :cond_19
    return v1

    .line 270
    :sswitch_8
    const/16 v0, 0x37a

    if-ne p0, v0, :cond_1a

    move v1, v2

    :cond_1a
    return v1

    .line 266
    :sswitch_9
    const/16 v0, 0x2b0

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x2b8

    if-le p0, v0, :cond_1c

    :cond_1b
    const/16 v0, 0x2e0

    if-lt p0, v0, :cond_1d

    const/16 v0, 0x2e4

    if-gt p0, v0, :cond_1d

    :cond_1c
    move v1, v2

    :cond_1d
    return v1

    .line 257
    :sswitch_a
    const/16 v0, 0x132

    if-lt p0, v0, :cond_1e

    const/16 v0, 0x133

    if-le p0, v0, :cond_21

    :cond_1e
    const/16 v0, 0x13f

    if-lt p0, v0, :cond_1f

    const/16 v0, 0x140

    if-le p0, v0, :cond_21

    :cond_1f
    const/16 v0, 0x149

    if-eq p0, v0, :cond_21

    const/16 v0, 0x17f

    if-eq p0, v0, :cond_21

    const/16 v0, 0x1c4

    if-lt p0, v0, :cond_20

    const/16 v0, 0x1cc

    if-le p0, v0, :cond_21

    :cond_20
    const/16 v0, 0x1f1

    if-lt p0, v0, :cond_22

    const/16 v0, 0x1f3

    if-gt p0, v0, :cond_22

    :cond_21
    move v1, v2

    :cond_22
    return v1

    .line 253
    :sswitch_b
    const/16 v0, 0xaa

    if-eq p0, v0, :cond_23

    const/16 v0, 0xb5

    if-eq p0, v0, :cond_23

    const/16 v0, 0xba

    if-ne p0, v0, :cond_24

    :cond_23
    move v1, v2

    :cond_24
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x5 -> :sswitch_7
        0xe -> :sswitch_6
        0x11 -> :sswitch_5
        0x20 -> :sswitch_4
        0x21 -> :sswitch_3
        0x30 -> :sswitch_2
        0x31 -> :sswitch_1
        0xf9 -> :sswitch_0
        0xfa -> :sswitch_0
        0xfb -> :sswitch_0
        0xfc -> :sswitch_0
        0xfd -> :sswitch_0
        0xfe -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 413
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0xff10

    if-lt p0, v0, :cond_0

    const v0, 0xff19

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isExtender(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 420
    const/16 v0, 0xb7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2d0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2d1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x387

    if-eq p0, v0, :cond_3

    const/16 v0, 0x640

    if-eq p0, v0, :cond_3

    const/16 v0, 0xe46

    if-eq p0, v0, :cond_3

    const/16 v0, 0xec6

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3005

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3031

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3035

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x309d

    if-lt p0, v0, :cond_1

    const/16 v0, 0x309e

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30fc

    if-lt p0, v0, :cond_2

    const/16 v0, 0x30fe

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLetter(C)Z
    .locals 3
    .param p0, "c"    # C

    .line 206
    const/4 v0, 0x1

    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_0

    .line 207
    return v0

    .line 208
    :cond_0
    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-ne p0, v1, :cond_1

    .line 209
    return v2

    .line 210
    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_2

    .line 211
    return v0

    .line 217
    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 233
    const/16 v1, 0x2bb

    if-lt p0, v1, :cond_5

    const/16 v1, 0x2c1

    if-le p0, v1, :cond_7

    goto :goto_1

    .line 227
    :sswitch_0
    invoke-static {p0}, Lcom/bea/xml/stream/reader/XmlChars;->isCompatibilityChar(C)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x20dd

    if-lt p0, v1, :cond_3

    const/16 v1, 0x20e0

    if-le p0, v1, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0

    .line 233
    :cond_5
    :goto_1
    const/16 v1, 0x559

    if-eq p0, v1, :cond_7

    const/16 v1, 0x6e5

    if-eq p0, v1, :cond_7

    const/16 v1, 0x6e6

    if-ne p0, v1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    :cond_7
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private static isLetter2(C)Z
    .locals 3
    .param p0, "c"    # C

    .line 367
    const/4 v0, 0x1

    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_0

    .line 368
    return v0

    .line 369
    :cond_0
    const/16 v1, 0x3e

    const/4 v2, 0x0

    if-ne p0, v1, :cond_1

    .line 370
    return v2

    .line 371
    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_2

    .line 372
    return v0

    .line 378
    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 401
    const/16 v1, 0x387

    if-ne p0, v1, :cond_5

    goto :goto_1

    .line 395
    :pswitch_0
    invoke-static {p0}, Lcom/bea/xml/stream/reader/XmlChars;->isCompatibilityChar(C)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x20dd

    if-lt p0, v1, :cond_3

    const/16 v1, 0x20e0

    if-le p0, v1, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0

    .line 401
    :cond_5
    move v0, v2

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isNCNameChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 141
    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/bea/xml/stream/reader/XmlChars;->isNameChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNameChar(C)Z
    .locals 3
    .param p0, "c"    # C

    .line 117
    invoke-static {p0}, Lcom/bea/xml/stream/reader/XmlChars;->isLetter2(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 118
    return v1

    .line 119
    :cond_0
    const/16 v0, 0x3e

    const/4 v2, 0x0

    if-ne p0, v0, :cond_1

    .line 120
    return v2

    .line 121
    :cond_1
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_3

    invoke-static {p0}, Lcom/bea/xml/stream/reader/XmlChars;->isExtender(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 125
    :cond_2
    return v2

    .line 123
    :cond_3
    :goto_0
    return v1
.end method

.method public static isSpace(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 150
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
