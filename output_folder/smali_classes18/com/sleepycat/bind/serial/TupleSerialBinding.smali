.class public abstract Lcom/sleepycat/bind/serial/TupleSerialBinding;
.super Lcom/sleepycat/bind/tuple/TupleBase;
.source "TupleSerialBinding.java"

# interfaces
.implements Lcom/sleepycat/bind/EntityBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/bind/tuple/TupleBase;",
        "Lcom/sleepycat/bind/EntityBinding<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V
    .locals 1
    .param p1, "classCatalog"    # Lcom/sleepycat/bind/serial/ClassCatalog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/serial/ClassCatalog;",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialBinding;, "Lcom/sleepycat/bind/serial/TupleSerialBinding<TD;TE;>;"
    .local p2, "baseClass":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    new-instance v0, Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/bind/serial/SerialBinding;-><init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/sleepycat/bind/serial/TupleSerialBinding;-><init>(Lcom/sleepycat/bind/serial/SerialBinding;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/bind/serial/SerialBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TD;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialBinding;, "Lcom/sleepycat/bind/serial/TupleSerialBinding<TD;TE;>;"
    .local p1, "dataBinding":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TD;>;"
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBase;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sleepycat/bind/serial/TupleSerialBinding;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    .line 67
    return-void
.end method


# virtual methods
.method public abstract entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/tuple/TupleInput;",
            "TD;)TE;"
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

    .line 72
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialBinding;, "Lcom/sleepycat/bind/serial/TupleSerialBinding<TD;TE;>;"
    invoke-static {p1}, Lcom/sleepycat/bind/serial/TupleSerialBinding;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/bind/serial/TupleSerialBinding;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    .line 73
    invoke-virtual {v1, p2}, Lcom/sleepycat/bind/serial/SerialBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/bind/serial/TupleSerialBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract objectToData(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TD;"
        }
    .end annotation
.end method

.method public objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialBinding;, "Lcom/sleepycat/bind/serial/TupleSerialBinding<TD;TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/serial/TupleSerialBinding;->objectToData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "dataObject":Ljava/lang/Object;, "TD;"
    iget-object v1, p0, Lcom/sleepycat/bind/serial/TupleSerialBinding;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v1, v0, p2}, Lcom/sleepycat/bind/serial/SerialBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 89
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

    .line 79
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialBinding;, "Lcom/sleepycat/bind/serial/TupleSerialBinding<TD;TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/serial/TupleSerialBinding;->getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    .line 80
    .local v0, "output":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/bind/serial/TupleSerialBinding;->objectToKey(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 81
    invoke-static {v0, p2}, Lcom/sleepycat/bind/serial/TupleSerialBinding;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 82
    return-void
.end method
