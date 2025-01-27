.class public Lcom/sleepycat/persist/impl/PersistKeyBinding;
.super Ljava/lang/Object;
.source "PersistKeyBinding.java"

# interfaces
.implements Lcom/sleepycat/bind/EntryBinding;


# instance fields
.field volatile catalog:Lcom/sleepycat/persist/impl/Catalog;

.field volatile keyFormat:Lcom/sleepycat/persist/impl/Format;

.field final rawAccess:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "cls"    # Ljava/lang/Class;
    .param p3, "compositeFieldOrder"    # [Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 74
    new-instance v0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;

    invoke-direct {v0, p1, p2, p3}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 75
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/persist/impl/Format;->initializeIfNeeded(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->rawAccess:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "catalogParam"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "clsName"    # Ljava/lang/String;
    .param p3, "rawAccess"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 42
    invoke-static {v0, p2, p3}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->getOrCreateFormat(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 48
    invoke-static {v1, p2, p3}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->getOrCreateFormat(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    nop

    .line 53
    .end local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isSimple()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 54
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isEnum()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 55
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassMetadata()Lcom/sleepycat/persist/model/ClassMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 56
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassMetadata()Lcom/sleepycat/persist/model/ClassMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/model/ClassMetadata;->getCompositeKeyFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key class is not a simple type, an enum, or a composite key class (composite keys must include @KeyField annotations): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    :goto_1
    iput-boolean p3, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->rawAccess:Z

    .line 64
    return-void

    .line 49
    .restart local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :catch_1
    move-exception v1

    .line 50
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private entryToObjectInternal(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 3
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 122
    nop

    .line 123
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/persist/impl/PersistKeyBinding;->bytesToObject([BII)Ljava/lang/Object;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method private objectToEntryInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/sleepycat/persist/impl/RecordOutput;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->rawAccess:Z

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/persist/impl/RecordOutput;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    .line 143
    .local v0, "output":Lcom/sleepycat/persist/impl/RecordOutput;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/persist/impl/RecordOutput;->writeKeyObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    .line 144
    invoke-static {v0, p2}, Lcom/sleepycat/bind/tuple/TupleBase;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 145
    return-void
.end method

.method static readKey(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Catalog;[BIIZ)Ljava/lang/Object;
    .locals 9
    .param p0, "keyFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 101
    new-instance v8, Lcom/sleepycat/persist/impl/RecordInput;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p1

    move v2, p5

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/je/DatabaseEntry;I[BII)V

    .line 103
    .local v0, "input":Lcom/sleepycat/persist/impl/EntityInput;
    invoke-interface {v0, p0}, Lcom/sleepycat/persist/impl/EntityInput;->readKeyObject(Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method bytesToObject([BII)Ljava/lang/Object;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-boolean v5, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->rawAccess:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/persist/impl/PersistKeyBinding;->readKey(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Catalog;[BIIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 3
    .param p1, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 108
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/PersistKeyBinding;->entryToObjectInternal(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 112
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/PersistKeyBinding;->entryToObjectInternal(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 113
    :catch_1
    move-exception v1

    .line 114
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 128
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/PersistKeyBinding;->objectToEntryInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 132
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/PersistKeyBinding;->objectToEntryInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    nop

    .line 137
    .end local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :goto_0
    return-void

    .line 133
    .restart local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V
    .locals 2
    .param p1, "newCatalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 151
    iput-object p1, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 152
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 153
    return-void
.end method
