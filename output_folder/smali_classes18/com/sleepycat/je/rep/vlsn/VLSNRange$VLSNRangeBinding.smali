.class Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "VLSNRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/vlsn/VLSNRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VLSNRangeBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Lcom/sleepycat/je/rep/vlsn/VLSNRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .locals 9
    .param p1, "ti"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 308
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v0

    .line 309
    .local v0, "onDiskVersion":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    new-instance v1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    new-instance v3, Lcom/sleepycat/je/utilint/VLSN;

    .line 318
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    new-instance v4, Lcom/sleepycat/je/utilint/VLSN;

    .line 319
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    new-instance v5, Lcom/sleepycat/je/utilint/VLSN;

    .line 320
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    new-instance v6, Lcom/sleepycat/je/utilint/VLSN;

    .line 321
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNRange$1;)V

    .line 322
    .local v1, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    return-object v1

    .line 310
    .end local v1    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t expect version diff on_disk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 2
    .param p1, "range"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .param p2, "to"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 330
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 331
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 332
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 333
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 334
    return-void
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 304
    check-cast p1, Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange$VLSNRangeBinding;->objectToEntry(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method
