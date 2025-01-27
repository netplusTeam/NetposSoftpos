.class public final enum Lcom/sleepycat/je/dbi/StartupTracker$Phase;
.super Ljava/lang/Enum;
.source "StartupTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/StartupTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/dbi/StartupTracker$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum BECOME_CONSISTENT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum BUILD_TREE:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum CKPT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum FIND_END_OF_LOG:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum FIND_LAST_CKPT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum FIND_MASTER:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum FINISH_VERIFICATION:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum POPULATE_EP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum POPULATE_UP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum READ_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum READ_MAP_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum REDO_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum REDO_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum REDO_MAP_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum REDO_MAP_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum REMOVE_TEMP_DBS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum TOTAL_ENV_OPEN:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum TOTAL_JOIN_GROUP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum TOTAL_RECOVERY:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum UNDO_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field public static final enum UNDO_MAP_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;


# instance fields
.field private children:[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

.field private reportLabel:Ljava/lang/String;

.field private root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 63
    new-instance v0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v1, "TOTAL_ENV_OPEN"

    const/4 v2, 0x0

    const-string v3, "Environment Open"

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_ENV_OPEN:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 64
    new-instance v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v3, "TOTAL_RECOVERY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_RECOVERY:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 65
    new-instance v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v5, "FIND_END_OF_LOG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_END_OF_LOG:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 66
    new-instance v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v7, "FIND_LAST_CKPT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_LAST_CKPT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 67
    new-instance v7, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v9, "BUILD_TREE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->BUILD_TREE:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 68
    new-instance v9, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v11, "READ_MAP_INS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->READ_MAP_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 69
    new-instance v11, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v13, "REDO_MAP_INS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_MAP_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 70
    new-instance v13, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v15, "UNDO_MAP_LNS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->UNDO_MAP_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 71
    new-instance v15, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v14, "REDO_MAP_LNS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_MAP_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 72
    new-instance v14, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v12, "READ_INS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->READ_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 73
    new-instance v12, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v10, "REDO_INS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_INS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 74
    new-instance v10, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v8, "UNDO_LNS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->UNDO_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 75
    new-instance v8, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v6, "REDO_LNS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REDO_LNS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 76
    new-instance v6, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v4, "FINISH_VERIFICATION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FINISH_VERIFICATION:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 77
    new-instance v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v2, "POPULATE_UP"

    move-object/from16 v26, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->POPULATE_UP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 78
    new-instance v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v6, "POPULATE_EP"

    move-object/from16 v27, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->POPULATE_EP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 79
    new-instance v6, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v4, "REMOVE_TEMP_DBS"

    move-object/from16 v28, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->REMOVE_TEMP_DBS:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 80
    new-instance v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v2, "CKPT"

    move-object/from16 v29, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->CKPT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 81
    new-instance v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v6, "TOTAL_JOIN_GROUP"

    move-object/from16 v30, v4

    const/16 v4, 0x12

    move-object/from16 v31, v8

    const-string v8, "Replication Join Group"

    invoke-direct {v2, v6, v4, v8}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->TOTAL_JOIN_GROUP:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 82
    new-instance v6, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v8, "FIND_MASTER"

    const/16 v4, 0x13

    invoke-direct {v6, v8, v4}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->FIND_MASTER:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 83
    new-instance v8, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const-string v4, "BECOME_CONSISTENT"

    move-object/from16 v32, v6

    const/16 v6, 0x14

    invoke-direct {v8, v4, v6}, Lcom/sleepycat/je/dbi/StartupTracker$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->BECOME_CONSISTENT:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 62
    const/16 v4, 0x15

    new-array v4, v4, [Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const/16 v25, 0x0

    aput-object v0, v4, v25

    const/16 v24, 0x1

    aput-object v1, v4, v24

    const/16 v23, 0x2

    aput-object v3, v4, v23

    const/16 v22, 0x3

    aput-object v5, v4, v22

    const/16 v20, 0x4

    aput-object v7, v4, v20

    const/16 v18, 0x5

    aput-object v9, v4, v18

    const/16 v16, 0x6

    aput-object v11, v4, v16

    const/16 v17, 0x7

    aput-object v13, v4, v17

    const/16 v19, 0x8

    aput-object v15, v4, v19

    const/16 v21, 0x9

    aput-object v14, v4, v21

    const/16 v21, 0xa

    aput-object v12, v4, v21

    const/16 v21, 0xb

    aput-object v10, v4, v21

    const/16 v21, 0xc

    aput-object v31, v4, v21

    const/16 v21, 0xd

    aput-object v26, v4, v21

    const/16 v21, 0xe

    aput-object v27, v4, v21

    const/16 v21, 0xf

    aput-object v28, v4, v21

    const/16 v21, 0x10

    aput-object v29, v4, v21

    const/16 v21, 0x11

    aput-object v30, v4, v21

    const/16 v21, 0x12

    aput-object v2, v4, v21

    const/16 v21, 0x13

    aput-object v32, v4, v21

    aput-object v8, v4, v6

    sput-object v4, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->$VALUES:[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 97
    const/4 v4, 0x1

    new-array v6, v4, [Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    const/16 v21, 0x0

    aput-object v1, v6, v21

    iput-object v6, v0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->children:[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 99
    const/16 v6, 0x8

    move-object/from16 v19, v0

    new-array v0, v6, [Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    aput-object v3, v0, v21

    aput-object v5, v0, v4

    const/4 v4, 0x2

    aput-object v7, v0, v4

    const/16 v22, 0x3

    aput-object v26, v0, v22

    const/16 v20, 0x4

    aput-object v27, v0, v20

    const/16 v18, 0x5

    aput-object v28, v0, v18

    const/16 v16, 0x6

    aput-object v29, v0, v16

    const/16 v17, 0x7

    aput-object v30, v0, v17

    iput-object v0, v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->children:[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 108
    new-array v0, v6, [Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    aput-object v9, v0, v21

    const/4 v6, 0x1

    aput-object v11, v0, v6

    aput-object v13, v0, v4

    aput-object v15, v0, v22

    aput-object v14, v0, v20

    aput-object v12, v0, v18

    aput-object v10, v0, v16

    aput-object v31, v0, v17

    iput-object v0, v7, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->children:[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 117
    new-array v0, v4, [Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    aput-object v32, v0, v21

    aput-object v8, v0, v6

    iput-object v0, v2, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->children:[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 121
    move-object/from16 v0, v19

    iput-object v0, v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 122
    iput-object v0, v3, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 123
    iput-object v0, v5, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 124
    iput-object v0, v7, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 125
    iput-object v0, v9, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 126
    iput-object v0, v11, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 127
    iput-object v0, v13, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 128
    iput-object v0, v15, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 129
    iput-object v0, v14, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 130
    iput-object v0, v12, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 131
    iput-object v0, v10, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 132
    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 133
    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 134
    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 135
    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 136
    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 137
    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 139
    move-object/from16 v0, v32

    iput-object v2, v0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 140
    iput-object v2, v8, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 141
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "reportLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->reportLabel:Ljava/lang/String;

    .line 94
    return-void
.end method

.method static synthetic access$300(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 62
    iget-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->root:Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)[Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 62
    iget-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->children:[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/dbi/StartupTracker$Phase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    .line 62
    iget-object v0, p0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->reportLabel:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const-class v0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/dbi/StartupTracker$Phase;
    .locals 1

    .line 62
    sget-object v0, Lcom/sleepycat/je/dbi/StartupTracker$Phase;->$VALUES:[Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    invoke-virtual {v0}, [Lcom/sleepycat/je/dbi/StartupTracker$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/dbi/StartupTracker$Phase;

    return-object v0
.end method
