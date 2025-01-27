.class public Lcom/sleepycat/je/rep/vlsn/VLSNRange;
.super Ljava/lang/Object;
.source "VLSNRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final EMPTY:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

.field public static final RANGE_KEY:J = -0x1L

.field private static final VERSION:I = 0x1


# instance fields
.field private final abortType:B

.field private final commitType:B

.field private final first:Lcom/sleepycat/je/utilint/VLSN;

.field private final last:Lcom/sleepycat/je/utilint/VLSN;

.field private final lastSync:Lcom/sleepycat/je/utilint/VLSN;

.field private final lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    nop

    .line 39
    new-instance v0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v3, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v4, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    sput-object v0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->EMPTY:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 1
    .param p1, "first"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "last"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "lastSync"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p4, "lastTxnEnd"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->commitType:B

    .line 50
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->abortType:B

    .line 68
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    .line 69
    iput-object p2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    .line 70
    iput-object p3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    .line 71
    iput-object p4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNRange$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "x1"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "x2"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p4, "x3"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p5, "x4"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange$1;

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    return-void
.end method

.method private getComparison(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/utilint/VLSN;
    .locals 1
    .param p1, "thisVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "otherVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "better"    # Z

    .line 272
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    return-object p2

    .line 276
    :cond_0
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    return-object p1

    .line 280
    :cond_1
    if-eqz p3, :cond_2

    .line 281
    return-object p2

    .line 284
    :cond_2
    return-object p1
.end method

.method public static readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .locals 2
    .param p0, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 114
    new-instance v0, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;-><init>()V

    .line 115
    .local v0, "binding":Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 117
    .local v1, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    return-object v1
.end method


# virtual methods
.method public contains(Lcom/sleepycat/je/utilint/VLSN;)Z
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 147
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    return v1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 152
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_1
    return v1
.end method

.method public getFirst()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getLast()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getLastSync()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method getUpcomingVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    return-object v0
.end method

.method getUpdate(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .locals 8
    .param p1, "other"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 196
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v1, p1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    .line 197
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 196
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getComparison(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 198
    .local v0, "newFirst":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v2, p1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    .line 199
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v5

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 198
    :goto_1
    invoke-direct {p0, v1, v2, v5}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getComparison(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 200
    .local v1, "newLast":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v5, p1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    .line 202
    invoke-virtual {v5, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v6

    if-lez v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    .line 201
    :goto_2
    invoke-direct {p0, v2, v5, v6}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getComparison(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 203
    .local v2, "newLastSync":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v5, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v6, p1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    .line 205
    invoke-virtual {v6, v5}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v7

    if-lez v7, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 204
    :goto_3
    invoke-direct {p0, v5, v6, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getComparison(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    .line 206
    .local v3, "newLastTxnEnd":Lcom/sleepycat/je/utilint/VLSN;
    new-instance v4, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    return-object v4
.end method

.method getUpdateForNewMapping(Lcom/sleepycat/je/utilint/VLSN;B)Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .locals 6
    .param p1, "newValue"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "entryTypeNum"    # B

    .line 164
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    .line 165
    .local v0, "newFirst":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    .line 166
    .local v1, "newLast":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    .line 167
    .local v2, "newLastSync":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    .line 169
    .local v3, "newLastTxnEnd":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v5, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v4

    if-lez v4, :cond_1

    .line 170
    :cond_0
    move-object v0, p1

    .line 173
    :cond_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v4

    if-gez v4, :cond_2

    .line 174
    move-object v1, p1

    .line 177
    :cond_2
    invoke-static {p2}, Lcom/sleepycat/je/log/LogEntryType;->isSyncPoint(B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v4

    if-gez v4, :cond_3

    .line 179
    move-object v2, p1

    .line 183
    :cond_3
    iget-byte v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->commitType:B

    if-eq p2, v4, :cond_4

    iget-byte v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->abortType:B

    if-ne p2, v4, :cond_5

    .line 184
    :cond_4
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v4

    if-gez v4, :cond_5

    .line 185
    move-object v3, p1

    .line 189
    :cond_5
    new-instance v4, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    return-object v4
.end method

.method isEmpty()Z
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    return v0
.end method

.method merge(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .locals 5
    .param p1, "other"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 213
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v1, p1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getComparison(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 214
    .local v0, "newLast":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v3, p1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {p0, v1, v3, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getComparison(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 215
    .local v1, "newLastSync":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v4, p1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {p0, v3, v4, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getComparison(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 216
    .local v2, "newLastTxnEnd":Lcom/sleepycat/je/utilint/VLSN;
    new-instance v3, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    return-object v3
.end method

.method shortenFromEnd(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .locals 6
    .param p1, "deleteStart"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 226
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getPrev()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 228
    .local v0, "newLast":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 232
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v3, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v4, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v5, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    return-object v1

    .line 235
    :cond_0
    new-instance v1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v1, v2, v0, v0, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    return-object v1

    .line 228
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t truncate at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it overwrites a commit at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method shortenFromHead(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .locals 5
    .param p1, "deleteEnd"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "newFirst":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    .line 245
    .local v1, "newLast":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-nez v2, :cond_0

    .line 246
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 247
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 253
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v3, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    .line 254
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_1

    .line 253
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t truncate lastSync= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deleteEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 257
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 260
    .local v2, "newTxnEnd":Lcom/sleepycat/je/utilint/VLSN;
    :goto_2
    new-instance v3, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, " last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, " sync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, " txnEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method verify(Z)Z
    .locals 4
    .param p1, "verbose"    # Z

    .line 338
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 340
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 341
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 342
    :cond_0
    if-eqz p1, :cond_1

    .line 343
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range: All need to be NULL_VLSN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    :cond_1
    return v1

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-lez v0, :cond_4

    .line 350
    if-eqz p1, :cond_3

    .line 351
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range: first > last "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    :cond_3
    return v1

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 357
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastSync:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-lez v0, :cond_6

    .line 358
    if-eqz p1, :cond_5

    .line 359
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range: lastSync > last "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    :cond_5
    return v1

    .line 365
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 366
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->lastTxnEnd:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-lez v0, :cond_8

    .line 367
    if-eqz p1, :cond_7

    .line 368
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range: lastTxnEnd > last "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    :cond_7
    return v1

    .line 374
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method verifySubset(ZLcom/sleepycat/je/rep/vlsn/VLSNRange;)Z
    .locals 4
    .param p1, "verbose"    # Z
    .param p2, "subsetRange"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 381
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 382
    return v0

    .line 385
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    return v0

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 393
    if-eqz p1, :cond_2

    .line 394
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range: subset must be LTE: this="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " subset="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    :cond_2
    return v2

    .line 400
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->first:Lcom/sleepycat/je/utilint/VLSN;

    sget-object v3, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 401
    return v0

    .line 404
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    if-gez v1, :cond_6

    .line 405
    if-eqz p1, :cond_5

    .line 406
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Range: last must be GTE: this="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " subsetRange="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    :cond_5
    return v2

    .line 411
    :cond_6
    return v0
.end method

.method writeToDatabase(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 7
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "txn"    # Lcom/sleepycat/je/txn/Txn;

    .line 86
    new-instance v0, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;-><init>()V

    .line 87
    .local v0, "binding":Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 88
    .local v1, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 90
    .local v2, "data":Lcom/sleepycat/je/DatabaseEntry;
    const-wide/16 v3, -0x1

    invoke-static {v3, v4, v1}, Lcom/sleepycat/bind/tuple/LongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 91
    invoke-virtual {v0, p0, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 93
    const/4 v3, 0x0

    .line 95
    .local v3, "c":Lcom/sleepycat/je/Cursor;
    :try_start_0
    sget-object v4, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    invoke-static {p2, p3, v4}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 98
    invoke-static {v3}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 100
    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    .line 101
    .local v4, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_1

    .line 106
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->last:Lcom/sleepycat/je/utilint/VLSN;

    return-object v4

    .line 102
    .restart local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write VLSNRange, status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-static {p1, v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    .end local v0    # "binding":Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;
    .end local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "c":Lcom/sleepycat/je/Cursor;
    .end local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "txn":Lcom/sleepycat/je/txn/Txn;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v0    # "binding":Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;
    .restart local v1    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "c":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "txn":Lcom/sleepycat/je/txn/Txn;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_2
    throw v4
.end method
