.class final enum Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;
.super Ljava/lang/Enum;
.source "SnapshotManifest.java"

# interfaces
.implements Lcom/sleepycat/json_simple/JsonKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "JsonField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;",
        ">;",
        "Lcom/sleepycat/json_simple/JsonKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

.field public static final enum checksum:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

.field public static final enum copyStartTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

.field public static final enum isCopied:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

.field public static final enum nodeName:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

.field public static final enum snapshot:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 836
    new-instance v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    const-string v1, "checksum"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->checksum:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    .line 837
    new-instance v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    const-string v3, "isCopied"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->isCopied:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    .line 838
    new-instance v3, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    const-string v5, "copyStartTimeMs"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->copyStartTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    .line 839
    new-instance v5, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    const-string/jumbo v7, "snapshot"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->snapshot:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    .line 840
    new-instance v7, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    const-string v9, "nodeName"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->nodeName:Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    .line 835
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->$VALUES:[Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 835
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 835
    const-class v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;
    .locals 1

    .line 835
    sget-object v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->$VALUES:[Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    invoke-virtual {v0}, [Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 844
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo$JsonField;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 849
    const/4 v0, 0x0

    return-object v0
.end method
