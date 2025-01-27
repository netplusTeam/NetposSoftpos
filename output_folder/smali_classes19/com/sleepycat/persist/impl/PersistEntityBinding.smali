.class public Lcom/sleepycat/persist/impl/PersistEntityBinding;
.super Ljava/lang/Object;
.source "PersistEntityBinding.java"

# interfaces
.implements Lcom/sleepycat/bind/EntityBinding;


# instance fields
.field volatile catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

.field volatile entityFormat:Lcom/sleepycat/persist/impl/Format;

.field keyAssigner:Lcom/sleepycat/persist/impl/PersistKeyAssigner;

.field final rawAccess:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/persist/impl/PersistCatalog;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "catalogParam"    # Lcom/sleepycat/persist/impl/PersistCatalog;
    .param p2, "entityClassName"    # Ljava/lang/String;
    .param p3, "rawAccess"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-static {v0, p2, p3}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->getOrCreateFormat(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entityFormat:Lcom/sleepycat/persist/impl/Format;
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-static {v1, p2, p3}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->getOrCreateFormat(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entityFormat:Lcom/sleepycat/persist/impl/Format;
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    nop

    .line 56
    .end local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iput-boolean p3, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->rawAccess:Z

    .line 61
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an entity class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    .restart local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private entryToObjectInternal(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "priKey"    # Ljava/lang/Object;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    iget-boolean v1, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->rawAccess:Z

    invoke-static {v0, p1, p2, p3, v1}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->readEntity(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getOrCreateFormat(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;Z)Lcom/sleepycat/persist/impl/Format;
    .locals 4
    .param p0, "useCatalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p1, "clsName"    # Ljava/lang/String;
    .param p2, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 300
    if-eqz p2, :cond_1

    .line 301
    invoke-interface {p0, p1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 302
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v0, :cond_0

    .line 306
    return-object v0

    .line 303
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a persistent class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_1
    invoke-interface {p0, p1}, Lcom/sleepycat/persist/impl/Catalog;->resolveKeyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 309
    .local v0, "cls":Ljava/lang/Class;
    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    return-object v1
.end method

.method private getValidFormat(Ljava/lang/Object;)Lcom/sleepycat/persist/impl/Format;
    .locals 4
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 260
    if-eqz p1, :cond_3

    .line 269
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->rawAccess:Z

    if-eqz v0, :cond_1

    .line 270
    instance-of v0, p1, Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v0, :cond_0

    .line 274
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    goto :goto_0

    .line 271
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity must be a RawObject"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 281
    .restart local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    if-ne v1, v2, :cond_2

    .line 288
    return-object v0

    .line 282
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The entity class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must be this entity class or a subclass of it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    .line 285
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private objectToDataInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->getValidFormat(Ljava/lang/Object;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 196
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->checkWriteInReplicaUpgradeMode()V

    .line 197
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->rawAccess:Z

    invoke-static {v0, v1, p1, p2, v2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->writeEntity(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Z)V

    .line 198
    return-void
.end method

.method private objectToKeyInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 4
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->getValidFormat(Ljava/lang/Object;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 245
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    new-instance v1, Lcom/sleepycat/persist/impl/RecordOutput;

    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    iget-boolean v3, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->rawAccess:Z

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/persist/impl/RecordOutput;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    .line 248
    .local v1, "output":Lcom/sleepycat/persist/impl/RecordOutput;
    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->rawAccess:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/sleepycat/persist/impl/Format;->writePriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V

    .line 249
    invoke-static {v1, p2}, Lcom/sleepycat/bind/tuple/TupleBase;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 250
    return-void
.end method

.method static readEntity(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Z)Ljava/lang/Object;
    .locals 19
    .param p0, "useCatalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "priKey"    # Ljava/lang/Object;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 135
    move-object/from16 v0, p2

    move/from16 v9, p4

    new-instance v10, Lcom/sleepycat/persist/impl/RecordInput;

    .line 137
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v3, p4

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/je/DatabaseEntry;I[BII)V

    .line 138
    .local v10, "dataInput":Lcom/sleepycat/persist/impl/RecordInput;
    invoke-virtual {v10}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferOffset()I

    move-result v11

    .line 139
    .local v11, "initialOffset":I
    invoke-virtual {v10}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v12

    .line 140
    .local v12, "formatId":I
    const/4 v1, 0x1

    move-object/from16 v13, p0

    invoke-interface {v13, v12, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(IZ)Lcom/sleepycat/persist/impl/Format;

    move-result-object v14

    .line 141
    .local v14, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v10, v14}, Lcom/sleepycat/persist/impl/RecordInput;->registerEntityFormat(Lcom/sleepycat/persist/impl/Format;)V

    .line 142
    invoke-virtual {v14}, Lcom/sleepycat/persist/impl/Format;->getReader()Lcom/sleepycat/persist/impl/Reader;

    move-result-object v15

    .line 143
    .local v15, "reader":Lcom/sleepycat/persist/impl/Reader;
    invoke-interface {v15, v10, v9}, Lcom/sleepycat/persist/impl/Reader;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v8

    .line 144
    .local v8, "entity":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 146
    new-instance v16, Lcom/sleepycat/persist/impl/RecordInput;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v17

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p4

    move/from16 v18, v12

    move-object v12, v8

    .end local v8    # "entity":Ljava/lang/Object;
    .local v12, "entity":Ljava/lang/Object;
    .local v18, "formatId":I
    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/je/DatabaseEntry;I[BII)V

    .line 149
    .local v1, "keyInput":Lcom/sleepycat/persist/impl/RecordInput;
    invoke-interface {v15, v12, v1, v9}, Lcom/sleepycat/persist/impl/Reader;->readPriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)V

    .line 150
    .end local v1    # "keyInput":Lcom/sleepycat/persist/impl/RecordInput;
    goto :goto_2

    .line 156
    .end local v18    # "formatId":I
    .restart local v8    # "entity":Ljava/lang/Object;
    .local v12, "formatId":I
    :cond_0
    move/from16 v18, v12

    move-object v12, v8

    .end local v8    # "entity":Ljava/lang/Object;
    .local v12, "entity":Ljava/lang/Object;
    .restart local v18    # "formatId":I
    instance-of v2, v12, Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v9

    .line 157
    :goto_0
    invoke-interface {v15, v2}, Lcom/sleepycat/persist/impl/Reader;->getAccessor(Z)Lcom/sleepycat/persist/impl/Accessor;

    move-result-object v2

    .line 160
    .local v2, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    if-nez v2, :cond_3

    .line 161
    invoke-virtual {v14}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getReader()Lcom/sleepycat/persist/impl/Reader;

    move-result-object v3

    instance-of v4, v12, Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v9

    .line 162
    :goto_1
    invoke-interface {v3, v1}, Lcom/sleepycat/persist/impl/Reader;->getAccessor(Z)Lcom/sleepycat/persist/impl/Accessor;

    move-result-object v2

    .line 166
    :cond_3
    invoke-interface {v2, v12, v0}, Lcom/sleepycat/persist/impl/Accessor;->setPriField(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .end local v2    # "accessor":Lcom/sleepycat/persist/impl/Accessor;
    :goto_2
    invoke-virtual {v10, v12, v11}, Lcom/sleepycat/persist/impl/RecordInput;->registerEntity(Ljava/lang/Object;I)V

    .line 169
    invoke-interface {v15, v12, v10, v9}, Lcom/sleepycat/persist/impl/Reader;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v1

    .line 170
    .end local v12    # "entity":Ljava/lang/Object;
    .local v1, "entity":Ljava/lang/Object;
    return-object v1
.end method

.method static writeEntity(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;Z)V
    .locals 2
    .param p0, "format"    # Lcom/sleepycat/persist/impl/Format;
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "entity"    # Ljava/lang/Object;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/sleepycat/persist/impl/RecordOutput;

    invoke-direct {v0, p1, p4}, Lcom/sleepycat/persist/impl/RecordOutput;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    .line 217
    .local v0, "output":Lcom/sleepycat/persist/impl/RecordOutput;
    invoke-virtual {v0, p2}, Lcom/sleepycat/persist/impl/RecordOutput;->registerEntity(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/persist/impl/RecordOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 219
    invoke-virtual {p0, p2, v0, p4}, Lcom/sleepycat/persist/impl/Format;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V

    .line 220
    invoke-static {v0, p3}, Lcom/sleepycat/bind/tuple/TupleBase;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 221
    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 70
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entryToObjectInternal(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 74
    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entryToObjectInternal(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public entryToObjectWithPriKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 3
    .param p1, "priKey"    # Ljava/lang/Object;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 89
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entryToObjectInternal(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Primary key cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "priKey":Ljava/lang/Object;
    .end local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    throw v1
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v1, "e":Lcom/sleepycat/persist/impl/RefreshException;
    .restart local p1    # "priKey":Ljava/lang/Object;
    .restart local p2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 97
    :try_start_1
    invoke-direct {p0, v0, p1, p2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entryToObjectInternal(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getKeyAssigner()Lcom/sleepycat/persist/impl/PersistKeyAssigner;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->keyAssigner:Lcom/sleepycat/persist/impl/PersistKeyAssigner;

    return-object v0
.end method

.method public objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 175
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->objectToDataInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 179
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->objectToDataInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    nop

    .line 184
    .end local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :goto_0
    return-void

    .line 180
    .restart local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public objectToKey(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 225
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->objectToKeyInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 229
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->objectToKeyInternal(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    nop

    .line 234
    .end local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :goto_0
    return-void

    .line 230
    .restart local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :catch_1
    move-exception v1

    .line 231
    .local v1, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V
    .locals 1
    .param p1, "newCatalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 318
    iput-object p1, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 319
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    .line 320
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->keyAssigner:Lcom/sleepycat/persist/impl/PersistKeyAssigner;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/PersistKeyAssigner;->refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V

    .line 323
    :cond_0
    return-void
.end method
