.class public Lcom/sleepycat/persist/impl/PersistKeyCreator;
.super Ljava/lang/Object;
.source "PersistKeyCreator.java"

# interfaces
.implements Lcom/sleepycat/je/SecondaryKeyCreator;
.implements Lcom/sleepycat/je/SecondaryMultiKeyCreator;
.implements Lcom/sleepycat/je/ForeignMultiKeyNullifier;


# instance fields
.field private volatile catalog:Lcom/sleepycat/persist/impl/Catalog;

.field private volatile keyFormat:Lcom/sleepycat/persist/impl/Format;

.field private final keyName:Ljava/lang/String;

.field private volatile priKeyFormat:Lcom/sleepycat/persist/impl/Format;

.field private final toMany:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Z)V
    .locals 3
    .param p1, "catalogParam"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "entityMeta"    # Lcom/sleepycat/persist/model/EntityMetadata;
    .param p3, "keyClassName"    # Ljava/lang/String;
    .param p4, "secKeyMeta"    # Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .param p5, "rawAccess"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 62
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->getFormats(Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Z)V
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 67
    :try_start_1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->getFormats(Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Z)V
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    nop

    .line 72
    .end local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :goto_0
    invoke-virtual {p4}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyName:Ljava/lang/String;

    .line 73
    invoke-virtual {p4}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelationship()Lcom/sleepycat/persist/model/Relationship;

    move-result-object v0

    .line 74
    .local v0, "rel":Lcom/sleepycat/persist/model/Relationship;
    sget-object v1, Lcom/sleepycat/persist/model/Relationship;->ONE_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sleepycat/persist/model/Relationship;->MANY_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->toMany:Z

    .line 76
    return-void

    .line 68
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private createSecondaryKeyInternal(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 5
    .param p1, "secondary"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "result"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->toMany:Z

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->moveToKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/persist/impl/KeyLocation;

    move-result-object v0

    .line 126
    .local v0, "loc":Lcom/sleepycat/persist/impl/KeyLocation;
    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Lcom/sleepycat/persist/impl/RecordOutput;

    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/persist/impl/RecordOutput;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    .line 129
    .local v1, "output":Lcom/sleepycat/persist/impl/RecordOutput;
    iget-object v2, v0, Lcom/sleepycat/persist/impl/KeyLocation;->format:Lcom/sleepycat/persist/impl/Format;

    iget-object v4, v0, Lcom/sleepycat/persist/impl/KeyLocation;->input:Lcom/sleepycat/persist/impl/RecordInput;

    invoke-virtual {v2, v4, v1}, Lcom/sleepycat/persist/impl/Format;->copySecKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/RecordOutput;)V

    .line 130
    invoke-static {v1, p4}, Lcom/sleepycat/bind/tuple/TupleBase;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 131
    return v3

    .line 134
    .end local v1    # "output":Lcom/sleepycat/persist/impl/RecordOutput;
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 123
    .end local v0    # "loc":Lcom/sleepycat/persist/impl/KeyLocation;
    :cond_1
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private createSecondaryKeysInternal(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Set;)V
    .locals 4
    .param p1, "secondary"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "results"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 160
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->toMany:Z

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->moveToKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/persist/impl/KeyLocation;

    move-result-object v0

    .line 164
    .local v0, "loc":Lcom/sleepycat/persist/impl/KeyLocation;
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, v0, Lcom/sleepycat/persist/impl/KeyLocation;->format:Lcom/sleepycat/persist/impl/Format;

    iget-object v2, v0, Lcom/sleepycat/persist/impl/KeyLocation;->input:Lcom/sleepycat/persist/impl/RecordInput;

    iget-object v3, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v1, v2, v3, p4}, Lcom/sleepycat/persist/impl/Format;->copySecMultiKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;Ljava/util/Set;)V

    .line 168
    :cond_0
    return-void

    .line 161
    .end local v0    # "loc":Lcom/sleepycat/persist/impl/KeyLocation;
    :cond_1
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private getFormats(Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Z)V
    .locals 3
    .param p1, "entityMeta"    # Lcom/sleepycat/persist/model/EntityMetadata;
    .param p2, "keyClassName"    # Ljava/lang/String;
    .param p3, "secKeyMeta"    # Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .param p4, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 85
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/EntityMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->getOrCreateFormat(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->priKeyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 87
    invoke-static {v0, p2, p4}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->getOrCreateFormat(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 88
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use a primitive wrapper class instead of class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 95
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a key class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isManyType(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "cls"    # Ljava/lang/Class;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private moveToKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/persist/impl/KeyLocation;
    .locals 9
    .param p1, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 229
    new-instance v8, Lcom/sleepycat/persist/impl/RecordInput;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->priKeyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 230
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v4

    .line 231
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v5

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v6

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v7

    const/4 v2, 0x1

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/je/DatabaseEntry;I[BII)V

    .line 232
    .local v0, "input":Lcom/sleepycat/persist/impl/RecordInput;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v1

    .line 233
    .local v1, "formatId":I
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 234
    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(IZ)Lcom/sleepycat/persist/impl/Format;

    move-result-object v2

    .line 235
    .local v2, "entityFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v0, v2}, Lcom/sleepycat/persist/impl/RecordInput;->registerEntityFormat(Lcom/sleepycat/persist/impl/Format;)V

    .line 236
    iget-object v3, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/sleepycat/persist/impl/Format;->skipToSecKey(Lcom/sleepycat/persist/impl/RecordInput;Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    .line 237
    .local v3, "fieldFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v3, :cond_0

    .line 239
    invoke-virtual {v0, v3}, Lcom/sleepycat/persist/impl/RecordInput;->getKeyLocation(Lcom/sleepycat/persist/impl/Format;)Lcom/sleepycat/persist/impl/KeyLocation;

    move-result-object v4

    return-object v4

    .line 242
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method private nullifyForeignKeyInternal(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 11
    .param p1, "secondary"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 194
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, p3, v2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->readEntity(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    .line 195
    .local v0, "entity":Lcom/sleepycat/persist/raw/RawObject;
    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/Format;

    .line 201
    .local v1, "entityFormat":Lcom/sleepycat/persist/impl/Format;
    const/4 v3, 0x0

    .line 202
    .local v3, "secKeyObject":Ljava/lang/Object;
    iget-boolean v4, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->toMany:Z

    if-eqz v4, :cond_0

    .line 203
    iget-object v5, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    iget-object v6, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 204
    invoke-virtual {p4}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v7

    invoke-virtual {p4}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v8

    .line 205
    invoke-virtual {p4}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v9

    const/4 v10, 0x1

    .line 204
    invoke-static/range {v5 .. v10}, Lcom/sleepycat/persist/impl/PersistKeyBinding;->readKey(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Catalog;[BIIZ)Ljava/lang/Object;

    move-result-object v3

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-object v5, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyName:Ljava/lang/String;

    .line 208
    invoke-virtual {v1, v4, v0, v5, v3}, Lcom/sleepycat/persist/impl/Format;->nullifySecKey(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 215
    invoke-static {v1, v4, v0, p3, v2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->writeEntity(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Z)V

    .line 216
    return v2

    .line 219
    :cond_1
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public createSecondaryKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 3
    .param p1, "secondary"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "result"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 104
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->createSecondaryKeyInternal(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 108
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->createSecondaryKeyInternal(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 110
    :catch_1
    move-exception v1

    .line 111
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public createSecondaryKeys(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Set;)V
    .locals 3
    .param p1, "secondary"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "results"    # Ljava/util/Set;

    .line 143
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->createSecondaryKeysInternal(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 147
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->createSecondaryKeysInternal(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Set;)V
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    nop

    .line 152
    .end local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :goto_0
    return-void

    .line 148
    .restart local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public nullifyForeignKey(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 3
    .param p1, "secondary"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 175
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->nullifyForeignKeyInternal(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 179
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->nullifyForeignKeyInternal(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 180
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V
    .locals 2
    .param p1, "newCatalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 250
    iput-object p1, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 251
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 252
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->priKeyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistKeyCreator;->priKeyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 253
    return-void
.end method
