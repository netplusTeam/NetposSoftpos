.class public Lcom/sleepycat/persist/impl/PersistKeyAssigner;
.super Ljava/lang/Object;
.source "PersistKeyAssigner.java"


# instance fields
.field private volatile catalog:Lcom/sleepycat/persist/impl/Catalog;

.field private volatile entityFormat:Lcom/sleepycat/persist/impl/Format;

.field private volatile keyFieldFormat:Lcom/sleepycat/persist/impl/Format;

.field private final rawAccess:Z

.field private final sequence:Lcom/sleepycat/je/Sequence;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/PersistKeyBinding;Lcom/sleepycat/persist/impl/PersistEntityBinding;Lcom/sleepycat/je/Sequence;)V
    .locals 1
    .param p1, "keyBinding"    # Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .param p2, "entityBinding"    # Lcom/sleepycat/persist/impl/PersistEntityBinding;
    .param p3, "sequence"    # Lcom/sleepycat/je/Sequence;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p1, Lcom/sleepycat/persist/impl/PersistKeyBinding;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 46
    iget-object v0, p1, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getSequenceKeyFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->keyFieldFormat:Lcom/sleepycat/persist/impl/Format;

    .line 47
    iget-object v0, p2, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    .line 48
    iget-boolean v0, p2, Lcom/sleepycat/persist/impl/PersistEntityBinding;->rawAccess:Z

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->rawAccess:Z

    .line 49
    iput-object p3, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->sequence:Lcom/sleepycat/je/Sequence;

    .line 50
    return-void
.end method

.method private assignPrimaryKeyInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 13
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    iget-boolean v1, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->rawAccess:Z

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/persist/impl/Format;->isPriKeyNullOrZero(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->sequence:Lcom/sleepycat/je/Sequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/Sequence;->get(Lcom/sleepycat/je/Transaction;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 80
    .local v0, "value":Ljava/lang/Long;
    new-instance v1, Lcom/sleepycat/persist/impl/RecordOutput;

    iget-object v3, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-boolean v4, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->rawAccess:Z

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/persist/impl/RecordOutput;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    .line 81
    .local v1, "output":Lcom/sleepycat/persist/impl/RecordOutput;
    iget-object v3, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->keyFieldFormat:Lcom/sleepycat/persist/impl/Format;

    iget-boolean v4, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->rawAccess:Z

    invoke-virtual {v3, v0, v1, v4}, Lcom/sleepycat/persist/impl/Format;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V

    .line 82
    invoke-static {v1, p2}, Lcom/sleepycat/bind/tuple/TupleBase;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 83
    new-instance v3, Lcom/sleepycat/persist/impl/RecordInput;

    iget-object v6, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-boolean v7, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->rawAccess:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 85
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v10

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v11

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v12

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/je/DatabaseEntry;I[BII)V

    .line 86
    .local v3, "input":Lcom/sleepycat/persist/impl/EntityInput;
    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getReader()Lcom/sleepycat/persist/impl/Reader;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->rawAccess:Z

    invoke-interface {v4, p1, v3, v5}, Lcom/sleepycat/persist/impl/Reader;->readPriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)V

    .line 87
    return v2

    .line 89
    .end local v0    # "value":Ljava/lang/Long;
    .end local v1    # "output":Lcom/sleepycat/persist/impl/RecordOutput;
    .end local v3    # "input":Lcom/sleepycat/persist/impl/EntityInput;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public assignPrimaryKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 3
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 56
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->assignPrimaryKeyInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 60
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->assignPrimaryKeyInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 61
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V
    .locals 2
    .param p1, "newCatalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 97
    iput-object p1, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 98
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    .line 99
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->keyFieldFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->keyFieldFormat:Lcom/sleepycat/persist/impl/Format;

    .line 100
    return-void
.end method
