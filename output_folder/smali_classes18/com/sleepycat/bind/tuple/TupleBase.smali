.class public Lcom/sleepycat/bind/tuple/TupleBase;
.super Ljava/lang/Object;
.source "TupleBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private outputBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleBase;, "Lcom/sleepycat/bind/tuple/TupleBase<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/bind/tuple/TupleBase;->outputBufferSize:I

    .line 44
    return-void
.end method

.method public static entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;
    .locals 4
    .param p0, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 140
    new-instance v0, Lcom/sleepycat/bind/tuple/TupleInput;

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v2

    .line 141
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/bind/tuple/TupleInput;-><init>([BII)V

    .line 140
    return-object v0
.end method

.method public static inputToEntry(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p0, "input"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 125
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->getBufferBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->getBufferOffset()I

    move-result v1

    .line 126
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->getBufferLength()I

    move-result v2

    .line 125
    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 127
    return-void
.end method

.method public static newOutput()Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1

    .line 153
    new-instance v0, Lcom/sleepycat/bind/tuple/TupleOutput;

    invoke-direct {v0}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>()V

    return-object v0
.end method

.method public static newOutput([B)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p0, "buffer"    # [B

    .line 168
    new-instance v0, Lcom/sleepycat/bind/tuple/TupleOutput;

    invoke-direct {v0, p0}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>([B)V

    return-object v0
.end method

.method public static outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p0, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 111
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferOffset()I

    move-result v1

    .line 112
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferLength()I

    move-result v2

    .line 111
    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 113
    return-void
.end method


# virtual methods
.method public getTupleBufferSize()I
    .locals 1

    .line 68
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleBase;, "Lcom/sleepycat/bind/tuple/TupleBase<TE;>;"
    iget v0, p0, Lcom/sleepycat/bind/tuple/TupleBase;->outputBufferSize:I

    return v0
.end method

.method protected getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/sleepycat/bind/tuple/TupleOutput;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleBase;, "Lcom/sleepycat/bind/tuple/TupleBase<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleBase;->getTupleBufferSize()I

    move-result v0

    .line 94
    .local v0, "byteSize":I
    if-eqz v0, :cond_0

    .line 95
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleOutput;

    new-array v2, v0, [B

    invoke-direct {v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>([B)V

    return-object v1

    .line 97
    :cond_0
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleOutput;

    invoke-direct {v1}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>()V

    return-object v1
.end method

.method public setTupleBufferSize(I)V
    .locals 0
    .param p1, "byteSize"    # I

    .line 57
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleBase;, "Lcom/sleepycat/bind/tuple/TupleBase<TE;>;"
    iput p1, p0, Lcom/sleepycat/bind/tuple/TupleBase;->outputBufferSize:I

    .line 58
    return-void
.end method
