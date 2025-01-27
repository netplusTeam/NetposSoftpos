.class public Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
.super Ljava/lang/Object;
.source "SnapshotManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/SnapshotManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private checksum:Ljava/lang/String;

.field private endOfLog:J

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

.field private isComplete:Z

.field private isMaster:Z

.field private lastFileCopiedTimeMs:J

.field private nodeName:Ljava/lang/String;

.field private sequence:I

.field private snapshot:Ljava/lang/String;

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

.field private startTimeMs:J

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->version:I

    .line 140
    iput v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->sequence:I

    .line 152
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->snapshotFiles:Ljava/util/SortedMap;

    .line 153
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->erasedFiles:Ljava/util/SortedMap;

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/SnapshotManifest;)V
    .locals 2
    .param p1, "base"    # Lcom/sleepycat/je/dbi/SnapshotManifest;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->version:I

    .line 140
    iput v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->sequence:I

    .line 156
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSequence()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->sequence:I

    .line 157
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSnapshot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->snapshot:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getStartTimeMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->startTimeMs:J

    .line 159
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getLastFileCopiedTimeMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->lastFileCopiedTimeMs:J

    .line 160
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->nodeName:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getEndOfLog()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->endOfLog:J

    .line 162
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getIsMaster()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->isMaster:Z

    .line 163
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getIsComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->isComplete:Z

    .line 164
    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSnapshotFiles()Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->snapshotFiles:Ljava/util/SortedMap;

    .line 165
    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getErasedFiles()Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->erasedFiles:Ljava/util/SortedMap;

    .line 167
    return-void
.end method


# virtual methods
.method public build()Lcom/sleepycat/je/dbi/SnapshotManifest;
    .locals 20

    .line 169
    move-object/from16 v0, p0

    new-instance v18, Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-object/from16 v1, v18

    iget v2, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->version:I

    iget v3, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->sequence:I

    iget-object v4, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->snapshot:Ljava/lang/String;

    iget-wide v5, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->startTimeMs:J

    iget-wide v7, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->lastFileCopiedTimeMs:J

    iget-object v9, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->nodeName:Ljava/lang/String;

    iget-object v10, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->checksum:Ljava/lang/String;

    iget-wide v11, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->endOfLog:J

    iget-boolean v13, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->isMaster:Z

    iget-boolean v14, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->isComplete:Z

    iget-object v15, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->snapshotFiles:Ljava/util/SortedMap;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->erasedFiles:Ljava/util/SortedMap;

    move-object/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/sleepycat/je/dbi/SnapshotManifest;-><init>(IILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JZZLjava/util/SortedMap;Ljava/util/SortedMap;Lcom/sleepycat/je/dbi/SnapshotManifest$1;)V

    return-object v18
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

    .line 228
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->erasedFiles:Ljava/util/SortedMap;

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

    .line 225
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->snapshotFiles:Ljava/util/SortedMap;

    return-object v0
.end method

.method public setChecksum(Ljava/lang/String;)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    .locals 0
    .param p1, "checksum"    # Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->checksum:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public setEndOfLog(J)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    .locals 0
    .param p1, "endOfLog"    # J

    .line 213
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->endOfLog:J

    .line 214
    return-object p0
.end method

.method public setIsComplete(Z)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    .locals 0
    .param p1, "isComplete"    # Z

    .line 221
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->isComplete:Z

    .line 222
    return-object p0
.end method

.method public setIsMaster(Z)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    .locals 0
    .param p1, "isMaster"    # Z

    .line 217
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->isMaster:Z

    .line 218
    return-object p0
.end method

.method public setLastFileCopiedTimeMs(J)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    .locals 0
    .param p1, "lastFileCopiedTimeMs"    # J

    .line 201
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->lastFileCopiedTimeMs:J

    .line 202
    return-object p0
.end method

.method public setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    .locals 0
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->nodeName:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setSequence(I)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    .locals 0
    .param p1, "sequence"    # I

    .line 187
    iput p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->sequence:I

    .line 188
    return-object p0
.end method

.method public setSnapshot(Ljava/lang/String;)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    .locals 0
    .param p1, "snapshot"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->snapshot:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public setStartTimeMs(J)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    .locals 0
    .param p1, "startTimeMs"    # J

    .line 195
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->startTimeMs:J

    .line 196
    return-object p0
.end method

.method public setVersion(I)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    .locals 0
    .param p1, "version"    # I

    .line 183
    iput p1, p0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->version:I

    .line 184
    return-object p0
.end method
