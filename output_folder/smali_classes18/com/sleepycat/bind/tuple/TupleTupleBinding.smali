.class public abstract Lcom/sleepycat/bind/tuple/TupleTupleBinding;
.super Lcom/sleepycat/bind/tuple/TupleBase;
.source "TupleTupleBinding.java"

# interfaces
.implements Lcom/sleepycat/bind/EntityBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/bind/tuple/TupleBase<",
        "TE;>;",
        "Lcom/sleepycat/bind/EntityBinding<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleBinding<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBase;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/tuple/TupleInput;",
            "Lcom/sleepycat/bind/tuple/TupleInput;",
            ")TE;"
        }
    .end annotation
.end method

.method public entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")TE;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleBinding<TE;>;"
    invoke-static {p1}, Lcom/sleepycat/bind/tuple/TupleBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    .line 48
    invoke-static {p2}, Lcom/sleepycat/bind/tuple/TupleBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v1

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/bind/tuple/TupleTupleBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract objectToData(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/bind/tuple/TupleOutput;",
            ")V"
        }
    .end annotation
.end method

.method public objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleBinding<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/TupleTupleBinding;->getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    .line 63
    .local v0, "output":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/bind/tuple/TupleTupleBinding;->objectToData(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 64
    invoke-static {v0, p2}, Lcom/sleepycat/bind/tuple/TupleTupleBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 65
    return-void
.end method

.method public abstract objectToKey(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/bind/tuple/TupleOutput;",
            ")V"
        }
    .end annotation
.end method

.method public objectToKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleBinding;, "Lcom/sleepycat/bind/tuple/TupleTupleBinding<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/TupleTupleBinding;->getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    .line 55
    .local v0, "output":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/bind/tuple/TupleTupleBinding;->objectToKey(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 56
    invoke-static {v0, p2}, Lcom/sleepycat/bind/tuple/TupleTupleBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 57
    return-void
.end method
