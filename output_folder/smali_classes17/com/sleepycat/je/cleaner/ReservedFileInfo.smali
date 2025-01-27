.class public Lcom/sleepycat/je/cleaner/ReservedFileInfo;
.super Ljava/lang/Object;
.source "ReservedFileInfo.java"


# instance fields
.field public final dbIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation
.end field

.field public final firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field public final lastVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Ljava/util/Set;)V
    .locals 0
    .param p1, "firstVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "lastVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/VLSN;",
            "Lcom/sleepycat/je/utilint/VLSN;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p3, "dbIds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 38
    iput-object p2, p0, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 39
    iput-object p3, p0, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->dbIds:Ljava/util/Set;

    .line 40
    return-void
.end method

.method public static entryToKey(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Long;
    .locals 2
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 43
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/LongBinding;->entryToLong(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/cleaner/ReservedFileInfo;
    .locals 9
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 51
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/TupleBase;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    .line 52
    .local v0, "input":Lcom/sleepycat/bind/tuple/TupleInput;
    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readByte()B

    .line 53
    new-instance v1, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    .line 54
    .local v1, "firstVLSN":Lcom/sleepycat/je/utilint/VLSN;
    new-instance v2, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    .line 55
    .local v2, "lastVLSN":Lcom/sleepycat/je/utilint/VLSN;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 56
    .local v3, "dbIds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseId;>;"
    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v4

    .line 57
    .local v4, "nDbs":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 58
    new-instance v6, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Lcom/sleepycat/je/cleaner/ReservedFileInfo;

    invoke-direct {v5, v1, v2, v3}, Lcom/sleepycat/je/cleaner/ReservedFileInfo;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Ljava/util/Set;)V

    return-object v5
.end method

.method public static keyToEntry(Ljava/lang/Long;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/Long;
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/sleepycat/bind/tuple/LongBinding;->longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 48
    return-void
.end method

.method public static objectToEntry(Lcom/sleepycat/je/cleaner/ReservedFileInfo;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 5
    .param p0, "info"    # Lcom/sleepycat/je/cleaner/ReservedFileInfo;
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 65
    new-instance v0, Lcom/sleepycat/bind/tuple/TupleOutput;

    invoke-direct {v0}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>()V

    .line 66
    .local v0, "output":Lcom/sleepycat/bind/tuple/TupleOutput;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeByte(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 67
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->firstVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 68
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 69
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->dbIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 70
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ReservedFileInfo;->dbIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 71
    .local v2, "id":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 72
    .end local v2    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v0, p1}, Lcom/sleepycat/bind/tuple/TupleBase;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 74
    return-void
.end method
