.class public final enum Lorg/jline/reader/LineReader$Option;
.super Ljava/lang/Enum;
.source "LineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/LineReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/reader/LineReader$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/reader/LineReader$Option;

.field public static final enum AUTO_FRESH_LINE:Lorg/jline/reader/LineReader$Option;

.field public static final enum AUTO_GROUP:Lorg/jline/reader/LineReader$Option;

.field public static final enum AUTO_LIST:Lorg/jline/reader/LineReader$Option;

.field public static final enum AUTO_MENU:Lorg/jline/reader/LineReader$Option;

.field public static final enum AUTO_MENU_LIST:Lorg/jline/reader/LineReader$Option;

.field public static final enum AUTO_PARAM_SLASH:Lorg/jline/reader/LineReader$Option;

.field public static final enum AUTO_REMOVE_SLASH:Lorg/jline/reader/LineReader$Option;

.field public static final enum BRACKETED_PASTE:Lorg/jline/reader/LineReader$Option;

.field public static final enum CASE_INSENSITIVE:Lorg/jline/reader/LineReader$Option;

.field public static final enum CASE_INSENSITIVE_SEARCH:Lorg/jline/reader/LineReader$Option;

.field public static final enum COMPLETE_IN_WORD:Lorg/jline/reader/LineReader$Option;

.field public static final enum COMPLETE_MATCHER_CAMELCASE:Lorg/jline/reader/LineReader$Option;

.field public static final enum DELAY_LINE_WRAP:Lorg/jline/reader/LineReader$Option;

.field public static final enum DISABLE_EVENT_EXPANSION:Lorg/jline/reader/LineReader$Option;

.field public static final enum DISABLE_HIGHLIGHTER:Lorg/jline/reader/LineReader$Option;

.field public static final enum EMPTY_WORD_OPTIONS:Lorg/jline/reader/LineReader$Option;

.field public static final enum ERASE_LINE_ON_FINISH:Lorg/jline/reader/LineReader$Option;

.field public static final enum GLOB_COMPLETE:Lorg/jline/reader/LineReader$Option;

.field public static final enum GROUP:Lorg/jline/reader/LineReader$Option;

.field public static final enum GROUP_PERSIST:Lorg/jline/reader/LineReader$Option;

.field public static final enum HISTORY_BEEP:Lorg/jline/reader/LineReader$Option;

.field public static final enum HISTORY_IGNORE_DUPS:Lorg/jline/reader/LineReader$Option;

.field public static final enum HISTORY_IGNORE_SPACE:Lorg/jline/reader/LineReader$Option;

.field public static final enum HISTORY_INCREMENTAL:Lorg/jline/reader/LineReader$Option;

.field public static final enum HISTORY_REDUCE_BLANKS:Lorg/jline/reader/LineReader$Option;

.field public static final enum HISTORY_TIMESTAMPED:Lorg/jline/reader/LineReader$Option;

.field public static final enum HISTORY_VERIFY:Lorg/jline/reader/LineReader$Option;

.field public static final enum INSERT_BRACKET:Lorg/jline/reader/LineReader$Option;

.field public static final enum INSERT_TAB:Lorg/jline/reader/LineReader$Option;

.field public static final enum LIST_AMBIGUOUS:Lorg/jline/reader/LineReader$Option;

.field public static final enum LIST_PACKED:Lorg/jline/reader/LineReader$Option;

.field public static final enum LIST_ROWS_FIRST:Lorg/jline/reader/LineReader$Option;

.field public static final enum MENU_COMPLETE:Lorg/jline/reader/LineReader$Option;

.field public static final enum MOUSE:Lorg/jline/reader/LineReader$Option;

.field public static final enum RECOGNIZE_EXACT:Lorg/jline/reader/LineReader$Option;

.field public static final enum USE_FORWARD_SLASH:Lorg/jline/reader/LineReader$Option;


# instance fields
.field private final def:Z


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 396
    new-instance v0, Lorg/jline/reader/LineReader$Option;

    const-string v1, "COMPLETE_IN_WORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/reader/LineReader$Option;->COMPLETE_IN_WORD:Lorg/jline/reader/LineReader$Option;

    .line 398
    new-instance v1, Lorg/jline/reader/LineReader$Option;

    const-string v3, "COMPLETE_MATCHER_CAMELCASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/reader/LineReader$Option;->COMPLETE_MATCHER_CAMELCASE:Lorg/jline/reader/LineReader$Option;

    .line 399
    new-instance v3, Lorg/jline/reader/LineReader$Option;

    const-string v5, "DISABLE_EVENT_EXPANSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/reader/LineReader$Option;->DISABLE_EVENT_EXPANSION:Lorg/jline/reader/LineReader$Option;

    .line 400
    new-instance v5, Lorg/jline/reader/LineReader$Option;

    const-string v7, "HISTORY_VERIFY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/reader/LineReader$Option;->HISTORY_VERIFY:Lorg/jline/reader/LineReader$Option;

    .line 401
    new-instance v7, Lorg/jline/reader/LineReader$Option;

    const-string v9, "HISTORY_IGNORE_SPACE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lorg/jline/reader/LineReader$Option;->HISTORY_IGNORE_SPACE:Lorg/jline/reader/LineReader$Option;

    .line 402
    new-instance v9, Lorg/jline/reader/LineReader$Option;

    const-string v11, "HISTORY_IGNORE_DUPS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lorg/jline/reader/LineReader$Option;->HISTORY_IGNORE_DUPS:Lorg/jline/reader/LineReader$Option;

    .line 403
    new-instance v11, Lorg/jline/reader/LineReader$Option;

    const-string v13, "HISTORY_REDUCE_BLANKS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lorg/jline/reader/LineReader$Option;->HISTORY_REDUCE_BLANKS:Lorg/jline/reader/LineReader$Option;

    .line 404
    new-instance v13, Lorg/jline/reader/LineReader$Option;

    const-string v15, "HISTORY_BEEP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lorg/jline/reader/LineReader$Option;->HISTORY_BEEP:Lorg/jline/reader/LineReader$Option;

    .line 405
    new-instance v15, Lorg/jline/reader/LineReader$Option;

    const-string v14, "HISTORY_INCREMENTAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lorg/jline/reader/LineReader$Option;->HISTORY_INCREMENTAL:Lorg/jline/reader/LineReader$Option;

    .line 406
    new-instance v14, Lorg/jline/reader/LineReader$Option;

    const-string v12, "HISTORY_TIMESTAMPED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lorg/jline/reader/LineReader$Option;->HISTORY_TIMESTAMPED:Lorg/jline/reader/LineReader$Option;

    .line 408
    new-instance v12, Lorg/jline/reader/LineReader$Option;

    const-string v10, "AUTO_GROUP"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lorg/jline/reader/LineReader$Option;->AUTO_GROUP:Lorg/jline/reader/LineReader$Option;

    .line 409
    new-instance v10, Lorg/jline/reader/LineReader$Option;

    const-string v8, "AUTO_MENU"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lorg/jline/reader/LineReader$Option;->AUTO_MENU:Lorg/jline/reader/LineReader$Option;

    .line 410
    new-instance v8, Lorg/jline/reader/LineReader$Option;

    const-string v6, "AUTO_LIST"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lorg/jline/reader/LineReader$Option;->AUTO_LIST:Lorg/jline/reader/LineReader$Option;

    .line 412
    new-instance v6, Lorg/jline/reader/LineReader$Option;

    const-string v2, "AUTO_MENU_LIST"

    const/16 v4, 0xd

    invoke-direct {v6, v2, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/reader/LineReader$Option;->AUTO_MENU_LIST:Lorg/jline/reader/LineReader$Option;

    .line 413
    new-instance v2, Lorg/jline/reader/LineReader$Option;

    const-string v4, "RECOGNIZE_EXACT"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v2, v4, v6}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/reader/LineReader$Option;->RECOGNIZE_EXACT:Lorg/jline/reader/LineReader$Option;

    .line 415
    new-instance v4, Lorg/jline/reader/LineReader$Option;

    const-string v6, "GROUP"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    move-object/from16 v18, v8

    const/4 v8, 0x1

    invoke-direct {v4, v6, v2, v8}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lorg/jline/reader/LineReader$Option;->GROUP:Lorg/jline/reader/LineReader$Option;

    .line 417
    new-instance v6, Lorg/jline/reader/LineReader$Option;

    const-string v8, "GROUP_PERSIST"

    const/16 v2, 0x10

    invoke-direct {v6, v8, v2}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/reader/LineReader$Option;->GROUP_PERSIST:Lorg/jline/reader/LineReader$Option;

    .line 419
    new-instance v8, Lorg/jline/reader/LineReader$Option;

    const-string v2, "CASE_INSENSITIVE"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v8, v2, v6}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE:Lorg/jline/reader/LineReader$Option;

    .line 420
    new-instance v2, Lorg/jline/reader/LineReader$Option;

    const-string v6, "LIST_AMBIGUOUS"

    move-object/from16 v20, v8

    const/16 v8, 0x12

    invoke-direct {v2, v6, v8}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/reader/LineReader$Option;->LIST_AMBIGUOUS:Lorg/jline/reader/LineReader$Option;

    .line 421
    new-instance v6, Lorg/jline/reader/LineReader$Option;

    const-string v8, "LIST_PACKED"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v8, v2}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/reader/LineReader$Option;->LIST_PACKED:Lorg/jline/reader/LineReader$Option;

    .line 422
    new-instance v8, Lorg/jline/reader/LineReader$Option;

    const-string v2, "LIST_ROWS_FIRST"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v8, v2, v6}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jline/reader/LineReader$Option;->LIST_ROWS_FIRST:Lorg/jline/reader/LineReader$Option;

    .line 423
    new-instance v2, Lorg/jline/reader/LineReader$Option;

    const-string v6, "GLOB_COMPLETE"

    move-object/from16 v23, v8

    const/16 v8, 0x15

    invoke-direct {v2, v6, v8}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/reader/LineReader$Option;->GLOB_COMPLETE:Lorg/jline/reader/LineReader$Option;

    .line 424
    new-instance v6, Lorg/jline/reader/LineReader$Option;

    const-string v8, "MENU_COMPLETE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v8, v2}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/reader/LineReader$Option;->MENU_COMPLETE:Lorg/jline/reader/LineReader$Option;

    .line 426
    new-instance v2, Lorg/jline/reader/LineReader$Option;

    const-string v8, "AUTO_FRESH_LINE"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v8, v6}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/reader/LineReader$Option;->AUTO_FRESH_LINE:Lorg/jline/reader/LineReader$Option;

    .line 440
    new-instance v6, Lorg/jline/reader/LineReader$Option;

    const-string v8, "DELAY_LINE_WRAP"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v6, v8, v2}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/reader/LineReader$Option;->DELAY_LINE_WRAP:Lorg/jline/reader/LineReader$Option;

    .line 441
    new-instance v2, Lorg/jline/reader/LineReader$Option;

    const-string v8, "AUTO_PARAM_SLASH"

    move-object/from16 v27, v6

    const/16 v6, 0x19

    move-object/from16 v28, v4

    const/4 v4, 0x1

    invoke-direct {v2, v8, v6, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lorg/jline/reader/LineReader$Option;->AUTO_PARAM_SLASH:Lorg/jline/reader/LineReader$Option;

    .line 442
    new-instance v6, Lorg/jline/reader/LineReader$Option;

    const-string v8, "AUTO_REMOVE_SLASH"

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v6, v8, v2, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lorg/jline/reader/LineReader$Option;->AUTO_REMOVE_SLASH:Lorg/jline/reader/LineReader$Option;

    .line 444
    new-instance v2, Lorg/jline/reader/LineReader$Option;

    const-string v4, "USE_FORWARD_SLASH"

    const/16 v8, 0x1b

    invoke-direct {v2, v4, v8}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/reader/LineReader$Option;->USE_FORWARD_SLASH:Lorg/jline/reader/LineReader$Option;

    .line 449
    new-instance v4, Lorg/jline/reader/LineReader$Option;

    const-string v8, "INSERT_TAB"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v8, v2}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/reader/LineReader$Option;->INSERT_TAB:Lorg/jline/reader/LineReader$Option;

    .line 450
    new-instance v2, Lorg/jline/reader/LineReader$Option;

    const-string v8, "MOUSE"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v8, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/reader/LineReader$Option;->MOUSE:Lorg/jline/reader/LineReader$Option;

    .line 451
    new-instance v4, Lorg/jline/reader/LineReader$Option;

    const-string v8, "DISABLE_HIGHLIGHTER"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v8, v2}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/reader/LineReader$Option;->DISABLE_HIGHLIGHTER:Lorg/jline/reader/LineReader$Option;

    .line 452
    new-instance v2, Lorg/jline/reader/LineReader$Option;

    const-string v8, "BRACKETED_PASTE"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    move-object/from16 v34, v6

    const/4 v6, 0x1

    invoke-direct {v2, v8, v4, v6}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lorg/jline/reader/LineReader$Option;->BRACKETED_PASTE:Lorg/jline/reader/LineReader$Option;

    .line 458
    new-instance v4, Lorg/jline/reader/LineReader$Option;

    const-string v6, "ERASE_LINE_ON_FINISH"

    const/16 v8, 0x20

    invoke-direct {v4, v6, v8}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/reader/LineReader$Option;->ERASE_LINE_ON_FINISH:Lorg/jline/reader/LineReader$Option;

    .line 461
    new-instance v6, Lorg/jline/reader/LineReader$Option;

    const-string v8, "CASE_INSENSITIVE_SEARCH"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v6, v8, v4}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE_SEARCH:Lorg/jline/reader/LineReader$Option;

    .line 464
    new-instance v4, Lorg/jline/reader/LineReader$Option;

    const-string v8, "INSERT_BRACKET"

    move-object/from16 v36, v6

    const/16 v6, 0x22

    invoke-direct {v4, v8, v6}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/reader/LineReader$Option;->INSERT_BRACKET:Lorg/jline/reader/LineReader$Option;

    .line 467
    new-instance v6, Lorg/jline/reader/LineReader$Option;

    const-string v8, "EMPTY_WORD_OPTIONS"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    move-object/from16 v38, v2

    const/4 v2, 0x1

    invoke-direct {v6, v8, v4, v2}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lorg/jline/reader/LineReader$Option;->EMPTY_WORD_OPTIONS:Lorg/jline/reader/LineReader$Option;

    .line 395
    const/16 v4, 0x24

    new-array v4, v4, [Lorg/jline/reader/LineReader$Option;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    aput-object v1, v4, v2

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v18, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v28, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v34, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v38, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v6, v4, v0

    sput-object v4, Lorg/jline/reader/LineReader$Option;->$VALUES:[Lorg/jline/reader/LineReader$Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/reader/LineReader$Option;-><init>(Ljava/lang/String;IZ)V

    .line 474
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "def"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 476
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 477
    iput-boolean p3, p0, Lorg/jline/reader/LineReader$Option;->def:Z

    .line 478
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/reader/LineReader$Option;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 395
    const-class v0, Lorg/jline/reader/LineReader$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/LineReader$Option;

    return-object v0
.end method

.method public static values()[Lorg/jline/reader/LineReader$Option;
    .locals 1

    .line 395
    sget-object v0, Lorg/jline/reader/LineReader$Option;->$VALUES:[Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0}, [Lorg/jline/reader/LineReader$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/reader/LineReader$Option;

    return-object v0
.end method


# virtual methods
.method public isDef()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lorg/jline/reader/LineReader$Option;->def:Z

    return v0
.end method

.method public final isSet(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/jline/reader/LineReader$Option;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 481
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Lorg/jline/reader/LineReader$Option;Ljava/lang/Boolean;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 482
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/LineReader$Option;->isDef()Z

    move-result v1

    :goto_0
    return v1
.end method
