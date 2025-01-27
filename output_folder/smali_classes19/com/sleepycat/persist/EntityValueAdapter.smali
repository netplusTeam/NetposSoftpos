.class Lcom/sleepycat/persist/EntityValueAdapter;
.super Ljava/lang/Object;
.source "EntityValueAdapter.java"

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
.field private entityBinding:Lcom/sleepycat/bind/EntityBinding;

.field private isSecondary:Z


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/sleepycat/bind/EntityBinding;Z)V
    .locals 0
    .param p2, "entityBinding"    # Lcom/sleepycat/bind/EntityBinding;
    .param p3, "isSecondary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lcom/sleepycat/bind/EntityBinding;",
            "Z)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/sleepycat/persist/EntityValueAdapter;, "Lcom/sleepycat/persist/EntityValueAdapter<TV;>;"
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/sleepycat/persist/EntityValueAdapter;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    .line 33
    iput-boolean p3, p0, Lcom/sleepycat/persist/EntityValueAdapter;->isSecondary:Z

    .line 34
    return-void
.end method


# virtual methods
.method public clearEntries(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pkey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 51
    .local p0, "this":Lcom/sleepycat/persist/EntityValueAdapter;, "Lcom/sleepycat/persist/EntityValueAdapter<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 52
    iget-boolean v1, p0, Lcom/sleepycat/persist/EntityValueAdapter;->isSecondary:Z

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p2, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 55
    :cond_0
    invoke-virtual {p3, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 56
    return-void
.end method

.method public entryToValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 2
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

    .line 61
    .local p0, "this":Lcom/sleepycat/persist/EntityValueAdapter;, "Lcom/sleepycat/persist/EntityValueAdapter<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/EntityValueAdapter;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    iget-boolean v1, p0, Lcom/sleepycat/persist/EntityValueAdapter;->isSecondary:Z

    if-eqz v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1, p3}, Lcom/sleepycat/bind/EntityBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initData()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 45
    .local p0, "this":Lcom/sleepycat/persist/EntityValueAdapter;, "Lcom/sleepycat/persist/EntityValueAdapter<TV;>;"
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    return-object v0
.end method

.method public initKey()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 37
    .local p0, "this":Lcom/sleepycat/persist/EntityValueAdapter;, "Lcom/sleepycat/persist/EntityValueAdapter<TV;>;"
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    return-object v0
.end method

.method public initPKey()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 41
    .local p0, "this":Lcom/sleepycat/persist/EntityValueAdapter;, "Lcom/sleepycat/persist/EntityValueAdapter<TV;>;"
    iget-boolean v0, p0, Lcom/sleepycat/persist/EntityValueAdapter;->isSecondary:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public valueToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/sleepycat/persist/EntityValueAdapter;, "Lcom/sleepycat/persist/EntityValueAdapter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/sleepycat/persist/EntityValueAdapter;->entityBinding:Lcom/sleepycat/bind/EntityBinding;

    invoke-interface {v0, p1, p2}, Lcom/sleepycat/bind/EntityBinding;->objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 66
    return-void
.end method
