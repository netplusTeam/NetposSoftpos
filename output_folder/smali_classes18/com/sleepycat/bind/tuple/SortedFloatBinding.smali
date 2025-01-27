.class public Lcom/sleepycat/bind/tuple/SortedFloatBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "SortedFloatBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Ljava/lang/Float;",
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

.method public static entryToFloat(Lcom/sleepycat/je/DatabaseEntry;)F
    .locals 1
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 62
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/SortedFloatBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedFloat()F

    move-result v0

    return v0
.end method

.method public static floatToEntry(FLcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p0, "val"    # F
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 74
    invoke-static {}, Lcom/sleepycat/bind/tuple/FloatBinding;->sizedOutput()Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeSortedFloat(F)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sleepycat/bind/tuple/SortedFloatBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 75
    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Float;
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 38
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/SortedFloatBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected getTupleOutput(Ljava/lang/Float;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "object"    # Ljava/lang/Float;

    .line 50
    invoke-static {}, Lcom/sleepycat/bind/tuple/FloatBinding;->sizedOutput()Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/SortedFloatBinding;->getTupleOutput(Ljava/lang/Float;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Ljava/lang/Float;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Float;
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeSortedFloat(F)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 45
    return-void
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/SortedFloatBinding;->objectToEntry(Ljava/lang/Float;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method
