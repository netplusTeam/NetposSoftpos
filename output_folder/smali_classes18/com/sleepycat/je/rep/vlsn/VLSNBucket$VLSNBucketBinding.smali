.class Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "VLSNBucket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VLSNBucketBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Lcom/sleepycat/je/rep/vlsn/VLSNBucket;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 971
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/vlsn/VLSNBucket$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/vlsn/VLSNBucket$1;

    .line 971
    invoke-direct {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .locals 5
    .param p1, "ti"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 976
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v0

    .line 977
    .local v0, "onDiskVersion":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 982
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readBoolean()Z

    move-result v1

    .line 983
    .local v1, "isGhost":Z
    const/4 v2, 0x0

    .line 984
    .local v2, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    if-eqz v1, :cond_0

    .line 985
    invoke-static {p1}, Lcom/sleepycat/je/rep/vlsn/GhostBucket;->makeNewInstance(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/vlsn/GhostBucket;

    move-result-object v2

    goto :goto_0

    .line 987
    :cond_0
    new-instance v3, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;-><init>(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/je/rep/vlsn/VLSNBucket$1;)V

    move-object v2, v3

    .line 989
    :goto_0
    return-object v2

    .line 978
    .end local v1    # "isGhost":Z
    .end local v2    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_1
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

    .line 979
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 971
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Lcom/sleepycat/je/rep/vlsn/VLSNBucket;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 1
    .param p1, "bucket"    # Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .param p2, "to"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 994
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 995
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->isGhost()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeBoolean(Z)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 996
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->writeToTupleOutput(Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 997
    return-void
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 971
    check-cast p1, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$VLSNBucketBinding;->objectToEntry(Lcom/sleepycat/je/rep/vlsn/VLSNBucket;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method
