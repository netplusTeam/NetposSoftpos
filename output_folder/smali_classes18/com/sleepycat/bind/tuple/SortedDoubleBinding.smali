.class public Lcom/sleepycat/bind/tuple/SortedDoubleBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "SortedDoubleBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    return-void
.end method

.method public static doubleToEntry(DLcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p0, "val"    # D
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 74
    invoke-static {}, Lcom/sleepycat/bind/tuple/DoubleBinding;->sizedOutput()Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeSortedDouble(D)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sleepycat/bind/tuple/SortedDoubleBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 76
    return-void
.end method

.method public static entryToDouble(Lcom/sleepycat/je/DatabaseEntry;)D
    .locals 2
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 62
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/SortedDoubleBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedDouble()D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Double;
    .locals 2
    .param p1, "input"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 38
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/SortedDoubleBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method protected getTupleOutput(Ljava/lang/Double;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "object"    # Ljava/lang/Double;

    .line 50
    invoke-static {}, Lcom/sleepycat/bind/tuple/DoubleBinding;->sizedOutput()Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/SortedDoubleBinding;->getTupleOutput(Ljava/lang/Double;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Ljava/lang/Double;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Double;
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeSortedDouble(D)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 45
    return-void
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/SortedDoubleBinding;->objectToEntry(Ljava/lang/Double;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method
