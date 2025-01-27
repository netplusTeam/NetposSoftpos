.class public Lcom/sleepycat/collections/TupleSerialFactory;
.super Ljava/lang/Object;
.source "TupleSerialFactory.java"


# instance fields
.field private catalog:Lcom/sleepycat/bind/serial/ClassCatalog;


# direct methods
.method public constructor <init>(Lcom/sleepycat/bind/serial/ClassCatalog;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/bind/serial/ClassCatalog;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sleepycat/collections/TupleSerialFactory;->catalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    .line 47
    return-void
.end method

.method private getKeyBinding(Ljava/lang/Class;)Lcom/sleepycat/bind/EntryBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TK;>;"
        }
    .end annotation

    .line 161
    .local p1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-static {p1}, Lcom/sleepycat/bind/tuple/TupleBinding;->getPrimitiveBinding(Ljava/lang/Class;)Lcom/sleepycat/bind/tuple/TupleBinding;

    move-result-object v0

    .line 162
    .local v0, "binding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TK;>;"
    if-nez v0, :cond_0

    .line 168
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleMarshalledBinding;

    invoke-direct {v1, p1}, Lcom/sleepycat/bind/tuple/TupleMarshalledBinding;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    .line 170
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getCatalog()Lcom/sleepycat/bind/serial/ClassCatalog;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sleepycat/collections/TupleSerialFactory;->catalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    return-object v0
.end method

.method public getEntityBinding(Ljava/lang/Class;)Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding<",
            "TV;>;"
        }
    .end annotation

    .line 156
    .local p1, "baseClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;

    iget-object v1, p0, Lcom/sleepycat/collections/TupleSerialFactory;->catalog:Lcom/sleepycat/bind/serial/ClassCatalog;

    invoke-direct {v0, v1, p1}, Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;-><init>(Lcom/sleepycat/bind/serial/ClassCatalog;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getKeyCreator(Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;
    .locals 2
    .param p2, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator<",
            "TV;>;"
        }
    .end annotation

    .line 148
    .local p1, "valueBaseClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;

    .line 149
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/TupleSerialFactory;->getEntityBinding(Ljava/lang/Class;)Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/sleepycat/bind/serial/TupleSerialMarshalledKeyCreator;-><init>(Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;Ljava/lang/String;)V

    .line 148
    return-object v0
.end method

.method public newMap(Lcom/sleepycat/je/Database;Ljava/lang/Class;Ljava/lang/Class;Z)Lcom/sleepycat/collections/StoredMap;
    .locals 3
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p4, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V::",
            "Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;",
            ">(",
            "Lcom/sleepycat/je/Database;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;Z)",
            "Lcom/sleepycat/collections/StoredMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 87
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueBaseClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Lcom/sleepycat/collections/StoredMap;

    .line 88
    invoke-direct {p0, p2}, Lcom/sleepycat/collections/TupleSerialFactory;->getKeyBinding(Ljava/lang/Class;)Lcom/sleepycat/bind/EntryBinding;

    move-result-object v1

    .line 89
    invoke-virtual {p0, p3}, Lcom/sleepycat/collections/TupleSerialFactory;->getEntityBinding(Ljava/lang/Class;)Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p4}, Lcom/sleepycat/collections/StoredMap;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;Z)V

    .line 87
    return-object v0
.end method

.method public newSortedMap(Lcom/sleepycat/je/Database;Ljava/lang/Class;Ljava/lang/Class;Z)Lcom/sleepycat/collections/StoredSortedMap;
    .locals 3
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p4, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V::",
            "Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;",
            ">(",
            "Lcom/sleepycat/je/Database;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;Z)",
            "Lcom/sleepycat/collections/StoredSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 121
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueBaseClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Lcom/sleepycat/collections/StoredSortedMap;

    .line 122
    invoke-direct {p0, p2}, Lcom/sleepycat/collections/TupleSerialFactory;->getKeyBinding(Ljava/lang/Class;)Lcom/sleepycat/bind/EntryBinding;

    move-result-object v1

    .line 123
    invoke-virtual {p0, p3}, Lcom/sleepycat/collections/TupleSerialFactory;->getEntityBinding(Ljava/lang/Class;)Lcom/sleepycat/bind/serial/TupleSerialMarshalledBinding;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p4}, Lcom/sleepycat/collections/StoredSortedMap;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;Z)V

    .line 121
    return-object v0
.end method
