.class public enum Lcom/sleepycat/je/dbi/DbType;
.super Ljava/lang/Enum;
.source "DbType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/dbi/DbType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/dbi/DbType;

.field public static final enum EXPIRATION:Lcom/sleepycat/je/dbi/DbType;

.field public static final enum EXTINCT_SCANS:Lcom/sleepycat/je/dbi/DbType;

.field public static final enum ID:Lcom/sleepycat/je/dbi/DbType;

.field public static final enum METADATA:Lcom/sleepycat/je/dbi/DbType;

.field public static final enum NAME:Lcom/sleepycat/je/dbi/DbType;

.field public static final enum REP_GROUP:Lcom/sleepycat/je/dbi/DbType;

.field public static final enum RESERVED_FILES:Lcom/sleepycat/je/dbi/DbType;

.field public static final enum SYNC:Lcom/sleepycat/je/dbi/DbType;

.field public static final enum USER:Lcom/sleepycat/je/dbi/DbType;

.field public static final enum UTILIZATION:Lcom/sleepycat/je/dbi/DbType;

.field public static final enum VLSN_MAP:Lcom/sleepycat/je/dbi/DbType;


# instance fields
.field private final internalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    new-instance v0, Lcom/sleepycat/je/dbi/DbType$1;

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "_jeIdMap"

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DbType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbType;->ID:Lcom/sleepycat/je/dbi/DbType;

    .line 48
    new-instance v1, Lcom/sleepycat/je/dbi/DbType$2;

    const-string v3, "NAME"

    const/4 v4, 0x1

    const-string v5, "_jeNameMap"

    invoke-direct {v1, v3, v4, v5}, Lcom/sleepycat/je/dbi/DbType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sleepycat/je/dbi/DbType;->NAME:Lcom/sleepycat/je/dbi/DbType;

    .line 71
    new-instance v3, Lcom/sleepycat/je/dbi/DbType$3;

    const-string v5, "UTILIZATION"

    const/4 v6, 0x2

    const-string v7, "_jeUtilization"

    invoke-direct {v3, v5, v6, v7}, Lcom/sleepycat/je/dbi/DbType$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sleepycat/je/dbi/DbType;->UTILIZATION:Lcom/sleepycat/je/dbi/DbType;

    .line 86
    new-instance v5, Lcom/sleepycat/je/dbi/DbType;

    const-string v7, "EXPIRATION"

    const/4 v8, 0x3

    const-string v9, "_jeExpiration"

    invoke-direct {v5, v7, v8, v9}, Lcom/sleepycat/je/dbi/DbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sleepycat/je/dbi/DbType;->EXPIRATION:Lcom/sleepycat/je/dbi/DbType;

    .line 88
    new-instance v7, Lcom/sleepycat/je/dbi/DbType;

    const-string v9, "REP_GROUP"

    const/4 v10, 0x4

    const-string v11, "_jeRepGroupDB"

    invoke-direct {v7, v9, v10, v11}, Lcom/sleepycat/je/dbi/DbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sleepycat/je/dbi/DbType;->REP_GROUP:Lcom/sleepycat/je/dbi/DbType;

    .line 90
    new-instance v9, Lcom/sleepycat/je/dbi/DbType;

    const-string v11, "VLSN_MAP"

    const/4 v12, 0x5

    const-string v13, "_jeVlsnMapDb"

    invoke-direct {v9, v11, v12, v13}, Lcom/sleepycat/je/dbi/DbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sleepycat/je/dbi/DbType;->VLSN_MAP:Lcom/sleepycat/je/dbi/DbType;

    .line 92
    new-instance v11, Lcom/sleepycat/je/dbi/DbType;

    const-string v13, "SYNC"

    const/4 v14, 0x6

    const-string v15, "_jeSyncDb"

    invoke-direct {v11, v13, v14, v15}, Lcom/sleepycat/je/dbi/DbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sleepycat/je/dbi/DbType;->SYNC:Lcom/sleepycat/je/dbi/DbType;

    .line 94
    new-instance v13, Lcom/sleepycat/je/dbi/DbType$4;

    const-string v15, "RESERVED_FILES"

    const/4 v14, 0x7

    const-string v12, "_jeReservedFilesDb"

    invoke-direct {v13, v15, v14, v12}, Lcom/sleepycat/je/dbi/DbType$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sleepycat/je/dbi/DbType;->RESERVED_FILES:Lcom/sleepycat/je/dbi/DbType;

    .line 101
    new-instance v12, Lcom/sleepycat/je/dbi/DbType$5;

    const-string v15, "EXTINCT_SCANS"

    const/16 v14, 0x8

    const-string v10, "_jeExtinctScansDb"

    invoke-direct {v12, v15, v14, v10}, Lcom/sleepycat/je/dbi/DbType$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sleepycat/je/dbi/DbType;->EXTINCT_SCANS:Lcom/sleepycat/je/dbi/DbType;

    .line 114
    new-instance v10, Lcom/sleepycat/je/dbi/DbType;

    const-string v15, "METADATA"

    const/16 v14, 0x9

    const-string v8, "_jeMetadata"

    invoke-direct {v10, v15, v14, v8}, Lcom/sleepycat/je/dbi/DbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sleepycat/je/dbi/DbType;->METADATA:Lcom/sleepycat/je/dbi/DbType;

    .line 116
    new-instance v8, Lcom/sleepycat/je/dbi/DbType;

    const-string v15, "USER"

    const/16 v14, 0xa

    const/4 v6, 0x0

    invoke-direct {v8, v15, v14, v6}, Lcom/sleepycat/je/dbi/DbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sleepycat/je/dbi/DbType;->USER:Lcom/sleepycat/je/dbi/DbType;

    .line 27
    const/16 v6, 0xb

    new-array v6, v6, [Lcom/sleepycat/je/dbi/DbType;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    sput-object v6, Lcom/sleepycat/je/dbi/DbType;->$VALUES:[Lcom/sleepycat/je/dbi/DbType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "internalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-object p3, p0, Lcom/sleepycat/je/dbi/DbType;->internalName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sleepycat/je/dbi/DbType$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/sleepycat/je/dbi/DbType$1;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/dbi/DbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/dbi/DbType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/sleepycat/je/dbi/DbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/DbType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/dbi/DbType;
    .locals 1

    .line 27
    sget-object v0, Lcom/sleepycat/je/dbi/DbType;->$VALUES:[Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/dbi/DbType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/dbi/DbType;

    return-object v0
.end method


# virtual methods
.method public createDeletedLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/tree/LN;
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 187
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-static {p1, v0}, Lcom/sleepycat/je/tree/LN;->makeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    return-object v0
.end method

.method public createUpdatedLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/LN;
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "newData"    # [B

    .line 169
    invoke-static {p1, p2}, Lcom/sleepycat/je/tree/LN;->makeLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbType;->internalName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    return-object v0

    .line 138
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getLogType(Z)Lcom/sleepycat/je/log/LogEntryType;
    .locals 1
    .param p1, "isTransactional"    # Z

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public isInternal()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbType;->internalName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMixedReplication()Z
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public mayCreateDeletedLN()Z
    .locals 1

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public mayCreateUpdatedLN()Z
    .locals 1

    .line 155
    const/4 v0, 0x1

    return v0
.end method
