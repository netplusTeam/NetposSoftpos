.class public Lcom/sleepycat/bind/tuple/SortedBigDecimalBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "SortedBigDecimalBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    return-void
.end method

.method public static bigDecimalToEntry(Ljava/math/BigDecimal;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p0, "val"    # Ljava/math/BigDecimal;
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 76
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/SortedBigDecimalBinding;->sizedOutput(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeSortedBigDecimal(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sleepycat/bind/tuple/SortedBigDecimalBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 77
    return-void
.end method

.method public static entryToBigDecimal(Lcom/sleepycat/je/DatabaseEntry;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 64
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/SortedBigDecimalBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static sizedOutput(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 3
    .param p0, "val"    # Ljava/math/BigDecimal;

    .line 85
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getSortedBigDecimalMaxByteLength(Ljava/math/BigDecimal;)I

    move-result v0

    .line 86
    .local v0, "len":I
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleOutput;

    new-array v2, v0, [B

    invoke-direct {v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/SortedBigDecimalBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 40
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 0

    .line 35
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/SortedBigDecimalBinding;->getTupleOutput(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object p1

    return-object p1
.end method

.method protected getTupleOutput(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "object"    # Ljava/math/BigDecimal;

    .line 52
    invoke-static {p1}, Lcom/sleepycat/bind/tuple/SortedBigDecimalBinding;->sizedOutput(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/SortedBigDecimalBinding;->objectToEntry(Ljava/math/BigDecimal;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method

.method public objectToEntry(Ljava/math/BigDecimal;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0
    .param p1, "object"    # Ljava/math/BigDecimal;
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 46
    invoke-virtual {p2, p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeSortedBigDecimal(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 47
    return-void
.end method
