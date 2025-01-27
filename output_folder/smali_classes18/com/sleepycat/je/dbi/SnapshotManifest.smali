.class public Lcom/sleepycat/je/dbi/SnapshotManifest;
.super Ljava/lang/Object;
.source "SnapshotManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;,
        Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;,
        Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CURRENT_VERSION:I = 0x1

.field private static final MD_FORMAT:Ljava/lang/String; = "SHA-256"

.field private static final PRETTY_PRINT:Z = true


# instance fields
.field private final checksum:Ljava/lang/String;

.field private final endOfLog:J

.field private final erasedFiles:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final isComplete:Z

.field private final isMaster:Z

.field private final lastFileCopiedTimeMs:J

.field private final nodeName:Ljava/lang/String;

.field private final sequence:I

.field private final snapshot:Ljava/lang/String;

.field private final snapshotFiles:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final startTimeMs:J

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JZZLjava/util/SortedMap;Ljava/util/SortedMap;)V
    .locals 16
    .param p1, "version"    # I
    .param p2, "sequence"    # I
    .param p3, "snapshot"    # Ljava/lang/String;
    .param p4, "startTimeMs"    # J
    .param p6, "lastFileCopiedTimeMs"    # J
    .param p8, "nodeName"    # Ljava/lang/String;
    .param p9, "checksum"    # Ljava/lang/String;
    .param p10, "endOfLog"    # J
    .param p12, "isMaster"    # Z
    .param p13, "isComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZZ",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 245
    .local p14, "snapshotFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    .local p15, "erasedFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 246
    move/from16 v1, p1

    iput v1, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    .line 247
    move/from16 v2, p2

    iput v2, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    .line 248
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    .line 249
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    .line 250
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    .line 251
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->nodeName:Ljava/lang/String;

    .line 252
    move-wide/from16 v9, p10

    iput-wide v9, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->endOfLog:J

    .line 253
    move/from16 v11, p12

    iput-boolean v11, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isMaster:Z

    .line 254
    move/from16 v12, p13

    iput-boolean v12, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isComplete:Z

    .line 255
    move-object/from16 v13, p14

    iput-object v13, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    .line 256
    move-object/from16 v14, p15

    iput-object v14, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->validate()V

    .line 258
    if-nez p9, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->computeChecksum()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_0
    move-object/from16 v15, p9

    :goto_0
    iput-object v15, v0, Lcom/sleepycat/je/dbi/SnapshotManifest;->checksum:Ljava/lang/String;

    .line 259
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JZZLjava/util/SortedMap;Ljava/util/SortedMap;Lcom/sleepycat/je/dbi/SnapshotManifest$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # Ljava/lang/String;
    .param p9, "x6"    # Ljava/lang/String;
    .param p10, "x7"    # J
    .param p12, "x8"    # Z
    .param p13, "x9"    # Z
    .param p14, "x10"    # Ljava/util/SortedMap;
    .param p15, "x11"    # Ljava/util/SortedMap;
    .param p16, "x12"    # Lcom/sleepycat/je/dbi/SnapshotManifest$1;

    .line 40
    invoke-direct/range {p0 .. p15}, Lcom/sleepycat/je/dbi/SnapshotManifest;-><init>(IILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JZZLjava/util/SortedMap;Ljava/util/SortedMap;)V

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/json_simple/JsonObject;)V
    .locals 6
    .param p1, "json"    # Lcom/sleepycat/json_simple/JsonObject;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    sget-object v0, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->version:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {p1, v0}, Lcom/sleepycat/json_simple/JsonObject;->getInteger(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Integer;

    move-result-object v0

    .line 269
    .local v0, "versionValue":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    .line 270
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->sequence:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-static {p1, v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getInteger(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    .line 271
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->snapshot:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {p1, v1}, Lcom/sleepycat/json_simple/JsonObject;->getString(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    .line 272
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->startTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-static {p1, v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getLong(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    .line 273
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->lastFileCopiedTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-static {p1, v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getLong(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    .line 274
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->nodeName:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {p1, v1}, Lcom/sleepycat/json_simple/JsonObject;->getString(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->nodeName:Ljava/lang/String;

    .line 275
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->checksum:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {p1, v1}, Lcom/sleepycat/json_simple/JsonObject;->getString(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->checksum:Ljava/lang/String;

    .line 276
    sget-object v2, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->endOfLog:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-static {p1, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getLong(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->endOfLog:J

    .line 277
    sget-object v2, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->isMaster:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-static {p1, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getBoolean(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isMaster:Z

    .line 278
    sget-object v2, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->isComplete:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-static {p1, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getBoolean(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isComplete:Z

    .line 279
    sget-object v2, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->snapshotFiles:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-static {p1, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getLogFileMap(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;)Ljava/util/SortedMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    .line 280
    sget-object v2, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->erasedFiles:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-static {p1, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getLogFileMap(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;)Ljava/util/SortedMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    .line 282
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->validate()V

    .line 283
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 284
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->computeChecksum()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "expectedChecksum":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 286
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect checksum: expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    .end local v2    # "expectedChecksum":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/json_simple/JsonObject;
    .param p1, "x1"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 40
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getBoolean(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/json_simple/JsonObject;
    .param p1, "x1"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 40
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getLong(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 40
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Ljava/security/MessageDigest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/security/MessageDigest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumString(Ljava/security/MessageDigest;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/security/MessageDigest;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/security/MessageDigest;
    .param p1, "x1"    # Z

    .line 40
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumBoolean(Ljava/security/MessageDigest;Z)V

    return-void
.end method

.method static synthetic access$600(Ljava/security/MessageDigest;J)V
    .locals 0
    .param p0, "x0"    # Ljava/security/MessageDigest;
    .param p1, "x1"    # J

    .line 40
    invoke-static {p0, p1, p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumLong(Ljava/security/MessageDigest;J)V

    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 589
    if-eqz p1, :cond_0

    .line 593
    return-void

    .line 590
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeChecksum()Ljava/lang/String;
    .locals 4

    .line 598
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .local v0, "md":Ljava/security/MessageDigest;
    nop

    .line 602
    invoke-direct {p0, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksum(Ljava/security/MessageDigest;)V

    .line 603
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/dbi/BackupManager;->checksumToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 599
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static deserialize([B)Lcom/sleepycat/je/dbi/SnapshotManifest;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/dbi/SnapshotManifest;

    invoke-static {p0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->deserializeToJson([B)Lcom/sleepycat/json_simple/JsonObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;-><init>(Lcom/sleepycat/json_simple/JsonObject;)V
    :try_end_0
    .catch Lcom/sleepycat/json_simple/JsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 487
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static deserializeToJson([B)Lcom/sleepycat/json_simple/JsonObject;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/json_simple/JsonException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 497
    .local v0, "in":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 498
    .local v1, "reader":Ljava/io/InputStreamReader;
    invoke-static {v1}, Lcom/sleepycat/json_simple/Jsoner;->deserialize(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/json_simple/JsonObject;

    return-object v2
.end method

.method private static getBoolean(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)Z
    .locals 4
    .param p0, "json"    # Lcom/sleepycat/json_simple/JsonObject;
    .param p1, "field"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 311
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonObject;->getBoolean(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Boolean;

    move-result-object v0

    .line 312
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getInteger(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)I
    .locals 4
    .param p0, "json"    # Lcom/sleepycat/json_simple/JsonObject;
    .param p1, "field"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 294
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonObject;->getInteger(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Integer;

    move-result-object v0

    .line 295
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 296
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getJsonMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 364
    .local p1, "logFileMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 366
    .local v0, "jsonMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 367
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->toJsonMap()Ljava/util/SortedMap;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    goto :goto_0

    .line 369
    :cond_0
    return-object v0
.end method

.method private static getLogFileMap(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;)Ljava/util/SortedMap;
    .locals 8
    .param p0, "json"    # Lcom/sleepycat/json_simple/JsonObject;
    .param p1, "field"    # Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/json_simple/JsonObject;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;"
        }
    .end annotation

    .line 321
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonObject;->getMap(Lcom/sleepycat/json_simple/JsonKey;)Ljava/util/Map;

    move-result-object v0

    .line 322
    .local v0, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/json_simple/JsonObject;>;"
    if-eqz v0, :cond_2

    .line 325
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 326
    .local v1, "logFileMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 327
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/json_simple/JsonObject;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 328
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/json_simple/JsonObject;

    .line 329
    .local v5, "value":Lcom/sleepycat/json_simple/JsonObject;
    if-eqz v5, :cond_0

    .line 333
    new-instance v6, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    invoke-direct {v6, v5}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;-><init>(Lcom/sleepycat/json_simple/JsonObject;)V

    invoke-interface {v1, v4, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/json_simple/JsonObject;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Lcom/sleepycat/json_simple/JsonObject;
    goto :goto_0

    .line 330
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/json_simple/JsonObject;>;"
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "value":Lcom/sleepycat/json_simple/JsonObject;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " missing for field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/json_simple/JsonObject;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Lcom/sleepycat/json_simple/JsonObject;
    :cond_1
    return-object v1

    .line 323
    .end local v1    # "logFileMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getLong(Lcom/sleepycat/json_simple/JsonObject;Lcom/sleepycat/json_simple/JsonKey;)J
    .locals 4
    .param p0, "json"    # Lcom/sleepycat/json_simple/JsonObject;
    .param p1, "field"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 302
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonObject;->getLong(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Long;

    move-result-object v0

    .line 303
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 304
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$tallyChecksum$2(Ljava/security/MessageDigest;Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;)V
    .locals 0
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    .line 661
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumString(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2, p0}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->tallyChecksum(Ljava/security/MessageDigest;)V

    .line 663
    return-void
.end method

.method static serialize(Ljava/util/SortedMap;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 463
    .local v0, "writer":Ljava/io/Writer;
    invoke-static {p0, v0}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 464
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/json_simple/Jsoner;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "result":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method private tallyChecksum(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1, "md"    # Ljava/security/MessageDigest;

    .line 607
    iget v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumInt(Ljava/security/MessageDigest;I)V

    .line 608
    iget v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumInt(Ljava/security/MessageDigest;I)V

    .line 609
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumString(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 610
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumLong(Ljava/security/MessageDigest;J)V

    .line 611
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumLong(Ljava/security/MessageDigest;J)V

    .line 612
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->nodeName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumString(Ljava/security/MessageDigest;Ljava/lang/String;)V

    .line 613
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->endOfLog:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumLong(Ljava/security/MessageDigest;J)V

    .line 614
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isMaster:Z

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumBoolean(Ljava/security/MessageDigest;Z)V

    .line 615
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isComplete:Z

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumBoolean(Ljava/security/MessageDigest;Z)V

    .line 616
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksum(Ljava/security/MessageDigest;Ljava/util/SortedMap;)V

    .line 617
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksum(Ljava/security/MessageDigest;Ljava/util/SortedMap;)V

    .line 618
    return-void
.end method

.method private static tallyChecksum(Ljava/security/MessageDigest;Ljava/util/SortedMap;)V
    .locals 1
    .param p0, "md"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/MessageDigest;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 658
    .local p1, "logFileMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->tallyChecksumInt(Ljava/security/MessageDigest;I)V

    .line 659
    new-instance v0, Lcom/sleepycat/je/dbi/SnapshotManifest$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/dbi/SnapshotManifest$$ExternalSyntheticLambda2;-><init>(Ljava/security/MessageDigest;)V

    invoke-interface {p1, v0}, Ljava/util/SortedMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 664
    return-void
.end method

.method private static tallyChecksumBoolean(Ljava/security/MessageDigest;Z)V
    .locals 1
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "value"    # Z

    .line 627
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 628
    return-void
.end method

.method private static tallyChecksumInt(Ljava/security/MessageDigest;I)V
    .locals 3
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "value"    # I

    .line 632
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 633
    .local v0, "bytes":[B
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 634
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 635
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 636
    int-to-byte v1, p1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 637
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 638
    return-void
.end method

.method private static tallyChecksumLong(Ljava/security/MessageDigest;J)V
    .locals 4
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "value"    # J

    .line 642
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 643
    .local v1, "bytes":[B
    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 644
    const/16 v2, 0x30

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 645
    const/16 v2, 0x28

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 646
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 647
    const/16 v2, 0x18

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    .line 648
    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    .line 649
    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    .line 650
    long-to-int v0, p1

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    .line 651
    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 652
    return-void
.end method

.method private static tallyChecksumString(Ljava/security/MessageDigest;Ljava/lang/String;)V
    .locals 1
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "value"    # Ljava/lang/String;

    .line 622
    invoke-static {p1}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 623
    return-void
.end method

.method private validateCopiedFile(Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;)V
    .locals 7
    .param p1, "logFile"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    .line 570
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getIsCopied()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getSnapshot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getCopyStartTimeMs()J

    move-result-wide v0

    .line 573
    .local v0, "copyStartTimeMs":J
    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    cmp-long v2, v0, v2

    const-string v3, " for file "

    if-ltz v2, :cond_1

    .line 580
    iget-wide v4, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 586
    return-void

    .line 581
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastFileCopiedTimeMs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must not be less than copyStartTimeMs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 574
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyStartTimeMs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must not be less than startTimeMs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    .end local v0    # "copyStartTimeMs":J
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 570
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 686
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 687
    return v0

    .line 689
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/dbi/SnapshotManifest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 690
    return v2

    .line 692
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/dbi/SnapshotManifest;

    .line 693
    .local v1, "other":Lcom/sleepycat/je/dbi/SnapshotManifest;
    iget v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    iget v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    iget v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    iget-object v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    .line 695
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    iget-wide v5, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    iget-wide v5, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->nodeName:Ljava/lang/String;

    iget-object v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->nodeName:Ljava/lang/String;

    .line 698
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->checksum:Ljava/lang/String;

    iget-object v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->checksum:Ljava/lang/String;

    .line 699
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->endOfLog:J

    iget-wide v5, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->endOfLog:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isMaster:Z

    iget-boolean v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->isMaster:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isComplete:Z

    iget-boolean v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->isComplete:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    iget-object v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    .line 703
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    iget-object v4, v1, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    .line 704
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 693
    :goto_0
    return v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getEndOfLog()J
    .locals 2

    .line 427
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->endOfLog:J

    return-wide v0
.end method

.method public getErasedFiles()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    return-object v0
.end method

.method public getIsComplete()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isComplete:Z

    return v0
.end method

.method public getIsMaster()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isMaster:Z

    return v0
.end method

.method public getLastFileCopiedTimeMs()J
    .locals 2

    .line 415
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    return-wide v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 403
    iget v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    return v0
.end method

.method public getSnapshot()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotFiles()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    return-object v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .line 411
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 709
    const/16 v0, 0x29

    .line 710
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x2b

    iget v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    add-int/2addr v1, v2

    .line 711
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x2b

    iget v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    add-int/2addr v0, v2

    .line 712
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x2b

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 713
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x2b

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 714
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x2b

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 715
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x2b

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->nodeName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 716
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x2b

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->checksum:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 717
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x2b

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->endOfLog:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 718
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x2b

    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isMaster:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 719
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x2b

    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isComplete:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 720
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x2b

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 721
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x2b

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 722
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method synthetic lambda$validate$0$com-sleepycat-je-dbi-SnapshotManifest(Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;)V
    .locals 3
    .param p1, "logFile"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "snapshotFile info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getIsCopied()Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isComplete:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snapshot cannot be complete when a log file was not copied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getSnapshot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->validateCopiedFile(Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;)V

    .line 552
    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$validate$1$com-sleepycat-je-dbi-SnapshotManifest(Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;)V
    .locals 3
    .param p1, "logFile"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "erasedFile info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 556
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getIsCopied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getSnapshot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->validateCopiedFile(Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;)V

    goto :goto_0

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Snapshot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match snapshot for copied erased file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 561
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getSnapshot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_1
    :goto_0
    return-void
.end method

.method public serialize()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->toJsonMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->serialize(Ljava/util/SortedMap;)[B

    move-result-object v0

    return-object v0
.end method

.method toJsonMap()Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 346
    .local v0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->version:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->sequence:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->snapshot:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->startTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->lastFileCopiedTimeMs:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->nodeName:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->checksum:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->checksum:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->endOfLog:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->endOfLog:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->isMaster:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isMaster:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->isComplete:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isComplete:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->snapshotFiles:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    invoke-direct {p0, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getJsonMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v1, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->erasedFiles:Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$JsonField;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    invoke-direct {p0, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getJsonMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapshotManifest[version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sequence:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " snapshot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startTimeMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFileCopiedTimeMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nodeName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endOfLog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->endOfLog:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMaster:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isMaster:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isComplete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->isComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " snapshotFiles:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " erasedFiles:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 4

    .line 509
    iget v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    if-nez v0, :cond_0

    .line 510
    return-void

    .line 512
    :cond_0
    if-ltz v0, :cond_6

    .line 516
    iget v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    .line 520
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    const-string/jumbo v1, "snapshot"

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    sget-object v0, Lcom/sleepycat/je/dbi/BackupManager;->SNAPSHOT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 525
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 529
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->nodeName:Ljava/lang/String;

    const-string v1, "nodeName"

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->endOfLog:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    const-string/jumbo v1, "snapshotFiles"

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshotFiles:Ljava/util/SortedMap;

    new-instance v1, Lcom/sleepycat/je/dbi/SnapshotManifest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/dbi/SnapshotManifest$$ExternalSyntheticLambda0;-><init>(Lcom/sleepycat/je/dbi/SnapshotManifest;)V

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 553
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    const-string v1, "erasedFiles"

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->erasedFiles:Ljava/util/SortedMap;

    new-instance v1, Lcom/sleepycat/je/dbi/SnapshotManifest$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/dbi/SnapshotManifest$$ExternalSyntheticLambda1;-><init>(Lcom/sleepycat/je/dbi/SnapshotManifest;)V

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 566
    return-void

    .line 537
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endOfLog must not be less than -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastFileCopiedTimeMs must not be less than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->lastFileCopiedTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimeMs must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->startTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snapshot name is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->snapshot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sequence must not be less than 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->sequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version must not be less than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/dbi/SnapshotManifest;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
