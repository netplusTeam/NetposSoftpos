.class public Lcom/sleepycat/bind/tuple/BigIntegerBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "BigIntegerBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    return-void
.end method

.method public static bigIntegerToEntry(Ljava/math/BigInteger;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 69
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/BigIntegerBinding;->sizedOutput(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeBigInteger(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sleepycat/bind/tuple/BigIntegerBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 70
    return-void
.end method

.method public static entryToBigInteger(Lcom/sleepycat/je/DatabaseEntry;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 57
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/BigIntegerBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static sizedOutput(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 3
    .param p0, "val"    # Ljava/math/BigInteger;

    .line 78
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBigIntegerByteLength(Ljava/math/BigInteger;)I

    move-result v0

    .line 79
    .local v0, "len":I
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleOutput;

    new-array v2, v0, [B

    invoke-direct {v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/BigIntegerBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 33
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 0

    .line 28
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/BigIntegerBinding;->getTupleOutput(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object p1

    return-object p1
.end method

.method protected getTupleOutput(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "object"    # Ljava/math/BigInteger;

    .line 45
    invoke-static {p1}, Lcom/sleepycat/bind/tuple/BigIntegerBinding;->sizedOutput(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/BigIntegerBinding;->objectToEntry(Ljava/math/BigInteger;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method

.method public objectToEntry(Ljava/math/BigInteger;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0
    .param p1, "object"    # Ljava/math/BigInteger;
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 39
    invoke-virtual {p2, p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeBigInteger(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 40
    return-void
.end method
