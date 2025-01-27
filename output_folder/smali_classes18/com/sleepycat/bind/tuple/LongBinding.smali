.class public Lcom/sleepycat/bind/tuple/LongBinding;
.super Lcom/sleepycat/bind/tuple/TupleBinding;
.source "LongBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/bind/tuple/TupleBinding<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final LONG_SIZE:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBinding;-><init>()V

    return-void
.end method

.method public static entryToLong(Lcom/sleepycat/je/DatabaseEntry;)J
    .locals 2
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 66
    invoke-static {p0}, Lcom/sleepycat/bind/tuple/LongBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static longToEntry(JLcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p0, "val"    # J
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 78
    invoke-static {}, Lcom/sleepycat/bind/tuple/LongBinding;->sizedOutput()Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sleepycat/bind/tuple/LongBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 79
    return-void
.end method

.method private static sizedOutput()Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 2

    .line 87
    new-instance v0, Lcom/sleepycat/bind/tuple/TupleOutput;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Long;
    .locals 2
    .param p1, "input"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 42
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/LongBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected getTupleOutput(Ljava/lang/Long;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "object"    # Ljava/lang/Long;

    .line 54
    invoke-static {}, Lcom/sleepycat/bind/tuple/LongBinding;->sizedOutput()Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/LongBinding;->getTupleOutput(Ljava/lang/Long;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object p1

    return-object p1
.end method

.method public objectToEntry(Ljava/lang/Long;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Long;
    .param p2, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 49
    return-void
.end method

.method public bridge synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/bind/tuple/LongBinding;->objectToEntry(Ljava/lang/Long;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    return-void
.end method
