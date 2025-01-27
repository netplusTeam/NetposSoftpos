.class synthetic Lorg/jline/builtins/Nano$1;
.super Ljava/lang/Object;
.source "Nano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Nano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jline$builtins$Nano$HighlightRule$RuleType:[I

.field static final synthetic $SwitchMap$org$jline$builtins$Nano$Operation:[I

.field static final synthetic $SwitchMap$org$jline$builtins$Nano$WriteFormat:[I

.field static final synthetic $SwitchMap$org$jline$builtins$Nano$WriteMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2586
    invoke-static {}, Lorg/jline/builtins/Nano$WriteMode;->values()[Lorg/jline/builtins/Nano$WriteMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$WriteMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/jline/builtins/Nano$WriteMode;->WRITE:Lorg/jline/builtins/Nano$WriteMode;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$WriteMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$WriteMode:[I

    sget-object v3, Lorg/jline/builtins/Nano$WriteMode;->APPEND:Lorg/jline/builtins/Nano$WriteMode;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$WriteMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$WriteMode:[I

    sget-object v4, Lorg/jline/builtins/Nano$WriteMode;->PREPEND:Lorg/jline/builtins/Nano$WriteMode;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$WriteMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 2512
    :goto_2
    invoke-static {}, Lorg/jline/builtins/Nano$WriteFormat;->values()[Lorg/jline/builtins/Nano$WriteFormat;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$WriteFormat:[I

    :try_start_3
    sget-object v4, Lorg/jline/builtins/Nano$WriteFormat;->UNIX:Lorg/jline/builtins/Nano$WriteFormat;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$WriteFormat;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$WriteFormat:[I

    sget-object v4, Lorg/jline/builtins/Nano$WriteFormat;->DOS:Lorg/jline/builtins/Nano$WriteFormat;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$WriteFormat;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v3, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$WriteFormat:[I

    sget-object v4, Lorg/jline/builtins/Nano$WriteFormat;->MAC:Lorg/jline/builtins/Nano$WriteFormat;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$WriteFormat;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    .line 2194
    :goto_5
    invoke-static {}, Lorg/jline/builtins/Nano$Operation;->values()[Lorg/jline/builtins/Nano$Operation;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    :try_start_6
    sget-object v4, Lorg/jline/builtins/Nano$Operation;->QUIT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    :goto_6
    :try_start_7
    sget-object v3, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v4, Lorg/jline/builtins/Nano$Operation;->WRITE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    :goto_7
    :try_start_8
    sget-object v3, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v4, Lorg/jline/builtins/Nano$Operation;->READ:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    :goto_8
    :try_start_9
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->UP:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v2

    :goto_9
    :try_start_a
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->DOWN:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v2

    :goto_a
    :try_start_b
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->LEFT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v2

    :goto_b
    :try_start_c
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->RIGHT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v2

    :goto_c
    :try_start_d
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v2

    :goto_d
    :try_start_e
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->BACKSPACE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x9

    aput v4, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v2

    :goto_e
    :try_start_f
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->DELETE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    aput v4, v2, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v2

    :goto_f
    :try_start_10
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->WRAP:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0xb

    aput v4, v2, v3
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v2

    :goto_10
    :try_start_11
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->NUMBERS:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0xc

    aput v4, v2, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v2

    :goto_11
    :try_start_12
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->SMOOTH_SCROLLING:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0xd

    aput v4, v2, v3
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v2

    :goto_12
    :try_start_13
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->MOUSE_SUPPORT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0xe

    aput v4, v2, v3
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v2

    :goto_13
    :try_start_14
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->ONE_MORE_LINE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0xf

    aput v4, v2, v3
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v2

    :goto_14
    :try_start_15
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->CLEAR_SCREEN:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x10

    aput v4, v2, v3
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v2

    :goto_15
    :try_start_16
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->PREV_BUFFER:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x11

    aput v4, v2, v3
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v2

    :goto_16
    :try_start_17
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->NEXT_BUFFER:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x12

    aput v4, v2, v3
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v2

    :goto_17
    :try_start_18
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->CUR_POS:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x13

    aput v4, v2, v3
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v2

    :goto_18
    :try_start_19
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->PREV_WORD:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x14

    aput v4, v2, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v2

    :goto_19
    :try_start_1a
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->NEXT_WORD:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x15

    aput v4, v2, v3
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v2

    :goto_1a
    :try_start_1b
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->BEGINNING_OF_LINE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x16

    aput v4, v2, v3
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v2

    :goto_1b
    :try_start_1c
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->END_OF_LINE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x17

    aput v4, v2, v3
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v2

    :goto_1c
    :try_start_1d
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->FIRST_LINE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x18

    aput v4, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v2

    :goto_1d
    :try_start_1e
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->LAST_LINE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x19

    aput v4, v2, v3
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v2

    :goto_1e
    :try_start_1f
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->PREV_PAGE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x1a

    aput v4, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v2

    :goto_1f
    :try_start_20
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->NEXT_PAGE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x1b

    aput v4, v2, v3
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v2

    :goto_20
    :try_start_21
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->SCROLL_UP:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x1c

    aput v4, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v2

    :goto_21
    :try_start_22
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->SCROLL_DOWN:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x1d

    aput v4, v2, v3
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v2

    :goto_22
    :try_start_23
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->SEARCH:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x1e

    aput v4, v2, v3
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v2

    :goto_23
    :try_start_24
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->REPLACE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x1f

    aput v4, v2, v3
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v2

    :goto_24
    :try_start_25
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->NEXT_SEARCH:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x20

    aput v4, v2, v3
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v2

    :goto_25
    :try_start_26
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->HELP:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x21

    aput v4, v2, v3
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v2

    :goto_26
    :try_start_27
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->CONSTANT_CURSOR:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x22

    aput v4, v2, v3
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v2

    :goto_27
    :try_start_28
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->VERBATIM:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x23

    aput v4, v2, v3
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v2

    :goto_28
    :try_start_29
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->MATCHING:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x24

    aput v4, v2, v3
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v2

    :goto_29
    :try_start_2a
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->MOUSE_EVENT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x25

    aput v4, v2, v3
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v2

    :goto_2a
    :try_start_2b
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->TOGGLE_SUSPENSION:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x26

    aput v4, v2, v3
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v2

    :goto_2b
    :try_start_2c
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->COPY:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x27

    aput v4, v2, v3
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v2

    :goto_2c
    :try_start_2d
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->CUT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x28

    aput v4, v2, v3
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v2

    :goto_2d
    :try_start_2e
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->UNCUT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x29

    aput v4, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v2

    :goto_2e
    :try_start_2f
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->GOTO:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x2a

    aput v4, v2, v3
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_2f

    :catch_2f
    move-exception v2

    :goto_2f
    :try_start_30
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->CUT_TO_END_TOGGLE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x2b

    aput v4, v2, v3
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    goto :goto_30

    :catch_30
    move-exception v2

    :goto_30
    :try_start_31
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->CUT_TO_END:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x2c

    aput v4, v2, v3
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    goto :goto_31

    :catch_31
    move-exception v2

    :goto_31
    :try_start_32
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->MARK:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x2d

    aput v4, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    goto :goto_32

    :catch_32
    move-exception v2

    :goto_32
    :try_start_33
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->HIGHLIGHT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x2e

    aput v4, v2, v3
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    goto :goto_33

    :catch_33
    move-exception v2

    :goto_33
    :try_start_34
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->TABS_TO_SPACE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x2f

    aput v4, v2, v3
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    goto :goto_34

    :catch_34
    move-exception v2

    :goto_34
    :try_start_35
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->AUTO_INDENT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x30

    aput v4, v2, v3
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    goto :goto_35

    :catch_35
    move-exception v2

    :goto_35
    :try_start_36
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->CANCEL:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x31

    aput v4, v2, v3
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    goto :goto_36

    :catch_36
    move-exception v2

    :goto_36
    :try_start_37
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->ACCEPT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x32

    aput v4, v2, v3
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    goto :goto_37

    :catch_37
    move-exception v2

    :goto_37
    :try_start_38
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->MAC_FORMAT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x33

    aput v4, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    goto :goto_38

    :catch_38
    move-exception v2

    :goto_38
    :try_start_39
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->DOS_FORMAT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x34

    aput v4, v2, v3
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    goto :goto_39

    :catch_39
    move-exception v2

    :goto_39
    :try_start_3a
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->APPEND_MODE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x35

    aput v4, v2, v3
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    goto :goto_3a

    :catch_3a
    move-exception v2

    :goto_3a
    :try_start_3b
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->PREPEND_MODE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x36

    aput v4, v2, v3
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    goto :goto_3b

    :catch_3b
    move-exception v2

    :goto_3b
    :try_start_3c
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->BACKUP:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x37

    aput v4, v2, v3
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    goto :goto_3c

    :catch_3c
    move-exception v2

    :goto_3c
    :try_start_3d
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->NEW_BUFFER:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x38

    aput v4, v2, v3
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    goto :goto_3d

    :catch_3d
    move-exception v2

    :goto_3d
    :try_start_3e
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->ALL:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x39

    aput v4, v2, v3
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    goto :goto_3e

    :catch_3e
    move-exception v2

    :goto_3e
    :try_start_3f
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->YES:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x3a

    aput v4, v2, v3
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    goto :goto_3f

    :catch_3f
    move-exception v2

    :goto_3f
    :try_start_40
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->NO:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x3b

    aput v4, v2, v3
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    goto :goto_40

    :catch_40
    move-exception v2

    :goto_40
    :try_start_41
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->CASE_SENSITIVE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x3c

    aput v4, v2, v3
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    goto :goto_41

    :catch_41
    move-exception v2

    :goto_41
    :try_start_42
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->BACKWARDS:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x3d

    aput v4, v2, v3
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    goto :goto_42

    :catch_42
    move-exception v2

    :goto_42
    :try_start_43
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->REGEXP:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x3e

    aput v4, v2, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    goto :goto_43

    :catch_43
    move-exception v2

    :goto_43
    :try_start_44
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    sget-object v3, Lorg/jline/builtins/Nano$Operation;->TOGGLE_REPLACE:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    const/16 v4, 0x3f

    aput v4, v2, v3
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    goto :goto_44

    :catch_44
    move-exception v2

    .line 1546
    :goto_44
    invoke-static {}, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->values()[Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$HighlightRule$RuleType:[I

    :try_start_45
    sget-object v3, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->PATTERN:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    goto :goto_45

    :catch_45
    move-exception v1

    :goto_45
    :try_start_46
    sget-object v1, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$HighlightRule$RuleType:[I

    sget-object v2, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->START_END:Lorg/jline/builtins/Nano$HighlightRule$RuleType;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$HighlightRule$RuleType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    goto :goto_46

    :catch_46
    move-exception v0

    :goto_46
    return-void
.end method
