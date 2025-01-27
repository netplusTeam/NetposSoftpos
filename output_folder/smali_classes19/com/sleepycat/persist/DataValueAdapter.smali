.class Lcom/sleepycat/persist/DataValueAdapter;
.super Ljava/lang/Object;
.source "DataValueAdapter.java"

# interfaces
.implements Lcom/sleepycat/persist/ValueAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sleepycat/persist/ValueAdapter<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private dataBinding:Lcom/sleepycat/bind/EntryBinding;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;)V
    .locals 0
    .param p2, "dataBinding"    # Lcom/sleepycat/bind/EntryBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lcom/sleepycat/bind/EntryBinding;",
            ")V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/sleepycat/persist/DataValueAdapter;, "Lcom/sleepycat/persist/DataValueAdapter<TV;>;"
    .local p1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/sleepycat/persist/DataValueAdapter;->dataBinding:Lcom/sleepycat/bind/EntryBinding;

    .line 31
    return-void
.end method


# virtual methods
.method public clearEntries(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pkey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 48
    .local p0, "this":Lcom/sleepycat/persist/DataValueAdapter;, "Lcom/sleepycat/persist/DataValueAdapter<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 49
    invoke-virtual {p3, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 50
    return-void
.end method

.method public entryToValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pkey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")TV;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/sleepycat/persist/DataValueAdapter;, "Lcom/sleepycat/persist/DataValueAdapter<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/DataValueAdapter;->dataBinding:Lcom/sleepycat/bind/EntryBinding;

    invoke-interface {v0, p3}, Lcom/sleepycat/bind/EntryBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initData()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 42
    .local p0, "this":Lcom/sleepycat/persist/DataValueAdapter;, "Lcom/sleepycat/persist/DataValueAdapter<TV;>;"
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    return-object v0
.end method

.method public initKey()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 34
    .local p0, "this":Lcom/sleepycat/persist/DataValueAdapter;, "Lcom/sleepycat/persist/DataValueAdapter<TV;>;"
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    return-object v0
.end method

.method public initPKey()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 38
    .local p0, "this":Lcom/sleepycat/persist/DataValueAdapter;, "Lcom/sleepycat/persist/DataValueAdapter<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public valueToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/sleepycat/persist/DataValueAdapter;, "Lcom/sleepycat/persist/DataValueAdapter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot change the data in a key-only index"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
