.class public abstract Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;
.super Ljava/lang/Object;
.source "SerialSerialKeyCreator.java"

# interfaces
.implements Lcom/sleepycat/je/SecondaryKeyCreator;
.implements Lcom/sleepycat/je/ForeignKeyNullifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PK:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        "SK:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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

.field protected indexKeyBinding:Lcom/sleepycat/bind/serial/SerialBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TSK;>;"
        }
    .end annotation
.end field

.field protected primaryKeyBinding:Lcom/sleepycat/bind/serial/SerialBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TPK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .param p1, "classCatalog"    # Lcom/sleepycat/bind/serial/ClassCatalog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/serial/ClassCatalog;",
            "Ljava/lang/Class<",
            "TPK;>;",
            "Ljava/lang/Class<",
            "TD;>;",
            "Ljava/lang/Class<",
            "TSK;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;, "Lcom/sleepycat/bind/serial/SerialSerialKeyCreator<TPK;TD;TSK;>;"
    .local p2, "primaryKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPK;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    .local p4, "indexKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    new-instance v0, Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/bind/serial/SerialBinding;-><init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V

    new-instance v1, Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-direct {v1, p1, p3}, Lcom/sleepycat/bind/serial/SerialBinding;-><init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V

    new-instance v2, Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-direct {v2, p1, p4}, Lcom/sleepycat/bind/serial/SerialBinding;-><init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;-><init>(Lcom/sleepycat/bind/serial/SerialBinding;Lcom/sleepycat/bind/serial/SerialBinding;Lcom/sleepycat/bind/serial/SerialBinding;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/bind/serial/SerialBinding;Lcom/sleepycat/bind/serial/SerialBinding;Lcom/sleepycat/bind/serial/SerialBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TPK;>;",
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TD;>;",
            "Lcom/sleepycat/bind/serial/SerialBinding<",
            "TSK;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;, "Lcom/sleepycat/bind/serial/SerialSerialKeyCreator<TPK;TD;TSK;>;"
    .local p1, "primaryKeyBinding":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TPK;>;"
    .local p2, "dataBinding":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TD;>;"
    .local p3, "indexKeyBinding":Lcom/sleepycat/bind/serial/SerialBinding;, "Lcom/sleepycat/bind/serial/SerialBinding<TSK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;->primaryKeyBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    .line 85
    iput-object p2, p0, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    .line 86
    iput-object p3, p0, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;->indexKeyBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    .line 87
    return-void
.end method


# virtual methods
.method public abstract createSecondaryKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPK;TD;)TSK;"
        }
    .end annotation
.end method

.method public createSecondaryKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 4
    .param p1, "db"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "primaryKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "indexKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 94
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;, "Lcom/sleepycat/bind/serial/SerialSerialKeyCreator<TPK;TD;TSK;>;"
    iget-object v0, p0, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;->primaryKeyBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    .line 95
    invoke-virtual {v0, p2}, Lcom/sleepycat/bind/serial/SerialBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "primaryKeyInput":Ljava/lang/Object;, "TPK;"
    iget-object v1, p0, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v1, p3}, Lcom/sleepycat/bind/serial/SerialBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "dataInput":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;->createSecondaryKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 98
    .local v2, "indexKey":Ljava/lang/Object;, "TSK;"
    if-eqz v2, :cond_0

    .line 99
    iget-object v3, p0, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;->indexKeyBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v3, v2, p4}, Lcom/sleepycat/bind/serial/SerialBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 100
    const/4 v3, 0x1

    return v3

    .line 102
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

    .line 150
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;, "Lcom/sleepycat/bind/serial/SerialSerialKeyCreator<TPK;TD;TSK;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public nullifyForeignKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 2
    .param p1, "db"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 109
    .local p0, "this":Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;, "Lcom/sleepycat/bind/serial/SerialSerialKeyCreator<TPK;TD;TSK;>;"
    iget-object v0, p0, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v0, p2}, Lcom/sleepycat/bind/serial/SerialBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;->nullifyForeignKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/sleepycat/bind/serial/SerialSerialKeyCreator;->dataBinding:Lcom/sleepycat/bind/serial/SerialBinding;

    invoke-virtual {v1, v0, p2}, Lcom/sleepycat/bind/serial/SerialBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 113
    const/4 v1, 0x1

    return v1

    .line 115
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
