.class public abstract Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;
.super Lcom/sleepycat/bind/tuple/TupleBase;
.source "TupleTupleKeyCreator.java"

# interfaces
.implements Lcom/sleepycat/je/SecondaryKeyCreator;
.implements Lcom/sleepycat/je/ForeignKeyNullifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/bind/tuple/TupleBase<",
        "TE;>;",
        "Lcom/sleepycat/je/SecondaryKeyCreator;",
        "Lcom/sleepycat/je/ForeignKeyNullifier;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;, "Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleBase;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public abstract createSecondaryKey(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleOutput;)Z
.end method

.method public createSecondaryKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 4
    .param p1, "db"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "primaryKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "indexKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 58
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;, "Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;->getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    .line 59
    .local v0, "output":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-static {p2}, Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v1

    .line 60
    .local v1, "primaryKeyInput":Lcom/sleepycat/bind/tuple/TupleInput;
    invoke-static {p3}, Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v2

    .line 61
    .local v2, "dataInput":Lcom/sleepycat/bind/tuple/TupleInput;
    invoke-virtual {p0, v1, v2, v0}, Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;->createSecondaryKey(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleOutput;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-static {v0, p4}, Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 63
    const/4 v3, 0x1

    return v3

    .line 65
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public nullifyForeignKey(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleOutput;)Z
    .locals 1
    .param p1, "dataInput"    # Lcom/sleepycat/bind/tuple/TupleInput;
    .param p2, "dataOutput"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 117
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;, "Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public nullifyForeignKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 2
    .param p1, "db"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 72
    .local p0, "this":Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;, "Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;->getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v0

    .line 73
    .local v0, "output":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-static {p2}, Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;->entryToInput(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/bind/tuple/TupleInput;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;->nullifyForeignKey(Lcom/sleepycat/bind/tuple/TupleInput;Lcom/sleepycat/bind/tuple/TupleOutput;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {v0, p2}, Lcom/sleepycat/bind/tuple/TupleTupleKeyCreator;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 75
    const/4 v1, 0x1

    return v1

    .line 77
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
