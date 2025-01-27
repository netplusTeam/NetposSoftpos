.class public final enum Lcom/sleepycat/je/RecoveryProgress;
.super Ljava/lang/Enum;
.source "RecoveryProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/RecoveryProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum BECOME_CONSISTENT:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum CKPT:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum FIND_END_OF_LOG:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum FIND_LAST_CKPT:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum FIND_MASTER:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum FINISH_VERIFICATION:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum POPULATE_EXPIRATION_PROFILE:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum POPULATE_UTILIZATION_PROFILE:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum READ_DATA_INFO:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum READ_DBMAP_INFO:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum RECOVERY_FINISHED:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum REDO_DATA_INFO:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum REDO_DATA_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum REDO_DBMAP_INFO:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum REDO_DBMAP_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum REMOVE_TEMP_DBS:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum UNDO_DATA_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

.field public static final enum UNDO_DBMAP_RECORDS:Lcom/sleepycat/je/RecoveryProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 28
    new-instance v0, Lcom/sleepycat/je/RecoveryProgress;

    const-string v1, "FIND_END_OF_LOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/RecoveryProgress;->FIND_END_OF_LOG:Lcom/sleepycat/je/RecoveryProgress;

    .line 33
    new-instance v1, Lcom/sleepycat/je/RecoveryProgress;

    const-string v3, "FIND_LAST_CKPT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/RecoveryProgress;->FIND_LAST_CKPT:Lcom/sleepycat/je/RecoveryProgress;

    .line 39
    new-instance v3, Lcom/sleepycat/je/RecoveryProgress;

    const-string v5, "READ_DBMAP_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/RecoveryProgress;->READ_DBMAP_INFO:Lcom/sleepycat/je/RecoveryProgress;

    .line 45
    new-instance v5, Lcom/sleepycat/je/RecoveryProgress;

    const-string v7, "REDO_DBMAP_INFO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/RecoveryProgress;->REDO_DBMAP_INFO:Lcom/sleepycat/je/RecoveryProgress;

    .line 50
    new-instance v7, Lcom/sleepycat/je/RecoveryProgress;

    const-string v9, "UNDO_DBMAP_RECORDS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/RecoveryProgress;->UNDO_DBMAP_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

    .line 55
    new-instance v9, Lcom/sleepycat/je/RecoveryProgress;

    const-string v11, "REDO_DBMAP_RECORDS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/RecoveryProgress;->REDO_DBMAP_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

    .line 60
    new-instance v11, Lcom/sleepycat/je/RecoveryProgress;

    const-string v13, "READ_DATA_INFO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sleepycat/je/RecoveryProgress;->READ_DATA_INFO:Lcom/sleepycat/je/RecoveryProgress;

    .line 65
    new-instance v13, Lcom/sleepycat/je/RecoveryProgress;

    const-string v15, "REDO_DATA_INFO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sleepycat/je/RecoveryProgress;->REDO_DATA_INFO:Lcom/sleepycat/je/RecoveryProgress;

    .line 71
    new-instance v15, Lcom/sleepycat/je/RecoveryProgress;

    const-string v14, "UNDO_DATA_RECORDS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sleepycat/je/RecoveryProgress;->UNDO_DATA_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

    .line 77
    new-instance v14, Lcom/sleepycat/je/RecoveryProgress;

    const-string v12, "REDO_DATA_RECORDS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sleepycat/je/RecoveryProgress;->REDO_DATA_RECORDS:Lcom/sleepycat/je/RecoveryProgress;

    .line 84
    new-instance v12, Lcom/sleepycat/je/RecoveryProgress;

    const-string v10, "FINISH_VERIFICATION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sleepycat/je/RecoveryProgress;->FINISH_VERIFICATION:Lcom/sleepycat/je/RecoveryProgress;

    .line 90
    new-instance v10, Lcom/sleepycat/je/RecoveryProgress;

    const-string v8, "POPULATE_UTILIZATION_PROFILE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sleepycat/je/RecoveryProgress;->POPULATE_UTILIZATION_PROFILE:Lcom/sleepycat/je/RecoveryProgress;

    .line 99
    new-instance v8, Lcom/sleepycat/je/RecoveryProgress;

    const-string v6, "POPULATE_EXPIRATION_PROFILE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sleepycat/je/RecoveryProgress;->POPULATE_EXPIRATION_PROFILE:Lcom/sleepycat/je/RecoveryProgress;

    .line 105
    new-instance v6, Lcom/sleepycat/je/RecoveryProgress;

    const-string v4, "REMOVE_TEMP_DBS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sleepycat/je/RecoveryProgress;->REMOVE_TEMP_DBS:Lcom/sleepycat/je/RecoveryProgress;

    .line 111
    new-instance v4, Lcom/sleepycat/je/RecoveryProgress;

    const-string v2, "CKPT"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sleepycat/je/RecoveryProgress;->CKPT:Lcom/sleepycat/je/RecoveryProgress;

    .line 117
    new-instance v2, Lcom/sleepycat/je/RecoveryProgress;

    const-string v6, "RECOVERY_FINISHED"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sleepycat/je/RecoveryProgress;->RECOVERY_FINISHED:Lcom/sleepycat/je/RecoveryProgress;

    .line 124
    new-instance v6, Lcom/sleepycat/je/RecoveryProgress;

    const-string v4, "FIND_MASTER"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sleepycat/je/RecoveryProgress;->FIND_MASTER:Lcom/sleepycat/je/RecoveryProgress;

    .line 132
    new-instance v4, Lcom/sleepycat/je/RecoveryProgress;

    const-string v2, "BECOME_CONSISTENT"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/sleepycat/je/RecoveryProgress;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sleepycat/je/RecoveryProgress;->BECOME_CONSISTENT:Lcom/sleepycat/je/RecoveryProgress;

    .line 24
    const/16 v2, 0x12

    new-array v2, v2, [Lcom/sleepycat/je/RecoveryProgress;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/sleepycat/je/RecoveryProgress;->$VALUES:[Lcom/sleepycat/je/RecoveryProgress;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/RecoveryProgress;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/sleepycat/je/RecoveryProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/RecoveryProgress;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/RecoveryProgress;
    .locals 1

    .line 24
    sget-object v0, Lcom/sleepycat/je/RecoveryProgress;->$VALUES:[Lcom/sleepycat/je/RecoveryProgress;

    invoke-virtual {v0}, [Lcom/sleepycat/je/RecoveryProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/RecoveryProgress;

    return-object v0
.end method
