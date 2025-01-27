.class public Lorg/jline/utils/AttributedStringBuilder;
.super Lorg/jline/utils/AttributedCharSequence;
.source "AttributedStringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/utils/AttributedStringBuilder$TabStops;
    }
.end annotation


# instance fields
.field private buffer:[C

.field private current:Lorg/jline/utils/AttributedStyle;

.field private lastLineLength:I

.field private length:I

.field private style:[J

.field private tabs:Lorg/jline/utils/AttributedStringBuilder$TabStops;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 45
    invoke-direct {p0}, Lorg/jline/utils/AttributedCharSequence;-><init>()V

    .line 29
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder$TabStops;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jline/utils/AttributedStringBuilder$TabStops;-><init>(Lorg/jline/utils/AttributedStringBuilder;I)V

    iput-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->tabs:Lorg/jline/utils/AttributedStringBuilder$TabStops;

    .line 30
    iput v1, p0, Lorg/jline/utils/AttributedStringBuilder;->lastLineLength:I

    .line 31
    sget-object v0, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    iput-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 46
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->buffer:[C

    .line 47
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    .line 48
    iput v1, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    .line 49
    return-void
.end method

.method public static varargs append([Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedString;
    .locals 4
    .param p0, "strings"    # [Ljava/lang/CharSequence;

    .line 34
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 35
    .local v0, "sb":Lorg/jline/utils/AttributedStringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 36
    .local v3, "s":Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 35
    .end local v3    # "s":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$styled$0(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStringBuilder;)V
    .locals 0
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "sb"    # Lorg/jline/utils/AttributedStringBuilder;

    .line 126
    invoke-virtual {p1, p0}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    return-void
.end method

.method static synthetic lambda$styled$1(Lorg/jline/utils/AttributedStyle;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStyle;
    .locals 0
    .param p0, "style"    # Lorg/jline/utils/AttributedStyle;
    .param p1, "s"    # Lorg/jline/utils/AttributedStyle;

    .line 130
    return-object p0
.end method

.method static synthetic lambda$styled$2(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStringBuilder;)V
    .locals 0
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "sb"    # Lorg/jline/utils/AttributedStringBuilder;

    .line 130
    invoke-virtual {p1, p0}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    return-void
.end method


# virtual methods
.method public ansiAppend(Ljava/lang/String;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 19
    .param p1, "ansi"    # Ljava/lang/String;

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 196
    .local v2, "ansiStart":I
    const/4 v3, 0x0

    .line 197
    .local v3, "ansiState":I
    iget v4, v0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lorg/jline/utils/AttributedStringBuilder;->ensureCapacity(I)V

    .line 198
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 199
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 200
    .local v5, "c":C
    if-nez v3, :cond_0

    const/16 v6, 0x1b

    if-ne v5, v6, :cond_0

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 202
    :cond_0
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    const/16 v7, 0x5b

    if-ne v5, v7, :cond_1

    .line 203
    add-int/lit8 v3, v3, 0x1

    .line 204
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_7

    .line 205
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne v3, v8, :cond_c

    .line 206
    const/16 v9, 0x6d

    if-ne v5, v9, :cond_a

    .line 207
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "params":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 209
    .local v10, "j":I
    :goto_1
    array-length v11, v9

    if-ge v10, v11, :cond_8

    .line 210
    aget-object v11, v9, v10

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v7

    goto :goto_2

    :cond_2
    aget-object v11, v9, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 211
    .local v11, "ansiParam":I
    :goto_2
    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_5

    .line 333
    :sswitch_0
    iget-object v12, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    add-int/lit8 v13, v11, -0x64

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v12, v13}, Lorg/jline/utils/AttributedStyle;->background(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v12

    iput-object v12, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    goto/16 :goto_5

    .line 323
    :sswitch_1
    iget-object v12, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    add-int/lit8 v13, v11, -0x5a

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v12, v13}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v12

    iput-object v12, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 324
    goto/16 :goto_5

    .line 284
    :sswitch_2
    iget-object v12, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v12}, Lorg/jline/utils/AttributedStyle;->backgroundOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v12

    iput-object v12, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 285
    goto/16 :goto_5

    .line 281
    :sswitch_3
    iget-object v12, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    add-int/lit8 v13, v11, -0x28

    invoke-virtual {v12, v13}, Lorg/jline/utils/AttributedStyle;->background(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v12

    iput-object v12, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 282
    goto/16 :goto_5

    .line 271
    :sswitch_4
    iget-object v12, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v12}, Lorg/jline/utils/AttributedStyle;->foregroundOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v12

    iput-object v12, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 272
    goto/16 :goto_5

    .line 288
    :sswitch_5
    add-int/lit8 v12, v10, 0x1

    array-length v13, v9

    if-ge v12, v13, :cond_7

    .line 289
    add-int/lit8 v10, v10, 0x1

    aget-object v12, v9, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 290
    .local v12, "ansiParam2":I
    const/16 v13, 0x26

    if-ne v12, v8, :cond_4

    .line 291
    add-int/lit8 v14, v10, 0x3

    array-length v15, v9

    if-ge v14, v15, :cond_6

    .line 292
    add-int/lit8 v10, v10, 0x1

    aget-object v14, v9, v10

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 293
    .local v14, "r":I
    add-int/2addr v10, v6

    aget-object v15, v9, v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 294
    .local v15, "g":I
    add-int/2addr v10, v6

    aget-object v16, v9, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 296
    .local v16, "b":I
    shr-int/lit8 v17, v14, 0x3

    mul-int/lit8 v17, v17, 0x24

    add-int/lit8 v17, v17, 0x10

    shr-int/lit8 v18, v15, 0x3

    mul-int/lit8 v18, v18, 0x6

    add-int v17, v17, v18

    shr-int/lit8 v18, v16, 0x3

    add-int v8, v17, v18

    .line 297
    .local v8, "col":I
    if-ne v11, v13, :cond_3

    .line 298
    iget-object v13, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v13, v8}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v13

    iput-object v13, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    goto :goto_3

    .line 300
    :cond_3
    iget-object v13, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v13, v8}, Lorg/jline/utils/AttributedStyle;->background(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v13

    iput-object v13, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 302
    .end local v8    # "col":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    .end local v16    # "b":I
    :goto_3
    goto :goto_4

    .line 303
    :cond_4
    const/4 v8, 0x5

    if-ne v12, v8, :cond_6

    .line 304
    add-int/lit8 v8, v10, 0x1

    array-length v14, v9

    if-ge v8, v14, :cond_6

    .line 305
    add-int/lit8 v10, v10, 0x1

    aget-object v8, v9, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 306
    .restart local v8    # "col":I
    if-ne v11, v13, :cond_5

    .line 307
    iget-object v13, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v13, v8}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v13

    iput-object v13, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    goto :goto_4

    .line 309
    :cond_5
    iget-object v13, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v13, v8}, Lorg/jline/utils/AttributedStyle;->background(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v13

    iput-object v13, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 313
    .end local v8    # "col":I
    .end local v12    # "ansiParam2":I
    :cond_6
    :goto_4
    goto/16 :goto_5

    .line 268
    :sswitch_6
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    add-int/lit8 v12, v11, -0x1e

    invoke-virtual {v8, v12}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 269
    goto/16 :goto_5

    .line 258
    :sswitch_7
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->crossedOutOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 259
    goto/16 :goto_5

    .line 255
    :sswitch_8
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->concealOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 256
    goto/16 :goto_5

    .line 252
    :sswitch_9
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->inverseOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 253
    goto/16 :goto_5

    .line 249
    :sswitch_a
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->blinkOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 250
    goto/16 :goto_5

    .line 246
    :sswitch_b
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->underlineOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 247
    goto :goto_5

    .line 243
    :sswitch_c
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->italicOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 244
    goto :goto_5

    .line 240
    :sswitch_d
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->boldOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->faintOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 241
    goto :goto_5

    .line 237
    :sswitch_e
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->crossedOut()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 238
    goto :goto_5

    .line 234
    :sswitch_f
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->conceal()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 235
    goto :goto_5

    .line 231
    :sswitch_10
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->inverse()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 232
    goto :goto_5

    .line 228
    :sswitch_11
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->blink()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 229
    goto :goto_5

    .line 225
    :sswitch_12
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->underline()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 226
    goto :goto_5

    .line 222
    :sswitch_13
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->italic()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 223
    goto :goto_5

    .line 219
    :sswitch_14
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->faint()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 220
    goto :goto_5

    .line 216
    :sswitch_15
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->bold()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 217
    goto :goto_5

    .line 213
    :sswitch_16
    sget-object v8, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    iput-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 214
    nop

    .line 336
    :cond_7
    :goto_5
    nop

    .end local v11    # "ansiParam":I
    add-int/2addr v10, v6

    .line 337
    const/4 v8, 0x2

    goto/16 :goto_1

    .line 338
    :cond_8
    const/4 v3, 0x0

    .line 339
    .end local v9    # "params":[Ljava/lang/String;
    .end local v10    # "j":I
    :cond_9
    goto :goto_7

    :cond_a
    const/16 v6, 0x30

    if-lt v5, v6, :cond_b

    const/16 v6, 0x39

    if-le v5, v6, :cond_9

    :cond_b
    const/16 v6, 0x3b

    if-eq v5, v6, :cond_9

    .line 341
    const/4 v3, 0x0

    goto :goto_7

    .line 343
    :cond_c
    const/16 v8, 0x9

    if-ne v5, v8, :cond_d

    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->tabs:Lorg/jline/utils/AttributedStringBuilder$TabStops;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStringBuilder$TabStops;->defined()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 344
    iget-object v6, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v0, v6}, Lorg/jline/utils/AttributedStringBuilder;->insertTab(Lorg/jline/utils/AttributedStyle;)V

    goto :goto_7

    .line 346
    :cond_d
    iget v8, v0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    add-int/2addr v8, v6

    invoke-virtual {v0, v8}, Lorg/jline/utils/AttributedStringBuilder;->ensureCapacity(I)V

    .line 347
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->buffer:[C

    iget v9, v0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    aput-char v5, v8, v9

    .line 348
    iget-object v8, v0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    iget-object v10, v0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v10}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 349
    const/16 v8, 0xa

    if-ne v5, v8, :cond_e

    .line 350
    iput v7, v0, Lorg/jline/utils/AttributedStringBuilder;->lastLineLength:I

    goto :goto_6

    .line 352
    :cond_e
    iget v7, v0, Lorg/jline/utils/AttributedStringBuilder;->lastLineLength:I

    add-int/2addr v7, v6

    iput v7, v0, Lorg/jline/utils/AttributedStringBuilder;->lastLineLength:I

    .line 354
    :goto_6
    iget v7, v0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    add-int/2addr v7, v6

    iput v7, v0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    .line 198
    .end local v5    # "c":C
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 357
    .end local v4    # "i":I
    :cond_f
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_16
        0x1 -> :sswitch_15
        0x2 -> :sswitch_14
        0x3 -> :sswitch_13
        0x4 -> :sswitch_12
        0x5 -> :sswitch_11
        0x7 -> :sswitch_10
        0x8 -> :sswitch_f
        0x9 -> :sswitch_e
        0x16 -> :sswitch_d
        0x17 -> :sswitch_c
        0x18 -> :sswitch_b
        0x19 -> :sswitch_a
        0x1b -> :sswitch_9
        0x1c -> :sswitch_8
        0x1d -> :sswitch_7
        0x1e -> :sswitch_6
        0x1f -> :sswitch_6
        0x20 -> :sswitch_6
        0x21 -> :sswitch_6
        0x22 -> :sswitch_6
        0x23 -> :sswitch_6
        0x24 -> :sswitch_6
        0x25 -> :sswitch_6
        0x26 -> :sswitch_5
        0x27 -> :sswitch_4
        0x28 -> :sswitch_3
        0x29 -> :sswitch_3
        0x2a -> :sswitch_3
        0x2b -> :sswitch_3
        0x2c -> :sswitch_3
        0x2d -> :sswitch_3
        0x2e -> :sswitch_3
        0x2f -> :sswitch_3
        0x30 -> :sswitch_5
        0x31 -> :sswitch_2
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x5c -> :sswitch_1
        0x5d -> :sswitch_1
        0x5e -> :sswitch_1
        0x5f -> :sswitch_1
        0x60 -> :sswitch_1
        0x61 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;II)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/jline/utils/AttributedStringBuilder;
    .locals 1
    .param p1, "c"    # C

    .line 108
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 92
    if-nez p1, :cond_0

    .line 93
    const-string p1, "null"

    .line 95
    :cond_0
    new-instance v0, Lorg/jline/utils/AttributedString;

    iget-object v1, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-direct {v0, p1, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)V

    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/jline/utils/AttributedStringBuilder;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string p1, "null"

    .line 103
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "style"    # Lorg/jline/utils/AttributedStyle;

    .line 112
    new-instance v0, Lorg/jline/utils/AttributedString;

    invoke-direct {v0, p1, p2}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)V

    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/jline/utils/AttributedCharSequence;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 2
    .param p1, "str"    # Lorg/jline/utils/AttributedCharSequence;

    .line 154
    invoke-virtual {p1}, Lorg/jline/utils/AttributedCharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedCharSequence;II)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/jline/utils/AttributedCharSequence;II)Lorg/jline/utils/AttributedStringBuilder;
    .locals 7
    .param p1, "str"    # Lorg/jline/utils/AttributedCharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 158
    iget v0, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    add-int/2addr v0, p3

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedStringBuilder;->ensureCapacity(I)V

    .line 159
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 160
    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedCharSequence;->charAt(I)C

    move-result v1

    .line 161
    .local v1, "c":C
    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedCharSequence;->styleCodeAt(I)J

    move-result-wide v2

    iget-object v4, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v4}, Lorg/jline/utils/AttributedStyle;->getMask()J

    move-result-wide v4

    not-long v4, v4

    and-long/2addr v2, v4

    iget-object v4, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v4}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 162
    .local v2, "s":J
    iget-object v4, p0, Lorg/jline/utils/AttributedStringBuilder;->tabs:Lorg/jline/utils/AttributedStringBuilder$TabStops;

    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder$TabStops;->defined()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_0

    .line 163
    new-instance v4, Lorg/jline/utils/AttributedStyle;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v2, v3, v5, v6}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    invoke-virtual {p0, v4}, Lorg/jline/utils/AttributedStringBuilder;->insertTab(Lorg/jline/utils/AttributedStyle;)V

    goto :goto_2

    .line 165
    :cond_0
    iget v4, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lorg/jline/utils/AttributedStringBuilder;->ensureCapacity(I)V

    .line 166
    iget-object v4, p0, Lorg/jline/utils/AttributedStringBuilder;->buffer:[C

    iget v5, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    aput-char v1, v4, v5

    .line 167
    iget-object v4, p0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    aput-wide v2, v4, v5

    .line 168
    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    .line 169
    const/4 v4, 0x0

    iput v4, p0, Lorg/jline/utils/AttributedStringBuilder;->lastLineLength:I

    goto :goto_1

    .line 171
    :cond_1
    iget v4, p0, Lorg/jline/utils/AttributedStringBuilder;->lastLineLength:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jline/utils/AttributedStringBuilder;->lastLineLength:I

    .line 173
    :goto_1
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    .line 159
    .end local v1    # "c":C
    .end local v2    # "s":J
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "i":I
    :cond_2
    return-object p0
.end method

.method public append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 2
    .param p1, "str"    # Lorg/jline/utils/AttributedString;

    .line 146
    invoke-virtual {p1}, Lorg/jline/utils/AttributedString;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedCharSequence;II)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/jline/utils/AttributedString;II)Lorg/jline/utils/AttributedStringBuilder;
    .locals 1
    .param p1, "str"    # Lorg/jline/utils/AttributedString;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedCharSequence;II)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendAnsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "ansi"    # Ljava/lang/String;

    .line 191
    invoke-virtual {p0, p1}, Lorg/jline/utils/AttributedStringBuilder;->ansiAppend(Ljava/lang/String;)Lorg/jline/utils/AttributedStringBuilder;

    .line 192
    return-void
.end method

.method protected buffer()[C
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->buffer:[C

    return-object v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 58
    iget-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method protected ensureCapacity(I)V
    .locals 2
    .param p1, "nl"    # I

    .line 180
    iget-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->buffer:[C

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 181
    array-length v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    .local v0, "s":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 183
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Lorg/jline/utils/AttributedStringBuilder;->buffer:[C

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/AttributedStringBuilder;->buffer:[C

    .line 186
    iget-object v1, p0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    .line 188
    .end local v0    # "s":I
    :cond_1
    return-void
.end method

.method protected insertTab(Lorg/jline/utils/AttributedStyle;)V
    .locals 6
    .param p1, "s"    # Lorg/jline/utils/AttributedStyle;

    .line 361
    iget-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->tabs:Lorg/jline/utils/AttributedStringBuilder$TabStops;

    iget v1, p0, Lorg/jline/utils/AttributedStringBuilder;->lastLineLength:I

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder$TabStops;->spaces(I)I

    move-result v0

    .line 362
    .local v0, "nb":I
    iget v1, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/jline/utils/AttributedStringBuilder;->ensureCapacity(I)V

    .line 363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 364
    iget-object v2, p0, Lorg/jline/utils/AttributedStringBuilder;->buffer:[C

    iget v3, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    const/16 v4, 0x20

    aput-char v4, v2, v3

    .line 365
    iget-object v2, p0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 366
    iget v2, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lorg/jline/utils/AttributedStringBuilder;->lastLineLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jline/utils/AttributedStringBuilder;->lastLineLength:I

    .line 369
    return-void
.end method

.method public length()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    return v0
.end method

.method protected offset()I
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "l"    # I

    .line 372
    iput p1, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    .line 373
    return-void
.end method

.method public style(Ljava/util/function/Function;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/jline/utils/AttributedStyle;",
            "Lorg/jline/utils/AttributedStyle;",
            ">;)",
            "Lorg/jline/utils/AttributedStringBuilder;"
        }
    .end annotation

    .line 121
    .local p1, "style":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/jline/utils/AttributedStyle;Lorg/jline/utils/AttributedStyle;>;"
    iget-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedStyle;

    iput-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 122
    return-object p0
.end method

.method public style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 0
    .param p1, "style"    # Lorg/jline/utils/AttributedStyle;

    .line 116
    iput-object p1, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 117
    return-object p0
.end method

.method public style()Lorg/jline/utils/AttributedStyle;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    return-object v0
.end method

.method public styleAt(I)Lorg/jline/utils/AttributedStyle;
    .locals 3
    .param p1, "index"    # I

    .line 63
    new-instance v0, Lorg/jline/utils/AttributedStyle;

    iget-object v1, p0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    aget-wide v1, v1, p1

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/jline/utils/AttributedStyle;-><init>(JJ)V

    return-object v0
.end method

.method styleCodeAt(I)J
    .locals 2
    .param p1, "index"    # I

    .line 68
    iget-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public styleMatches(Ljava/util/regex/Pattern;Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 9
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedStyle;",
            ">;)",
            "Lorg/jline/utils/AttributedStringBuilder;"
        }
    .end annotation

    .line 409
    .local p2, "styles":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedStyle;>;"
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 410
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    const/4 v1, 0x0

    .local v1, "group":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 412
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/utils/AttributedStyle;

    .line 413
    .local v2, "s":Lorg/jline/utils/AttributedStyle;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    .local v3, "i":I
    :goto_2
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 414
    iget-object v4, p0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    aget-wide v5, v4, v3

    invoke-virtual {v2}, Lorg/jline/utils/AttributedStyle;->getMask()J

    move-result-wide v7

    not-long v7, v7

    and-long/2addr v5, v7

    invoke-virtual {v2}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v7

    or-long/2addr v5, v7

    aput-wide v5, v4, v3

    .line 413
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 411
    .end local v2    # "s":Lorg/jline/utils/AttributedStyle;
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "group":I
    :cond_1
    goto :goto_0

    .line 418
    :cond_2
    return-object p0
.end method

.method public styleMatches(Ljava/util/regex/Pattern;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 7
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "s"    # Lorg/jline/utils/AttributedStyle;

    .line 399
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 400
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 402
    iget-object v2, p0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    aget-wide v3, v2, v1

    invoke-virtual {p2}, Lorg/jline/utils/AttributedStyle;->getMask()J

    move-result-wide v5

    not-long v5, v5

    and-long/2addr v3, v5

    invoke-virtual {p2}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v5

    or-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_0
    goto :goto_0

    .line 405
    :cond_1
    return-object p0
.end method

.method public styled(Ljava/util/function/Function;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 1
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/jline/utils/AttributedStyle;",
            "Lorg/jline/utils/AttributedStyle;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Lorg/jline/utils/AttributedStringBuilder;"
        }
    .end annotation

    .line 126
    .local p1, "style":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/jline/utils/AttributedStyle;Lorg/jline/utils/AttributedStyle;>;"
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lorg/jline/utils/AttributedStringBuilder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lorg/jline/utils/AttributedStringBuilder;->styled(Ljava/util/function/Function;Ljava/util/function/Consumer;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public styled(Ljava/util/function/Function;Ljava/util/function/Consumer;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/jline/utils/AttributedStyle;",
            "Lorg/jline/utils/AttributedStyle;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/utils/AttributedStringBuilder;",
            ">;)",
            "Lorg/jline/utils/AttributedStringBuilder;"
        }
    .end annotation

    .line 134
    .local p1, "style":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/jline/utils/AttributedStyle;Lorg/jline/utils/AttributedStyle;>;"
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/utils/AttributedStringBuilder;>;"
    iget-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 135
    .local v0, "prev":Lorg/jline/utils/AttributedStyle;
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/utils/AttributedStyle;

    iput-object v1, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 136
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 137
    iput-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->current:Lorg/jline/utils/AttributedStyle;

    .line 138
    return-object p0
.end method

.method public styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 2
    .param p1, "style"    # Lorg/jline/utils/AttributedStyle;
    .param p2, "cs"    # Ljava/lang/CharSequence;

    .line 130
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/jline/utils/AttributedStringBuilder$$ExternalSyntheticLambda0;-><init>(Lorg/jline/utils/AttributedStyle;)V

    new-instance v1, Lorg/jline/utils/AttributedStringBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lorg/jline/utils/AttributedStringBuilder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->styled(Ljava/util/function/Function;Ljava/util/function/Consumer;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/jline/utils/AttributedStringBuilder;->subSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object p1

    return-object p1
.end method

.method public subSequence(II)Lorg/jline/utils/AttributedString;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 83
    new-instance v0, Lorg/jline/utils/AttributedString;

    iget-object v1, p0, Lorg/jline/utils/AttributedStringBuilder;->buffer:[C

    .line 84
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v1

    iget-object v2, p0, Lorg/jline/utils/AttributedStringBuilder;->style:[J

    .line 85
    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v2

    sub-int v3, p2, p1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/jline/utils/AttributedString;-><init>([C[JII)V

    .line 83
    return-object v0
.end method

.method public tabs(I)Lorg/jline/utils/AttributedStringBuilder;
    .locals 3
    .param p1, "tabsize"    # I

    .line 384
    if-ltz p1, :cond_0

    .line 387
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    return-object v0

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab size must be non negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/jline/utils/AttributedStringBuilder;"
        }
    .end annotation

    .line 391
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v0, p0, Lorg/jline/utils/AttributedStringBuilder;->length:I

    if-gtz v0, :cond_0

    .line 394
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder$TabStops;

    invoke-direct {v0, p0, p1}, Lorg/jline/utils/AttributedStringBuilder$TabStops;-><init>(Lorg/jline/utils/AttributedStringBuilder;Ljava/util/List;)V

    iput-object v0, p0, Lorg/jline/utils/AttributedStringBuilder;->tabs:Lorg/jline/utils/AttributedStringBuilder$TabStops;

    .line 395
    return-object p0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change tab size after appending text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
