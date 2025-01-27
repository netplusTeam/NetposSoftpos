.class public abstract Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;
.super Lcom/sleepycat/bind/tuple/TupleBase;
.source "TupleSerialKeyCreator.java"

# interfaces
.implements Lcom/sleepycat/je/SecondaryKeyCreator;
.implements Lcom/sleepycat/je/ForeignKeyNullifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/bind/tuple/TupleBase;",
        "Lcom/sleepycat/je/SecondaryKeyCreator;",
        "Lcom/sleepycat/je/ForeignKeyNullifier;"
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

    .line 62
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;, "Lcom/sleepycat/bind/serial/TupleSerialKeyCreator<TD;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    new-instance v0, Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/bind/serial/SerialBinding;-><init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;-><init>(Lcom/sleepycat/bind/serial/SerialBinding;)V

    .line 63
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

    .line 70
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;, "Lcom/sleepycat/bind/serial/TupleSerialKeyCreator<TD;>;"
    .local p1, "dataBinding":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TD;>;"
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBase;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    .line 73
    return-void
.end method


# virtual methods
.method public abstract createSecondaryKey(Lcom/sleepycat/bind/tuple/TupleInput;Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/tuple/TupleInput;",
            "TD;",
            "Lcom/sleepycat/bind/tuple/TupleOutput;",
            ")Z"
        }
    .end annotation
.end method

.method public createSecondaryKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 4
    .param p1, "db"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "primaryKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "indexKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 80
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;, "Lcom/sleepycat/bind/serial/TupleSerialKeyCreator<TD;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;->getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    .line 81
    .local v0, "output":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-static {p2}, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v1

    .line 82
    .local v1, "primaryKeyInput":Lcom/sleepycat/bind/tuple/TupleInput;
    iget-object v2, p0, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v2, p3}, Lcom/sleepycat/bind/serial/SerialBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v2

    .line 83
    .local v2, "dataInput":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, v1, v2, v0}, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;->createSecondaryKey(Lcom/sleepycat/bind/tuple/TupleInput;Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-static {v0, p4}, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 85
    const/4 v3, 0x1

    return v3

    .line 87
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public nullifyForeignKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TD;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;, "Lcom/sleepycat/bind/serial/TupleSerialKeyCreator<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public nullifyForeignKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 2
    .param p1, "db"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 94
    .local p0, "this":Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;, "Lcom/sleepycat/bind/serial/TupleSerialKeyCreator<TD;>;"
    iget-object v0, p0, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v0, p2}, Lcom/sleepycat/bind/serial/SerialBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;->nullifyForeignKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sleepycat/bind/serial/TupleSerialKeyCreator;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v1, v0, p2}, Lcom/sleepycat/bind/serial/SerialBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 98
    const/4 v1, 0x1

    return v1

    .line 100
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
