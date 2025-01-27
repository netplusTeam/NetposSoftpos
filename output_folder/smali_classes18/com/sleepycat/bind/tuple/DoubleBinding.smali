.class public Lcom/sleepycat/bind/tuple/DoubleBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "DoubleBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static final DOUBLE_SIZE:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    return-void
.end method

.method public static doubleToEntry(DLcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p0, "val"    # D
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 78
    invoke-static {}, Lcom/sleepycat/bind/tuple/DoubleBinding;->sizedOutput()Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeDouble(D)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sleepycat/bind/tuple/DoubleBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 79
    return-void
.end method

.method public static entryToDouble(Lcom/sleepycat/je/DatabaseEntry;)D
    .locals 2
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 66
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/DoubleBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method static sizedOutput()Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 2

    .line 87
    new-instance v0, Lcom/sleepycat/bind/tuple/TupleOutput;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Double;
    .locals 2
    .param p1, "input"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 42
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/DoubleBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method protected getTupleOutput(Ljava/lang/Double;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "object"    # Ljava/lang/Double;

    .line 54
    invoke-static {}, Lcom/sleepycat/bind/tuple/DoubleBinding;->sizedOutput()Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/DoubleBinding;->getTupleOutput(Ljava/lang/Double;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Ljava/lang/Double;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Double;
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeDouble(D)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 49
    return-void
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/DoubleBinding;->objectToEntry(Ljava/lang/Double;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method
