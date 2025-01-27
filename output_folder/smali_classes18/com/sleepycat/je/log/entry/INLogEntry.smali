.class public Lcom/sleepycat/je/log/entry/INLogEntry;
.super Lcom/sleepycat/je/log/entry/BaseEntry;
.source "INLogEntry.java"

# interfaces
.implements Lcom/sleepycat/je/log/entry/LogEntry;
.implements Lcom/sleepycat/je/log/entry/INContainingEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sleepycat/je/tree/IN;",
        ">",
        "Lcom/sleepycat/je/log/entry/BaseEntry<",
        "TT;>;",
        "Lcom/sleepycat/je/log/entry/LogEntry;",
        "Lcom/sleepycat/je/log/entry/INContainingEntry;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private dbId:Lcom/sleepycat/je/dbi/DatabaseId;

.field private in:Lcom/sleepycat/je/tree/IN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private inBytes:Ljava/nio/ByteBuffer;

.field private prevDeltaLsn:J

.field private prevFullLsn:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/tree/IN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    .local p1, "in":Lcom/sleepycat/je/tree/IN;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/log/entry/INLogEntry;-><init>(Lcom/sleepycat/je/tree/IN;Z)V

    .line 140
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/tree/IN;Z)V
    .locals 2
    .param p2, "isBINDelta"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    .local p1, "in":Lcom/sleepycat/je/tree/IN;, "TT;"
    invoke-direct {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;-><init>()V

    .line 147
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/log/entry/INLogEntry;->setLogType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 149
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 151
    iput-object p1, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getLastFullLsn()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    .line 155
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getLastDeltaLsn()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevDeltaLsn:J

    .line 156
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    .local p1, "INClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;-><init>(Ljava/lang/Class;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;JJLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/IN;)V
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "lastFullLsn"    # J
    .param p4, "lastDeltaLsn"    # J
    .param p6, "logEntryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p7, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 165
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;-><init>()V

    .line 167
    invoke-virtual {p0, p6}, Lcom/sleepycat/je/log/entry/INLogEntry;->setLogType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 169
    invoke-virtual {p7}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    .line 172
    iput-object p1, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    .line 174
    iput-wide p2, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    .line 175
    iput-wide p4, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevDeltaLsn:J

    .line 176
    return-void
.end method

.method public static create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/INLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sleepycat/je/tree/IN;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/sleepycat/je/log/entry/INLogEntry<",
            "TT;>;"
        }
    .end annotation

    .line 128
    .local p0, "INClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/sleepycat/je/log/entry/INLogEntry;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/log/entry/INLogEntry;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private readMainItem(Lcom/sleepycat/je/tree/IN;Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p2, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "logVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            "I)V"
        }
    .end annotation

    .line 301
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    .local p1, "in":Lcom/sleepycat/je/tree/IN;, "TT;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/INLogEntry;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    const/16 v0, 0x9

    if-lt p3, v0, :cond_1

    .line 304
    const/4 v1, 0x1

    invoke-virtual {p1, p2, p3, v1}, Lcom/sleepycat/je/tree/IN;->readFromLog(Ljava/nio/ByteBuffer;IZ)V

    .line 307
    if-ne p3, v0, :cond_0

    .line 308
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    .line 311
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/tree/IN;->setLastFullLsn(J)V

    goto :goto_0

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 314
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/sleepycat/je/tree/IN;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 316
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 1

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->clone()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 372
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 374
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "<INBytes len=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/tree/IN;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 382
    :goto_0
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 383
    const-string v0, "<prevFullLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v0, "</prevFullLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevDeltaLsn:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 388
    const-string v0, "<prevDeltaLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevDeltaLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v0, "</prevDeltaLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_2
    return-object p1
.end method

.method public dumpRep(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 397
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    return-void
.end method

.method public getBINWithExpiration()Lcom/sleepycat/je/tree/BIN;
    .locals 4

    .line 236
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Lcom/sleepycat/je/tree/BIN;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/BIN;-><init>()V

    .line 238
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/tree/BIN;->mayHaveExpirationValues(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    return-object v1

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 243
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v2, v3}, Lcom/sleepycat/je/log/entry/INLogEntry;->readMainItem(Lcom/sleepycat/je/tree/IN;Ljava/nio/ByteBuffer;I)V

    .line 244
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 245
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->hasExpirationValues()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1

    .line 248
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 250
    .restart local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->hasExpirationValues()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    :cond_3
    return-object v1

    .line 248
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getDbId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 189
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method public getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 211
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic getLogClass()Ljava/lang/Class;
    .locals 1

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->getLogClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    return-object v0
.end method

.method public getMainItem()Lcom/sleepycat/je/tree/IN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic getMainItem()Ljava/lang/Object;
    .locals 1

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/INLogEntry;->getMainItem()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method public getNodeId()J
    .locals 2

    .line 217
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v0

    return-wide v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getPrevDeltaLsn()J
    .locals 2

    .line 199
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevDeltaLsn:J

    return-wide v0
.end method

.method public getPrevFullLsn()J
    .locals 2

    .line 194
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    return-wide v0
.end method

.method public bridge synthetic getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;
    .locals 0

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;->getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 4

    .line 326
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .local v0, "inSize":I
    goto :goto_0

    .line 329
    .end local v0    # "inSize":I
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/INLogEntry;->isBINDelta()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->getLogSize(Z)I

    move-result v0

    .line 332
    .restart local v0    # "inSize":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 333
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseId;->getLogSize()I

    move-result v1

    add-int/2addr v1, v0

    iget-wide v2, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    .line 334
    invoke-static {v2, v3}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v2

    add-int/2addr v1, v2

    iget-wide v2, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevDeltaLsn:J

    .line 335
    invoke-static {v2, v3}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 332
    return v1
.end method

.method public getTransactionId()J
    .locals 2

    .line 357
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isBINDelta()Z
    .locals 1

    .line 184
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isDeleted()Z
    .locals 1

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->isDeleted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 0

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result p1

    return p1
.end method

.method public isPreSerialized()Z
    .locals 1

    .line 223
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/entry/LogEntry;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 366
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    return-void
.end method

.method public bridge synthetic postLogWork(Lcom/sleepycat/je/log/LogEntryHeader;JLcom/sleepycat/je/utilint/VLSN;)V
    .locals 0

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/log/entry/BaseEntry;->postLogWork(Lcom/sleepycat/je/log/LogEntryHeader;JLcom/sleepycat/je/utilint/VLSN;)V

    return-void
.end method

.method public readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p3, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 263
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 265
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v0

    .line 266
    .local v0, "logVersion":I
    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 268
    .local v1, "version6OrLater":Z
    :goto_0
    const/4 v4, 0x2

    if-lt v0, v4, :cond_4

    .line 274
    const-wide/16 v4, -0x1

    if-eqz v1, :cond_2

    .line 275
    new-instance v6, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v6}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    iput-object v6, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 276
    invoke-virtual {v6, p3, v0}, Lcom/sleepycat/je/dbi/DatabaseId;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 278
    invoke-static {p3, v3}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    .line 279
    const/16 v3, 0x8

    if-lt v0, v3, :cond_1

    .line 280
    invoke-static {p3}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevDeltaLsn:J

    goto :goto_1

    .line 282
    :cond_1
    iput-wide v4, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevDeltaLsn:J

    .line 287
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/INLogEntry;->newInstanceOfType()Lcom/sleepycat/je/log/Loggable;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/IN;

    iput-object v3, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    .line 288
    invoke-direct {p0, v3, p3, v0}, Lcom/sleepycat/je/log/entry/INLogEntry;->readMainItem(Lcom/sleepycat/je/tree/IN;Ljava/nio/ByteBuffer;I)V

    .line 290
    if-nez v1, :cond_3

    .line 291
    new-instance v3, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v3}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>()V

    iput-object v3, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 292
    invoke-virtual {v3, p3, v0}, Lcom/sleepycat/je/dbi/DatabaseId;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 294
    invoke-static {p3, v2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    .line 295
    iput-wide v4, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevDeltaLsn:J

    .line 297
    :cond_3
    return-void

    .line 269
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to read from log file with version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which is not supported any more"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 263
    .end local v0    # "logVersion":I
    .end local v1    # "version6OrLater":Z
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic setLogType(Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 0

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;->setLogType(Lcom/sleepycat/je/log/LogEntryType;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeEntry(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "destBuffer"    # Ljava/nio/ByteBuffer;

    .line 341
    .local p0, "this":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DatabaseId;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 343
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevFullLsn:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 344
    iget-wide v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->prevDeltaLsn:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 346
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 348
    .local v0, "pos":I
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 349
    iget-object v1, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    .end local v0    # "pos":I
    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/INLogEntry;->in:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/INLogEntry;->isBINDelta()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/tree/IN;->writeToLog(Ljava/nio/ByteBuffer;Z)V

    .line 353
    :goto_0
    return-void
.end method
