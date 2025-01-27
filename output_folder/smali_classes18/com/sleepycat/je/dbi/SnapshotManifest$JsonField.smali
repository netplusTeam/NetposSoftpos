.class final enum Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;
.super Ljava/lang/Enum;
.source "SnapshotManifest.java"

# interfaces
.implements Lcom/sleepycat/json_simple/JsonKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/SnapshotManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "JsonField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;",
        ">;",
        "Lcom/sleepycat/json_simple/JsonKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum checksum:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum endOfLog:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum erasedFiles:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum isComplete:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum isMaster:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum lastFileCopiedTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum nodeName:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum sequence:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum snapshot:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum snapshotFiles:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum startTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

.field public static final enum version:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 374
    new-instance v0, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->version:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 375
    new-instance v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string/jumbo v3, "sequence"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->sequence:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 376
    new-instance v3, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string/jumbo v5, "snapshot"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->snapshot:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 377
    new-instance v5, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string/jumbo v7, "startTimeMs"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->startTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 378
    new-instance v7, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string v9, "lastFileCopiedTimeMs"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->lastFileCopiedTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 379
    new-instance v9, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string v11, "nodeName"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->nodeName:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 380
    new-instance v11, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string v13, "checksum"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->checksum:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 381
    new-instance v13, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string v15, "endOfLog"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->endOfLog:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 382
    new-instance v15, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string v14, "isMaster"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->isMaster:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 383
    new-instance v14, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string v12, "isComplete"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->isComplete:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 384
    new-instance v12, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string/jumbo v10, "snapshotFiles"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->snapshotFiles:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 385
    new-instance v10, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    const-string v8, "erasedFiles"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->erasedFiles:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    .line 373
    const/16 v8, 0xc

    new-array v8, v8, [Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->$VALUES:[Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 373
    const-class v0, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;
    .locals 1

    .line 373
    sget-object v0, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->$VALUES:[Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v0}, [Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 394
    const/4 v0, 0x0

    return-object v0
.end method
