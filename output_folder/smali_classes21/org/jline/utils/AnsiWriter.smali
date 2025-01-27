.class public Lorg/jline/utils/AnsiWriter;
.super Ljava/io/FilterWriter;
.source "AnsiWriter.java"


# static fields
.field protected static final ATTRIBUTE_BLINK_FAST:I = 0x6

.field protected static final ATTRIBUTE_BLINK_OFF:I = 0x19

.field protected static final ATTRIBUTE_BLINK_SLOW:I = 0x5

.field protected static final ATTRIBUTE_CONCEAL_OFF:I = 0x1c

.field protected static final ATTRIBUTE_CONCEAL_ON:I = 0x8

.field protected static final ATTRIBUTE_INTENSITY_BOLD:I = 0x1

.field protected static final ATTRIBUTE_INTENSITY_FAINT:I = 0x2

.field protected static final ATTRIBUTE_INTENSITY_NORMAL:I = 0x16

.field protected static final ATTRIBUTE_ITALIC:I = 0x3

.field protected static final ATTRIBUTE_NEGATIVE_OFF:I = 0x1b

.field protected static final ATTRIBUTE_NEGATIVE_ON:I = 0x7

.field protected static final ATTRIBUTE_NEGATIVE_Off:I = 0x1b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final ATTRIBUTE_UNDERLINE:I = 0x4

.field protected static final ATTRIBUTE_UNDERLINE_DOUBLE:I = 0x15

.field protected static final ATTRIBUTE_UNDERLINE_OFF:I = 0x18

.field private static final BEL:I = 0x7

.field protected static final BLACK:I = 0x0

.field protected static final BLUE:I = 0x4

.field protected static final CYAN:I = 0x6

.field protected static final ERASE_LINE:I = 0x2

.field protected static final ERASE_LINE_TO_BEGINING:I = 0x1

.field protected static final ERASE_LINE_TO_END:I = 0x0

.field protected static final ERASE_SCREEN:I = 0x2

.field protected static final ERASE_SCREEN_TO_BEGINING:I = 0x1

.field protected static final ERASE_SCREEN_TO_END:I = 0x0

.field private static final FIRST_ESC_CHAR:I = 0x1b

.field protected static final GREEN:I = 0x2

.field private static final LOOKING_FOR_CHARSET:I = 0x9

.field private static final LOOKING_FOR_FIRST_ESC_CHAR:I = 0x0

.field private static final LOOKING_FOR_INT_ARG_END:I = 0x4

.field private static final LOOKING_FOR_NEXT_ARG:I = 0x2

.field private static final LOOKING_FOR_OSC_COMMAND:I = 0x5

.field private static final LOOKING_FOR_OSC_COMMAND_END:I = 0x6

.field private static final LOOKING_FOR_OSC_PARAM:I = 0x7

.field private static final LOOKING_FOR_SECOND_ESC_CHAR:I = 0x1

.field private static final LOOKING_FOR_ST:I = 0x8

.field private static final LOOKING_FOR_STR_ARG_END:I = 0x3

.field protected static final MAGENTA:I = 0x5

.field private static final MAX_ESCAPE_SEQUENCE_LENGTH:I = 0x64

.field protected static final RED:I = 0x1

.field private static final RESET_CODE:[C

.field private static final SECOND_CHARSET0_CHAR:I = 0x28

.field private static final SECOND_CHARSET1_CHAR:I = 0x29

.field private static final SECOND_ESC_CHAR:I = 0x5b

.field private static final SECOND_OSC_CHAR:I = 0x5d

.field private static final SECOND_ST_CHAR:I = 0x5c

.field protected static final WHITE:I = 0x7

.field protected static final YELLOW:I = 0x3


# instance fields
.field private final buffer:[C

.field private final options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pos:I

.field private startOfValue:I

.field state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "\u001b[0m"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jline/utils/AnsiWriter;->RESET_CODE:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 49
    const/16 v0, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    .line 65
    iput v0, p0, Lorg/jline/utils/AnsiWriter;->state:I

    .line 46
    return-void
.end method

.method private getNextOptionInt(Ljava/util/Iterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    .local p1, "optionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 260
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 261
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private optionInt(Ljava/util/ArrayList;I)I
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 788
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 790
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 791
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 794
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 792
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 789
    .end local v0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private optionInt(Ljava/util/ArrayList;II)I
    .locals 2
    .param p2, "index"    # I
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;II)I"
        }
    .end annotation

    .line 799
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 800
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 801
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 802
    return p3

    .line 804
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 806
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    return p3
.end method

.method private processCharsetSelect(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;I)I

    move-result v0

    .line 779
    .local v0, "set":I
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 780
    .local v2, "seq":C
    invoke-virtual {p0, v0, v2}, Lorg/jline/utils/AnsiWriter;->processCharsetSelect(IC)V

    .line 781
    return v1
.end method

.method private processEscapeCommand(Ljava/util/ArrayList;I)Z
    .locals 18
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 273
    const/16 v0, 0x61

    const/16 v4, 0x5a

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 401
    if-gt v0, v3, :cond_13

    const/16 v0, 0x7a

    if-gt v0, v3, :cond_13

    .line 402
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lorg/jline/utils/AnsiWriter;->processUnknownExtension(Ljava/util/ArrayList;I)V

    goto/16 :goto_8

    .line 397
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/jline/utils/AnsiWriter;->processRestoreCursorPosition()V

    .line 398
    return v6

    .line 394
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/jline/utils/AnsiWriter;->processSaveCursorPosition()V

    .line 395
    return v6

    .line 319
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 320
    .local v8, "next":Ljava/lang/Object;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Integer;

    if-ne v9, v10, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local p2    # "command":I
    throw v0

    .line 323
    .end local v8    # "next":Ljava/lang/Object;
    .restart local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p2    # "command":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 325
    :cond_2
    const/4 v7, 0x0

    .line 326
    .local v7, "count":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 327
    .local v8, "optionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 328
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 329
    .local v9, "next":Ljava/lang/Object;
    if-eqz v9, :cond_10

    .line 330
    add-int/lit8 v7, v7, 0x1

    .line 331
    move-object v10, v9

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 332
    .local v10, "value":I
    const/16 v11, 0x1e

    if-gt v11, v10, :cond_3

    const/16 v11, 0x25

    if-gt v10, v11, :cond_3

    .line 333
    add-int/lit8 v11, v10, -0x1e

    invoke-virtual {v1, v11}, Lorg/jline/utils/AnsiWriter;->processSetForegroundColor(I)V

    goto/16 :goto_7

    .line 334
    :cond_3
    const/16 v11, 0x28

    if-gt v11, v10, :cond_4

    const/16 v11, 0x2f

    if-gt v10, v11, :cond_4

    .line 335
    add-int/lit8 v11, v10, -0x28

    invoke-virtual {v1, v11}, Lorg/jline/utils/AnsiWriter;->processSetBackgroundColor(I)V

    goto/16 :goto_7

    .line 336
    :cond_4
    if-gt v4, v10, :cond_5

    if-gt v10, v0, :cond_5

    .line 337
    add-int/lit8 v11, v10, -0x5a

    invoke-virtual {v1, v11, v6}, Lorg/jline/utils/AnsiWriter;->processSetForegroundColor(IZ)V

    goto/16 :goto_7

    .line 338
    :cond_5
    const/16 v11, 0x64

    if-gt v11, v10, :cond_6

    const/16 v11, 0x6b

    if-gt v10, v11, :cond_6

    .line 339
    add-int/lit8 v11, v10, -0x64

    invoke-virtual {v1, v11, v6}, Lorg/jline/utils/AnsiWriter;->processSetBackgroundColor(IZ)V

    goto/16 :goto_7

    .line 340
    :cond_6
    const/16 v11, 0x26

    if-eq v10, v11, :cond_8

    const/16 v12, 0x30

    if-ne v10, v12, :cond_7

    goto :goto_3

    .line 373
    :cond_7
    sparse-switch v10, :sswitch_data_1

    .line 384
    invoke-virtual {v1, v10}, Lorg/jline/utils/AnsiWriter;->processSetAttribute(I)V

    goto/16 :goto_7

    .line 378
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/jline/utils/AnsiWriter;->processDefaultBackgroundColor()V

    .line 379
    goto :goto_7

    .line 375
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/jline/utils/AnsiWriter;->processDefaultTextColor()V

    .line 376
    goto :goto_7

    .line 381
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/jline/utils/AnsiWriter;->processAttributeRest()V

    .line 382
    goto :goto_7

    .line 342
    :cond_8
    :goto_3
    invoke-direct {v1, v8}, Lorg/jline/utils/AnsiWriter;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v12

    .line 343
    .local v12, "arg2or5":I
    const/4 v13, 0x2

    const/16 v14, 0xff

    if-ne v12, v13, :cond_c

    .line 345
    invoke-direct {v1, v8}, Lorg/jline/utils/AnsiWriter;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v13

    .line 346
    .local v13, "r":I
    invoke-direct {v1, v8}, Lorg/jline/utils/AnsiWriter;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v15

    .line 347
    .local v15, "g":I
    invoke-direct {v1, v8}, Lorg/jline/utils/AnsiWriter;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v16

    move/from16 v17, v16

    .line 348
    .local v17, "b":I
    if-ltz v13, :cond_a

    if-gt v13, v14, :cond_a

    if-ltz v15, :cond_a

    if-gt v15, v14, :cond_a

    move/from16 v4, v17

    .end local v17    # "b":I
    .local v4, "b":I
    if-ltz v4, :cond_b

    if-gt v4, v14, :cond_b

    .line 349
    if-ne v10, v11, :cond_9

    .line 350
    invoke-virtual {v1, v13, v15, v4}, Lorg/jline/utils/AnsiWriter;->processSetForegroundColorExt(III)V

    goto :goto_4

    .line 352
    :cond_9
    invoke-virtual {v1, v13, v15, v4}, Lorg/jline/utils/AnsiWriter;->processSetBackgroundColorExt(III)V

    .line 356
    .end local v4    # "b":I
    .end local v13    # "r":I
    .end local v15    # "g":I
    :goto_4
    goto :goto_6

    .line 348
    .restart local v13    # "r":I
    .restart local v15    # "g":I
    .restart local v17    # "b":I
    :cond_a
    move/from16 v4, v17

    .line 354
    .end local v17    # "b":I
    .restart local v4    # "b":I
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local p2    # "command":I
    throw v0

    .line 357
    .end local v4    # "b":I
    .end local v13    # "r":I
    .end local v15    # "g":I
    .restart local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p2    # "command":I
    :cond_c
    const/4 v4, 0x5

    if-ne v12, v4, :cond_f

    .line 359
    invoke-direct {v1, v8}, Lorg/jline/utils/AnsiWriter;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v4

    .line 360
    .local v4, "paletteIndex":I
    if-ltz v4, :cond_e

    if-gt v4, v14, :cond_e

    .line 361
    if-ne v10, v11, :cond_d

    .line 362
    invoke-virtual {v1, v4}, Lorg/jline/utils/AnsiWriter;->processSetForegroundColorExt(I)V

    goto :goto_5

    .line 364
    :cond_d
    invoke-virtual {v1, v4}, Lorg/jline/utils/AnsiWriter;->processSetBackgroundColorExt(I)V

    .line 368
    .end local v4    # "paletteIndex":I
    :goto_5
    nop

    .line 372
    .end local v12    # "arg2or5":I
    :goto_6
    goto :goto_7

    .line 366
    .restart local v4    # "paletteIndex":I
    .restart local v12    # "arg2or5":I
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local p2    # "command":I
    throw v0

    .line 370
    .end local v4    # "paletteIndex":I
    .restart local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p2    # "command":I
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local p2    # "command":I
    throw v0

    .line 388
    .end local v9    # "next":Ljava/lang/Object;
    .end local v10    # "value":I
    .end local v12    # "arg2or5":I
    .restart local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p2    # "command":I
    :cond_10
    :goto_7
    const/16 v4, 0x5a

    goto/16 :goto_2

    .line 389
    :cond_11
    if-nez v7, :cond_12

    .line 390
    invoke-virtual/range {p0 .. p0}, Lorg/jline/utils/AnsiWriter;->processAttributeRest()V

    .line 392
    :cond_12
    return v6

    .line 315
    .end local v7    # "count":I
    .end local v8    # "optionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :sswitch_6
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processScrollDown(I)V

    .line 316
    return v6

    .line 312
    :sswitch_7
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processScrollUp(I)V

    .line 313
    return v6

    .line 309
    :sswitch_8
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processDeleteLine(I)V

    .line 310
    return v6

    .line 306
    :sswitch_9
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processInsertLine(I)V

    .line 307
    return v6

    .line 303
    :sswitch_a
    invoke-direct {v1, v2, v5, v5}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processEraseLine(I)V

    .line 304
    return v6

    .line 300
    :sswitch_b
    invoke-direct {v1, v2, v5, v5}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processEraseScreen(I)V

    .line 301
    return v6

    .line 297
    :sswitch_c
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-direct {v1, v2, v6, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lorg/jline/utils/AnsiWriter;->processCursorTo(II)V

    .line 298
    return v6

    .line 293
    :sswitch_d
    invoke-direct {v1, v2, v5}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processCursorToColumn(I)V

    .line 294
    return v6

    .line 290
    :sswitch_e
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processCursorUpLine(I)V

    .line 291
    return v6

    .line 287
    :sswitch_f
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processCursorDownLine(I)V

    .line 288
    return v6

    .line 284
    :sswitch_10
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processCursorLeft(I)V

    .line 285
    return v6

    .line 281
    :sswitch_11
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processCursorRight(I)V

    .line 282
    return v6

    .line 278
    :sswitch_12
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processCursorDown(I)V

    .line 279
    return v6

    .line 275
    :sswitch_13
    invoke-direct {v1, v2, v5, v6}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jline/utils/AnsiWriter;->processCursorUp(I)V

    .line 276
    return v6

    .line 411
    :catch_0
    move-exception v0

    goto :goto_9

    .line 403
    :goto_8
    return v6

    .line 405
    :cond_13
    const/16 v0, 0x41

    if-gt v0, v3, :cond_14

    const/16 v0, 0x5a

    if-gt v0, v3, :cond_14

    .line 406
    invoke-virtual/range {p0 .. p2}, Lorg/jline/utils/AnsiWriter;->processUnknownExtension(Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    return v6

    .line 413
    :goto_9
    return v5

    .line 409
    :cond_14
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_13
        0x42 -> :sswitch_12
        0x43 -> :sswitch_11
        0x44 -> :sswitch_10
        0x45 -> :sswitch_f
        0x46 -> :sswitch_e
        0x47 -> :sswitch_d
        0x48 -> :sswitch_c
        0x4a -> :sswitch_b
        0x4b -> :sswitch_a
        0x4c -> :sswitch_9
        0x4d -> :sswitch_8
        0x53 -> :sswitch_7
        0x54 -> :sswitch_6
        0x66 -> :sswitch_c
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x27 -> :sswitch_4
        0x31 -> :sswitch_3
    .end sparse-switch
.end method

.method private processOperatingSystemCommand(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jline/utils/AnsiWriter;->optionInt(Ljava/util/ArrayList;I)I

    move-result v1

    .line 423
    .local v1, "command":I
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 427
    .local v3, "label":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 440
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lorg/jline/utils/AnsiWriter;->processUnknownOperatingSystemCommand(ILjava/lang/String;)V

    goto :goto_0

    .line 435
    :pswitch_0
    invoke-virtual {p0, v3}, Lorg/jline/utils/AnsiWriter;->processChangeWindowTitle(Ljava/lang/String;)V

    .line 436
    return v2

    .line 432
    :pswitch_1
    invoke-virtual {p0, v3}, Lorg/jline/utils/AnsiWriter;->processChangeIconName(Ljava/lang/String;)V

    .line 433
    return v2

    .line 429
    :pswitch_2
    invoke-virtual {p0, v3}, Lorg/jline/utils/AnsiWriter;->processChangeIconNameAndWindowTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    return v2

    .line 443
    :catch_0
    move-exception v2

    goto :goto_1

    .line 441
    :goto_0
    return v2

    .line 445
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reset(Z)V
    .locals 4
    .param p1, "skipBuffer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 241
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    iget v3, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Writer;->write([CII)V

    .line 243
    :cond_0
    iput v0, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    .line 244
    iput v0, p0, Lorg/jline/utils/AnsiWriter;->startOfValue:I

    .line 245
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 246
    iput v0, p0, Lorg/jline/utils/AnsiWriter;->state:I

    .line 247
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    sget-object v0, Lorg/jline/utils/AnsiWriter;->RESET_CODE:[C

    invoke-virtual {p0, v0}, Lorg/jline/utils/AnsiWriter;->write([C)V

    .line 828
    invoke-virtual {p0}, Lorg/jline/utils/AnsiWriter;->flush()V

    .line 829
    invoke-super {p0}, Ljava/io/FilterWriter;->close()V

    .line 830
    return-void
.end method

.method protected processAttributeRest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    return-void
.end method

.method protected processChangeIconName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 755
    return-void
.end method

.method protected processChangeIconNameAndWindowTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 746
    invoke-virtual {p0, p1}, Lorg/jline/utils/AnsiWriter;->processChangeIconName(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0, p1}, Lorg/jline/utils/AnsiWriter;->processChangeWindowTitle(Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method protected processChangeWindowTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 762
    return-void
.end method

.method protected processCharsetSelect(IC)V
    .locals 0
    .param p1, "set"    # I
    .param p2, "seq"    # C

    .line 785
    return-void
.end method

.method protected processCursorDown(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    return-void
.end method

.method protected processCursorDownLine(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 698
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->out:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected processCursorLeft(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    return-void
.end method

.method protected processCursorRight(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 718
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected processCursorTo(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    return-void
.end method

.method protected processCursorToColumn(I)V
    .locals 0
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    return-void
.end method

.method protected processCursorUp(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    return-void
.end method

.method protected processCursorUpLine(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    return-void
.end method

.method protected processDefaultBackgroundColor()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    return-void
.end method

.method protected processDefaultTextColor()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    return-void
.end method

.method protected processDeleteLine(I)V
    .locals 0
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    return-void
.end method

.method protected processEraseLine(I)V
    .locals 0
    .param p1, "eraseOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    return-void
.end method

.method protected processEraseScreen(I)V
    .locals 0
    .param p1, "eraseOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    return-void
.end method

.method protected processInsertLine(I)V
    .locals 0
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    return-void
.end method

.method protected processRestoreCursorPosition()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    return-void
.end method

.method protected processSaveCursorPosition()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    return-void
.end method

.method protected processScrollDown(I)V
    .locals 0
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    return-void
.end method

.method protected processScrollUp(I)V
    .locals 0
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    return-void
.end method

.method protected processSetAttribute(I)V
    .locals 0
    .param p1, "attribute"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    return-void
.end method

.method protected processSetBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jline/utils/AnsiWriter;->processSetBackgroundColor(IZ)V

    .line 609
    return-void
.end method

.method protected processSetBackgroundColor(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "bright"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    if-eqz p2, :cond_0

    add-int/lit8 v0, p1, 0x8

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jline/utils/AnsiWriter;->processSetBackgroundColorExt(I)V

    .line 620
    return-void
.end method

.method protected processSetBackgroundColorExt(I)V
    .locals 0
    .param p1, "paletteIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    return-void
.end method

.method protected processSetBackgroundColorExt(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    const/16 v0, 0x10

    invoke-static {p1, p2, p3, v0}, Lorg/jline/utils/Colors;->roundRgbColor(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/utils/AnsiWriter;->processSetBackgroundColorExt(I)V

    .line 641
    return-void
.end method

.method protected processSetForegroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jline/utils/AnsiWriter;->processSetForegroundColor(IZ)V

    .line 568
    return-void
.end method

.method protected processSetForegroundColor(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "bright"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    if-eqz p2, :cond_0

    add-int/lit8 v0, p1, 0x8

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jline/utils/AnsiWriter;->processSetForegroundColorExt(I)V

    .line 579
    return-void
.end method

.method protected processSetForegroundColorExt(I)V
    .locals 0
    .param p1, "paletteIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    return-void
.end method

.method protected processSetForegroundColorExt(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    const/16 v0, 0x10

    invoke-static {p1, p2, p3, v0}, Lorg/jline/utils/Colors;->roundRgbColor(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/utils/AnsiWriter;->processSetForegroundColorExt(I)V

    .line 600
    return-void
.end method

.method protected processUnknownExtension(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 739
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    return-void
.end method

.method protected processUnknownOperatingSystemCommand(ILjava/lang/String;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "param"    # Ljava/lang/String;

    .line 770
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 10
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    iget v0, p0, Lorg/jline/utils/AnsiWriter;->state:I

    const/16 v1, 0x22

    const/16 v2, 0x1b

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x39

    const/4 v6, 0x2

    const/16 v7, 0x3b

    const/16 v8, 0x30

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    .line 128
    .end local p0    # "this":Lorg/jline/utils/AnsiWriter;
    goto/16 :goto_4

    .line 223
    .restart local p0    # "this":Lorg/jline/utils/AnsiWriter;
    :pswitch_0
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/jline/utils/AnsiWriter;->processCharsetSelect(Ljava/util/ArrayList;)Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    goto/16 :goto_4

    .line 207
    .end local p0    # "this":Lorg/jline/utils/AnsiWriter;
    :pswitch_1
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    iget v1, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    int-to-char v5, p1

    aput-char v5, v0, v1

    .line 208
    const/16 v1, 0x5c

    if-ne v1, p1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/String;

    iget v3, p0, Lorg/jline/utils/AnsiWriter;->startOfValue:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v3

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .line 210
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 211
    const/4 v1, 0x1

    .line 213
    .local v1, "skip":Z
    :try_start_1
    iget-object v2, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lorg/jline/utils/AnsiWriter;->processOperatingSystemCommand(Ljava/util/ArrayList;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 215
    :try_start_2
    invoke-direct {p0, v1}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 216
    nop

    .line 217
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "skip":Z
    goto/16 :goto_4

    .line 215
    .restart local v0    # "value":Ljava/lang/String;
    .restart local v1    # "skip":Z
    :catchall_0
    move-exception v2

    invoke-direct {p0, v1}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 216
    throw v2

    .line 218
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "skip":Z
    :cond_0
    iput v3, p0, Lorg/jline/utils/AnsiWriter;->state:I

    .line 220
    goto/16 :goto_4

    .line 189
    :pswitch_2
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    iget v1, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    int-to-char v6, p1

    aput-char v6, v0, v1

    .line 190
    if-ne v3, p1, :cond_1

    .line 191
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lorg/jline/utils/AnsiWriter;->startOfValue:I

    sub-int/2addr v5, v9

    sub-int/2addr v5, v2

    invoke-direct {v1, v0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .line 192
    .restart local v0    # "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 193
    const/4 v1, 0x1

    .line 195
    .restart local v1    # "skip":Z
    :try_start_3
    iget-object v2, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lorg/jline/utils/AnsiWriter;->processOperatingSystemCommand(Ljava/util/ArrayList;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v1, v2

    .line 197
    :try_start_4
    invoke-direct {p0, v1}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 198
    goto :goto_0

    .line 197
    :catchall_1
    move-exception v2

    invoke-direct {p0, v1}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 198
    throw v2

    .line 199
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "skip":Z
    :cond_1
    if-ne v2, p1, :cond_2

    .line 200
    const/16 v0, 0x8

    iput v0, p0, Lorg/jline/utils/AnsiWriter;->state:I

    goto/16 :goto_4

    .line 199
    :cond_2
    :goto_0
    goto/16 :goto_4

    .line 173
    :pswitch_3
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    iget v1, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    int-to-char v6, p1

    aput-char v6, v0, v1

    .line 174
    if-ne v7, p1, :cond_3

    .line 175
    new-instance v1, Ljava/lang/String;

    iget v5, p0, Lorg/jline/utils/AnsiWriter;->startOfValue:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v5

    invoke-direct {v1, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .line 176
    .local v0, "strValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 177
    .local v1, "value":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget v2, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    iput v2, p0, Lorg/jline/utils/AnsiWriter;->startOfValue:I

    .line 179
    iput v3, p0, Lorg/jline/utils/AnsiWriter;->state:I

    .end local v0    # "strValue":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Integer;
    goto :goto_1

    .line 180
    :cond_3
    if-gt v8, p1, :cond_4

    if-gt p1, v5, :cond_4

    :goto_1
    goto/16 :goto_4

    .line 184
    :cond_4
    invoke-direct {p0, v4}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 186
    goto/16 :goto_4

    .line 163
    :pswitch_4
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    iget v1, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    int-to-char v3, p1

    aput-char v3, v0, v1

    .line 164
    if-gt v8, p1, :cond_5

    if-gt p1, v5, :cond_5

    .line 165
    sub-int/2addr v2, v9

    iput v2, p0, Lorg/jline/utils/AnsiWriter;->startOfValue:I

    .line 166
    const/4 v0, 0x6

    iput v0, p0, Lorg/jline/utils/AnsiWriter;->state:I

    goto/16 :goto_4

    .line 168
    :cond_5
    invoke-direct {p0, v4}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 170
    goto/16 :goto_4

    .line 131
    :pswitch_5
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    iget v1, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    int-to-char v3, p1

    aput-char v3, v0, v1

    .line 132
    if-gt v8, p1, :cond_6

    if-le p1, v5, :cond_13

    .line 133
    :cond_6
    new-instance v1, Ljava/lang/String;

    iget v3, p0, Lorg/jline/utils/AnsiWriter;->startOfValue:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v3

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .line 134
    .restart local v0    # "strValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 135
    .restart local v1    # "value":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    if-ne p1, v7, :cond_7

    .line 137
    iput v6, p0, Lorg/jline/utils/AnsiWriter;->state:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    .line 139
    :cond_7
    const/4 v2, 0x1

    .line 141
    .local v2, "skip":Z
    :try_start_5
    iget-object v3, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lorg/jline/utils/AnsiWriter;->processEscapeCommand(Ljava/util/ArrayList;I)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v2, v3

    .line 143
    :try_start_6
    invoke-direct {p0, v2}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 144
    nop

    .line 146
    .end local v0    # "strValue":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Integer;
    .end local v2    # "skip":Z
    :goto_2
    goto/16 :goto_4

    .line 143
    .restart local v0    # "strValue":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/Integer;
    .restart local v2    # "skip":Z
    :catchall_2
    move-exception v3

    invoke-direct {p0, v2}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 144
    throw v3

    .line 150
    .end local v0    # "strValue":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Integer;
    .end local v2    # "skip":Z
    :pswitch_6
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    iget v2, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    int-to-char v5, p1

    aput-char v5, v0, v2

    .line 151
    if-eq v1, p1, :cond_13

    .line 152
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lorg/jline/utils/AnsiWriter;->startOfValue:I

    sub-int/2addr v3, v9

    sub-int/2addr v3, v2

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .line 153
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    if-ne p1, v7, :cond_8

    .line 155
    iput v6, p0, Lorg/jline/utils/AnsiWriter;->state:I

    goto :goto_3

    .line 157
    :cond_8
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lorg/jline/utils/AnsiWriter;->processEscapeCommand(Ljava/util/ArrayList;I)Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 159
    .end local v0    # "value":Ljava/lang/String;
    :goto_3
    goto/16 :goto_4

    .line 105
    :pswitch_7
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    iget v2, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    int-to-char v6, p1

    aput-char v6, v0, v2

    .line 106
    if-ne v1, p1, :cond_9

    .line 107
    sub-int/2addr v3, v9

    iput v3, p0, Lorg/jline/utils/AnsiWriter;->startOfValue:I

    .line 108
    const/4 v0, 0x3

    iput v0, p0, Lorg/jline/utils/AnsiWriter;->state:I

    goto/16 :goto_4

    .line 109
    :cond_9
    if-gt v8, p1, :cond_a

    if-gt p1, v5, :cond_a

    .line 110
    sub-int/2addr v3, v9

    iput v3, p0, Lorg/jline/utils/AnsiWriter;->startOfValue:I

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lorg/jline/utils/AnsiWriter;->state:I

    goto/16 :goto_4

    .line 112
    :cond_a
    if-ne v7, p1, :cond_b

    .line 113
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 114
    :cond_b
    const/16 v0, 0x3f

    if-ne v0, p1, :cond_c

    .line 115
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 116
    :cond_c
    const/16 v0, 0x3d

    if-ne v0, p1, :cond_d

    .line 117
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_4

    .line 119
    :cond_d
    const/4 v0, 0x1

    .line 121
    .local v0, "skip":Z
    :try_start_7
    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lorg/jline/utils/AnsiWriter;->processEscapeCommand(Ljava/util/ArrayList;I)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v0, v1

    .line 123
    :try_start_8
    invoke-direct {p0, v0}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 124
    nop

    .line 126
    .end local v0    # "skip":Z
    goto :goto_4

    .line 123
    .restart local v0    # "skip":Z
    :catchall_3
    move-exception v1

    invoke-direct {p0, v0}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 124
    throw v1

    .line 88
    .end local v0    # "skip":Z
    :pswitch_8
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    iget v1, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 89
    const/16 v0, 0x5b

    if-ne p1, v0, :cond_e

    .line 90
    iput v6, p0, Lorg/jline/utils/AnsiWriter;->state:I

    goto :goto_4

    .line 91
    :cond_e
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_f

    .line 92
    const/4 v0, 0x5

    iput v0, p0, Lorg/jline/utils/AnsiWriter;->state:I

    goto :goto_4

    .line 93
    :cond_f
    const/16 v0, 0x28

    const/16 v1, 0x9

    if-ne p1, v0, :cond_10

    .line 94
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iput v1, p0, Lorg/jline/utils/AnsiWriter;->state:I

    goto :goto_4

    .line 96
    :cond_10
    const/16 v0, 0x29

    if-ne p1, v0, :cond_11

    .line 97
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->options:Ljava/util/ArrayList;

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iput v1, p0, Lorg/jline/utils/AnsiWriter;->state:I

    goto :goto_4

    .line 100
    :cond_11
    invoke-direct {p0, v4}, Lorg/jline/utils/AnsiWriter;->reset(Z)V

    .line 102
    goto :goto_4

    .line 79
    :pswitch_9
    if-ne p1, v2, :cond_12

    .line 80
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    iget v1, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 81
    iput v9, p0, Lorg/jline/utils/AnsiWriter;->state:I

    goto :goto_4

    .line 83
    :cond_12
    iget-object v0, p0, Lorg/jline/utils/AnsiWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 85
    nop

    .line 229
    :cond_13
    :goto_4
    iget v0, p0, Lorg/jline/utils/AnsiWriter;->pos:I

    iget-object v1, p0, Lorg/jline/utils/AnsiWriter;->buffer:[C

    array-length v1, v1

    if-lt v0, v1, :cond_14

    .line 230
    invoke-direct {p0, v4}, Lorg/jline/utils/AnsiWriter;->reset(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 232
    :cond_14
    monitor-exit p0

    return-void

    .line 76
    .end local p1    # "data":I
    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 821
    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/utils/AnsiWriter;->write(I)V

    .line 820
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 823
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 813
    add-int v1, p2, v0

    aget-char v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/jline/utils/AnsiWriter;->write(I)V

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
