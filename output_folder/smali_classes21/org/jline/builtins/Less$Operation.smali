.class public final enum Lorg/jline/builtins/Less$Operation;
.super Ljava/lang/Enum;
.source "Less.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Less;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/Less$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/Less$Operation;

.field public static final enum ACCEPT:Lorg/jline/builtins/Less$Operation;

.field public static final enum ADD_FILE:Lorg/jline/builtins/Less$Operation;

.field public static final enum BACKSPACE:Lorg/jline/builtins/Less$Operation;

.field public static final enum BACKWARD_HALF_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

.field public static final enum BACKWARD_ONE_LINE:Lorg/jline/builtins/Less$Operation;

.field public static final enum BACKWARD_ONE_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

.field public static final enum BACKWARD_ONE_WINDOW_OR_LINES:Lorg/jline/builtins/Less$Operation;

.field public static final enum CHAR:Lorg/jline/builtins/Less$Operation;

.field public static final enum DELETE:Lorg/jline/builtins/Less$Operation;

.field public static final enum DELETE_FILE:Lorg/jline/builtins/Less$Operation;

.field public static final enum DELETE_LINE:Lorg/jline/builtins/Less$Operation;

.field public static final enum DELETE_WORD:Lorg/jline/builtins/Less$Operation;

.field public static final enum DOWN:Lorg/jline/builtins/Less$Operation;

.field public static final enum END:Lorg/jline/builtins/Less$Operation;

.field public static final enum EXIT:Lorg/jline/builtins/Less$Operation;

.field public static final enum FIND_CLOSE_BRACKET:Lorg/jline/builtins/Less$Operation;

.field public static final enum FIND_OPEN_BRACKET:Lorg/jline/builtins/Less$Operation;

.field public static final enum FORWARD_FOREVER:Lorg/jline/builtins/Less$Operation;

.field public static final enum FORWARD_HALF_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

.field public static final enum FORWARD_ONE_LINE:Lorg/jline/builtins/Less$Operation;

.field public static final enum FORWARD_ONE_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

.field public static final enum FORWARD_ONE_WINDOW_NO_STOP:Lorg/jline/builtins/Less$Operation;

.field public static final enum FORWARD_ONE_WINDOW_OR_LINES:Lorg/jline/builtins/Less$Operation;

.field public static final enum GOTO_FILE:Lorg/jline/builtins/Less$Operation;

.field public static final enum GO_TO_FIRST_LINE_OR_N:Lorg/jline/builtins/Less$Operation;

.field public static final enum GO_TO_LAST_LINE_OR_N:Lorg/jline/builtins/Less$Operation;

.field public static final enum GO_TO_NEXT_TAG:Lorg/jline/builtins/Less$Operation;

.field public static final enum GO_TO_PERCENT_OR_N:Lorg/jline/builtins/Less$Operation;

.field public static final enum GO_TO_PREVIOUS_TAG:Lorg/jline/builtins/Less$Operation;

.field public static final enum HELP:Lorg/jline/builtins/Less$Operation;

.field public static final enum HOME:Lorg/jline/builtins/Less$Operation;

.field public static final enum INFO_FILE:Lorg/jline/builtins/Less$Operation;

.field public static final enum INSERT:Lorg/jline/builtins/Less$Operation;

.field public static final enum LEFT:Lorg/jline/builtins/Less$Operation;

.field public static final enum LEFT_ONE_HALF_SCREEN:Lorg/jline/builtins/Less$Operation;

.field public static final enum NEXT_FILE:Lorg/jline/builtins/Less$Operation;

.field public static final enum NEXT_WORD:Lorg/jline/builtins/Less$Operation;

.field public static final enum OPT_CHOP_LONG_LINES:Lorg/jline/builtins/Less$Operation;

.field public static final enum OPT_IGNORE_CASE_ALWAYS:Lorg/jline/builtins/Less$Operation;

.field public static final enum OPT_IGNORE_CASE_COND:Lorg/jline/builtins/Less$Operation;

.field public static final enum OPT_PRINT_LINES:Lorg/jline/builtins/Less$Operation;

.field public static final enum OPT_QUIET:Lorg/jline/builtins/Less$Operation;

.field public static final enum OPT_QUIT_AT_FIRST_EOF:Lorg/jline/builtins/Less$Operation;

.field public static final enum OPT_QUIT_AT_SECOND_EOF:Lorg/jline/builtins/Less$Operation;

.field public static final enum OPT_SYNTAX_HIGHLIGHT:Lorg/jline/builtins/Less$Operation;

.field public static final enum OPT_VERY_QUIET:Lorg/jline/builtins/Less$Operation;

.field public static final enum PREV_FILE:Lorg/jline/builtins/Less$Operation;

.field public static final enum PREV_WORD:Lorg/jline/builtins/Less$Operation;

.field public static final enum REPAINT:Lorg/jline/builtins/Less$Operation;

.field public static final enum REPAINT_AND_DISCARD:Lorg/jline/builtins/Less$Operation;

.field public static final enum REPEAT_SEARCH_BACKWARD:Lorg/jline/builtins/Less$Operation;

.field public static final enum REPEAT_SEARCH_BACKWARD_SPAN_FILES:Lorg/jline/builtins/Less$Operation;

.field public static final enum REPEAT_SEARCH_FORWARD:Lorg/jline/builtins/Less$Operation;

.field public static final enum REPEAT_SEARCH_FORWARD_SPAN_FILES:Lorg/jline/builtins/Less$Operation;

.field public static final enum RIGHT:Lorg/jline/builtins/Less$Operation;

.field public static final enum RIGHT_ONE_HALF_SCREEN:Lorg/jline/builtins/Less$Operation;

.field public static final enum UNDO_SEARCH:Lorg/jline/builtins/Less$Operation;

.field public static final enum UP:Lorg/jline/builtins/Less$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 60

    .line 1479
    new-instance v0, Lorg/jline/builtins/Less$Operation;

    const-string v1, "HELP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/Less$Operation;->HELP:Lorg/jline/builtins/Less$Operation;

    .line 1480
    new-instance v1, Lorg/jline/builtins/Less$Operation;

    const-string v3, "EXIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/Less$Operation;->EXIT:Lorg/jline/builtins/Less$Operation;

    .line 1483
    new-instance v3, Lorg/jline/builtins/Less$Operation;

    const-string v5, "FORWARD_ONE_LINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/builtins/Less$Operation;->FORWARD_ONE_LINE:Lorg/jline/builtins/Less$Operation;

    .line 1484
    new-instance v5, Lorg/jline/builtins/Less$Operation;

    const-string v7, "BACKWARD_ONE_LINE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/builtins/Less$Operation;->BACKWARD_ONE_LINE:Lorg/jline/builtins/Less$Operation;

    .line 1485
    new-instance v7, Lorg/jline/builtins/Less$Operation;

    const-string v9, "FORWARD_ONE_WINDOW_OR_LINES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/builtins/Less$Operation;->FORWARD_ONE_WINDOW_OR_LINES:Lorg/jline/builtins/Less$Operation;

    .line 1486
    new-instance v9, Lorg/jline/builtins/Less$Operation;

    const-string v11, "BACKWARD_ONE_WINDOW_OR_LINES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jline/builtins/Less$Operation;->BACKWARD_ONE_WINDOW_OR_LINES:Lorg/jline/builtins/Less$Operation;

    .line 1487
    new-instance v11, Lorg/jline/builtins/Less$Operation;

    const-string v13, "FORWARD_ONE_WINDOW_AND_SET"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jline/builtins/Less$Operation;->FORWARD_ONE_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

    .line 1488
    new-instance v13, Lorg/jline/builtins/Less$Operation;

    const-string v15, "BACKWARD_ONE_WINDOW_AND_SET"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jline/builtins/Less$Operation;->BACKWARD_ONE_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

    .line 1489
    new-instance v15, Lorg/jline/builtins/Less$Operation;

    const-string v14, "FORWARD_ONE_WINDOW_NO_STOP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jline/builtins/Less$Operation;->FORWARD_ONE_WINDOW_NO_STOP:Lorg/jline/builtins/Less$Operation;

    .line 1490
    new-instance v14, Lorg/jline/builtins/Less$Operation;

    const-string v12, "FORWARD_HALF_WINDOW_AND_SET"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jline/builtins/Less$Operation;->FORWARD_HALF_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

    .line 1491
    new-instance v12, Lorg/jline/builtins/Less$Operation;

    const-string v10, "BACKWARD_HALF_WINDOW_AND_SET"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jline/builtins/Less$Operation;->BACKWARD_HALF_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

    .line 1492
    new-instance v10, Lorg/jline/builtins/Less$Operation;

    const-string v8, "LEFT_ONE_HALF_SCREEN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jline/builtins/Less$Operation;->LEFT_ONE_HALF_SCREEN:Lorg/jline/builtins/Less$Operation;

    .line 1493
    new-instance v8, Lorg/jline/builtins/Less$Operation;

    const-string v6, "RIGHT_ONE_HALF_SCREEN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jline/builtins/Less$Operation;->RIGHT_ONE_HALF_SCREEN:Lorg/jline/builtins/Less$Operation;

    .line 1494
    new-instance v6, Lorg/jline/builtins/Less$Operation;

    const-string v4, "FORWARD_FOREVER"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/builtins/Less$Operation;->FORWARD_FOREVER:Lorg/jline/builtins/Less$Operation;

    .line 1495
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v2, "REPAINT"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->REPAINT:Lorg/jline/builtins/Less$Operation;

    .line 1496
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "REPAINT_AND_DISCARD"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->REPAINT_AND_DISCARD:Lorg/jline/builtins/Less$Operation;

    .line 1499
    new-instance v6, Lorg/jline/builtins/Less$Operation;

    const-string v4, "REPEAT_SEARCH_FORWARD"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/builtins/Less$Operation;->REPEAT_SEARCH_FORWARD:Lorg/jline/builtins/Less$Operation;

    .line 1500
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v2, "REPEAT_SEARCH_BACKWARD"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->REPEAT_SEARCH_BACKWARD:Lorg/jline/builtins/Less$Operation;

    .line 1501
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "REPEAT_SEARCH_FORWARD_SPAN_FILES"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->REPEAT_SEARCH_FORWARD_SPAN_FILES:Lorg/jline/builtins/Less$Operation;

    .line 1502
    new-instance v6, Lorg/jline/builtins/Less$Operation;

    const-string v4, "REPEAT_SEARCH_BACKWARD_SPAN_FILES"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/builtins/Less$Operation;->REPEAT_SEARCH_BACKWARD_SPAN_FILES:Lorg/jline/builtins/Less$Operation;

    .line 1503
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v2, "UNDO_SEARCH"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->UNDO_SEARCH:Lorg/jline/builtins/Less$Operation;

    .line 1506
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "GO_TO_FIRST_LINE_OR_N"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->GO_TO_FIRST_LINE_OR_N:Lorg/jline/builtins/Less$Operation;

    .line 1507
    new-instance v6, Lorg/jline/builtins/Less$Operation;

    const-string v4, "GO_TO_LAST_LINE_OR_N"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/builtins/Less$Operation;->GO_TO_LAST_LINE_OR_N:Lorg/jline/builtins/Less$Operation;

    .line 1508
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v4, "GO_TO_PERCENT_OR_N"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->GO_TO_PERCENT_OR_N:Lorg/jline/builtins/Less$Operation;

    .line 1509
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "GO_TO_NEXT_TAG"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->GO_TO_NEXT_TAG:Lorg/jline/builtins/Less$Operation;

    .line 1510
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "GO_TO_PREVIOUS_TAG"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->GO_TO_PREVIOUS_TAG:Lorg/jline/builtins/Less$Operation;

    .line 1511
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "FIND_CLOSE_BRACKET"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->FIND_CLOSE_BRACKET:Lorg/jline/builtins/Less$Operation;

    .line 1512
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "FIND_OPEN_BRACKET"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->FIND_OPEN_BRACKET:Lorg/jline/builtins/Less$Operation;

    .line 1515
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "OPT_PRINT_LINES"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->OPT_PRINT_LINES:Lorg/jline/builtins/Less$Operation;

    .line 1516
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "OPT_CHOP_LONG_LINES"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->OPT_CHOP_LONG_LINES:Lorg/jline/builtins/Less$Operation;

    .line 1517
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "OPT_QUIT_AT_FIRST_EOF"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->OPT_QUIT_AT_FIRST_EOF:Lorg/jline/builtins/Less$Operation;

    .line 1518
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "OPT_QUIT_AT_SECOND_EOF"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->OPT_QUIT_AT_SECOND_EOF:Lorg/jline/builtins/Less$Operation;

    .line 1519
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "OPT_QUIET"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->OPT_QUIET:Lorg/jline/builtins/Less$Operation;

    .line 1520
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "OPT_VERY_QUIET"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->OPT_VERY_QUIET:Lorg/jline/builtins/Less$Operation;

    .line 1521
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "OPT_IGNORE_CASE_COND"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->OPT_IGNORE_CASE_COND:Lorg/jline/builtins/Less$Operation;

    .line 1522
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "OPT_IGNORE_CASE_ALWAYS"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->OPT_IGNORE_CASE_ALWAYS:Lorg/jline/builtins/Less$Operation;

    .line 1523
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "OPT_SYNTAX_HIGHLIGHT"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->OPT_SYNTAX_HIGHLIGHT:Lorg/jline/builtins/Less$Operation;

    .line 1526
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "ADD_FILE"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->ADD_FILE:Lorg/jline/builtins/Less$Operation;

    .line 1527
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "NEXT_FILE"

    move-object/from16 v40, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->NEXT_FILE:Lorg/jline/builtins/Less$Operation;

    .line 1528
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "PREV_FILE"

    move-object/from16 v41, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->PREV_FILE:Lorg/jline/builtins/Less$Operation;

    .line 1529
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "GOTO_FILE"

    move-object/from16 v42, v2

    const/16 v2, 0x28

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->GOTO_FILE:Lorg/jline/builtins/Less$Operation;

    .line 1530
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "INFO_FILE"

    move-object/from16 v43, v4

    const/16 v4, 0x29

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->INFO_FILE:Lorg/jline/builtins/Less$Operation;

    .line 1531
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "DELETE_FILE"

    move-object/from16 v44, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->DELETE_FILE:Lorg/jline/builtins/Less$Operation;

    .line 1534
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "CHAR"

    move-object/from16 v45, v4

    const/16 v4, 0x2b

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->CHAR:Lorg/jline/builtins/Less$Operation;

    .line 1537
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "INSERT"

    move-object/from16 v46, v2

    const/16 v2, 0x2c

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->INSERT:Lorg/jline/builtins/Less$Operation;

    .line 1538
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "RIGHT"

    move-object/from16 v47, v4

    const/16 v4, 0x2d

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->RIGHT:Lorg/jline/builtins/Less$Operation;

    .line 1539
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "LEFT"

    move-object/from16 v48, v2

    const/16 v2, 0x2e

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->LEFT:Lorg/jline/builtins/Less$Operation;

    .line 1540
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "NEXT_WORD"

    move-object/from16 v49, v4

    const/16 v4, 0x2f

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->NEXT_WORD:Lorg/jline/builtins/Less$Operation;

    .line 1541
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "PREV_WORD"

    move-object/from16 v50, v2

    const/16 v2, 0x30

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->PREV_WORD:Lorg/jline/builtins/Less$Operation;

    .line 1542
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "HOME"

    move-object/from16 v51, v4

    const/16 v4, 0x31

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->HOME:Lorg/jline/builtins/Less$Operation;

    .line 1543
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "END"

    move-object/from16 v52, v2

    const/16 v2, 0x32

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->END:Lorg/jline/builtins/Less$Operation;

    .line 1544
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "BACKSPACE"

    move-object/from16 v53, v4

    const/16 v4, 0x33

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->BACKSPACE:Lorg/jline/builtins/Less$Operation;

    .line 1545
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "DELETE"

    move-object/from16 v54, v2

    const/16 v2, 0x34

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->DELETE:Lorg/jline/builtins/Less$Operation;

    .line 1546
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "DELETE_WORD"

    move-object/from16 v55, v4

    const/16 v4, 0x35

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->DELETE_WORD:Lorg/jline/builtins/Less$Operation;

    .line 1547
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "DELETE_LINE"

    move-object/from16 v56, v2

    const/16 v2, 0x36

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->DELETE_LINE:Lorg/jline/builtins/Less$Operation;

    .line 1548
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "ACCEPT"

    move-object/from16 v57, v4

    const/16 v4, 0x37

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->ACCEPT:Lorg/jline/builtins/Less$Operation;

    .line 1549
    new-instance v4, Lorg/jline/builtins/Less$Operation;

    const-string v6, "UP"

    move-object/from16 v58, v2

    const/16 v2, 0x38

    invoke-direct {v4, v6, v2}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/builtins/Less$Operation;->UP:Lorg/jline/builtins/Less$Operation;

    .line 1550
    new-instance v2, Lorg/jline/builtins/Less$Operation;

    const-string v6, "DOWN"

    move-object/from16 v59, v4

    const/16 v4, 0x39

    invoke-direct {v2, v6, v4}, Lorg/jline/builtins/Less$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/builtins/Less$Operation;->DOWN:Lorg/jline/builtins/Less$Operation;

    .line 1476
    const/16 v4, 0x3a

    new-array v4, v4, [Lorg/jline/builtins/Less$Operation;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

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

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

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

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v38, v4, v0

    const/16 v0, 0x24

    aput-object v39, v4, v0

    const/16 v0, 0x25

    aput-object v40, v4, v0

    const/16 v0, 0x26

    aput-object v41, v4, v0

    const/16 v0, 0x27

    aput-object v42, v4, v0

    const/16 v0, 0x28

    aput-object v43, v4, v0

    const/16 v0, 0x29

    aput-object v44, v4, v0

    const/16 v0, 0x2a

    aput-object v45, v4, v0

    const/16 v0, 0x2b

    aput-object v46, v4, v0

    const/16 v0, 0x2c

    aput-object v47, v4, v0

    const/16 v0, 0x2d

    aput-object v48, v4, v0

    const/16 v0, 0x2e

    aput-object v49, v4, v0

    const/16 v0, 0x2f

    aput-object v50, v4, v0

    const/16 v0, 0x30

    aput-object v51, v4, v0

    const/16 v0, 0x31

    aput-object v52, v4, v0

    const/16 v0, 0x32

    aput-object v53, v4, v0

    const/16 v0, 0x33

    aput-object v54, v4, v0

    const/16 v0, 0x34

    aput-object v55, v4, v0

    const/16 v0, 0x35

    aput-object v56, v4, v0

    const/16 v0, 0x36

    aput-object v57, v4, v0

    const/16 v0, 0x37

    aput-object v58, v4, v0

    const/16 v0, 0x38

    aput-object v59, v4, v0

    const/16 v0, 0x39

    aput-object v2, v4, v0

    sput-object v4, Lorg/jline/builtins/Less$Operation;->$VALUES:[Lorg/jline/builtins/Less$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1476
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/Less$Operation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1476
    const-class v0, Lorg/jline/builtins/Less$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Less$Operation;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/Less$Operation;
    .locals 1

    .line 1476
    sget-object v0, Lorg/jline/builtins/Less$Operation;->$VALUES:[Lorg/jline/builtins/Less$Operation;

    invoke-virtual {v0}, [Lorg/jline/builtins/Less$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/Less$Operation;

    return-object v0
.end method
