.class public Lcom/sleepycat/persist/impl/CompositeKeyFormat;
.super Lcom/sleepycat/persist/impl/Format;
.source "CompositeKeyFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x4422078f0000d46L


# instance fields
.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lcom/sleepycat/persist/model/ClassMetadata;

.field private transient objAccessor:Lcom/sleepycat/persist/impl/Accessor;

.field private transient rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

.field private volatile transient rawFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/raw/RawField;",
            ">;"
        }
    .end annotation
.end field

.field private volatile transient rawInputFields:[Lcom/sleepycat/persist/impl/FieldInfo;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/model/ClassMetadata;Ljava/util/List;)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "cls"    # Ljava/lang/Class;
    .param p3, "metadata"    # Lcom/sleepycat/persist/model/ClassMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Catalog;",
            "Ljava/lang/Class;",
            "Lcom/sleepycat/persist/model/ClassMetadata;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/FieldMetadata;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p4, "fieldMeta":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    invoke-static {p4}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getFieldNameArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/model/ClassMetadata;[Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/model/ClassMetadata;[Ljava/lang/String;)V
    .locals 11
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "cls"    # Ljava/lang/Class;
    .param p3, "metadata"    # Lcom/sleepycat/persist/model/ClassMetadata;
    .param p4, "fieldNames"    # [Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/Format;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    .line 109
    iput-object p3, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->metadata:Lcom/sleepycat/persist/model/ClassMetadata;

    .line 112
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, "superCls":Ljava/lang/Class;
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_7

    .line 120
    nop

    .line 121
    invoke-static {p2, p3}, Lcom/sleepycat/persist/impl/FieldInfo;->getInstanceFields(Ljava/lang/Class;Lcom/sleepycat/persist/model/ClassMetadata;)Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, "instanceFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    .line 123
    array-length v2, p4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x2e

    if-ge v4, v2, :cond_5

    aget-object v6, p4, v4

    .line 124
    .local v6, "fieldName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 125
    .local v7, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 126
    .local v9, "tryField":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v9}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 127
    move-object v7, v9

    .line 128
    goto :goto_2

    .line 130
    .end local v9    # "tryField":Lcom/sleepycat/persist/impl/FieldInfo;
    :cond_0
    goto :goto_1

    .line 131
    :cond_1
    :goto_2
    if-eqz v7, :cond_4

    .line 136
    iget-object v8, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getCatalog()Lcom/sleepycat/persist/impl/Catalog;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sleepycat/persist/impl/FieldInfo;->getFieldClass(Lcom/sleepycat/persist/impl/Catalog;)Ljava/lang/Class;

    move-result-object v8

    .line 139
    .local v8, "fieldCls":Ljava/lang/Class;
    invoke-static {v8}, Lcom/sleepycat/persist/impl/SimpleCatalog;->isSimpleType(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 140
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    .line 141
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Composite key field is not a simple type or enum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 143
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .end local v6    # "fieldName":Ljava/lang/String;
    .end local v7    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v8    # "fieldCls":Ljava/lang/Class;
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .restart local v6    # "fieldName":Ljava/lang/String;
    .restart local v7    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Composite key field is not an instance field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    .end local v6    # "fieldName":Ljava/lang/String;
    .end local v7    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_6

    .line 151
    return-void

    .line 147
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "All composite key instance fields must be key fields: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    .end local v1    # "instanceFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Composite key class must be derived from Object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "cls"    # Ljava/lang/Class;
    .param p3, "fieldNames"    # [Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/model/ClassMetadata;[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method static getFieldNameArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/FieldMetadata;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 77
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    const/4 v0, 0x0

    .line 78
    .local v0, "index":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 79
    .local v1, "a":[Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/model/FieldMetadata;

    .line 80
    .local v3, "f":Lcom/sleepycat/persist/model/FieldMetadata;
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/FieldMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 81
    nop

    .end local v3    # "f":Lcom/sleepycat/persist/model/FieldMetadata;
    add-int/lit8 v0, v0, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    return-object v1
.end method


# virtual methods
.method collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Catalog;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 203
    .local v1, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/persist/impl/FieldInfo;->collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V

    .line 204
    .end local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method convertRawObject(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;
    .locals 9
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "rawObject"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p4, "converted"    # Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->rawInputFields:[Lcom/sleepycat/persist/impl/FieldInfo;

    .line 267
    .local v0, "myFields":[Lcom/sleepycat/persist/impl/FieldInfo;
    if-nez v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/sleepycat/persist/impl/FieldInfo;

    .line 269
    iget-object v1, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 270
    iput-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->rawInputFields:[Lcom/sleepycat/persist/impl/FieldInfo;

    .line 272
    :cond_0
    invoke-virtual {p3}, Lcom/sleepycat/persist/raw/RawObject;->getSuper()Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 277
    array-length v1, v0

    new-array v1, v1, [Lcom/sleepycat/persist/raw/RawObject;

    .line 278
    .local v1, "objects":[Lcom/sleepycat/persist/raw/RawObject;
    invoke-static {v1, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    new-instance v8, Lcom/sleepycat/persist/impl/RawComplexInput;

    move-object v2, v8

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/persist/impl/RawComplexInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;[Lcom/sleepycat/persist/impl/FieldInfo;[Lcom/sleepycat/persist/raw/RawObject;)V

    .line 281
    .local v2, "in":Lcom/sleepycat/persist/impl/EntityInput;
    invoke-virtual {p0, v2, p2}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v3

    .line 282
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {p4, p3, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p0, v3, v2, p2}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 273
    .end local v1    # "objects":[Lcom/sleepycat/persist/raw/RawObject;
    .end local v2    # "in":Lcom/sleepycat/persist/impl/EntityInput;
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RawObject has too many superclasses: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 275
    invoke-virtual {p3}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v3

    invoke-interface {v3}, Lcom/sleepycat/persist/raw/RawType;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method copySecKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/RecordOutput;)V
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/RecordOutput;

    .line 298
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 299
    .local v0, "maxNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 300
    iget-object v2, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/persist/impl/Format;->copySecKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/RecordOutput;)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method evolve(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 7
    .param p1, "newFormatParam"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 318
    instance-of v0, p1, Lcom/sleepycat/persist/impl/CompositeKeyFormat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 320
    const-string v2, "A composite key class may not be changed to a different type"

    invoke-virtual {p2, p0, p1, v0, v2}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return v1

    .line 325
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;

    .line 328
    .local v0, "newFormat":Lcom/sleepycat/persist/impl/CompositeKeyFormat;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old fields: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new fields: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    const-string v3, "Composite key class fields were added or removed "

    invoke-virtual {p2, p0, v0, v3, v2}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return v1

    .line 338
    :cond_1
    const/4 v2, 0x0

    .line 339
    .local v2, "newVersion":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_4

    .line 340
    iget-object v4, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    .line 341
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/persist/impl/FieldInfo;

    iget-object v6, v0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    .line 342
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 341
    invoke-virtual {p2, p0, v0, v4, v6}, Lcom/sleepycat/persist/impl/Evolver;->evolveRequiredKeyField(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/FieldInfo;)I

    move-result v4

    .line 343
    .local v4, "result":I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 344
    return v1

    .line 346
    :cond_2
    if-ne v4, v5, :cond_3

    .line 347
    const/4 v2, 0x1

    .line 339
    .end local v4    # "result":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    .end local v3    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 358
    invoke-virtual {p2, p0, v0, v0}, Lcom/sleepycat/persist/impl/Evolver;->useEvolvedFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Reader;Lcom/sleepycat/persist/impl/Format;)V

    goto :goto_1

    .line 360
    :cond_5
    invoke-virtual {p2, p0, v0}, Lcom/sleepycat/persist/impl/Evolver;->useOldFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)V

    .line 362
    :goto_1
    return v5
.end method

.method public getClassMetadata()Lcom/sleepycat/persist/model/ClassMetadata;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->metadata:Lcom/sleepycat/persist/model/ClassMetadata;

    if-eqz v0, :cond_0

    .line 175
    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method getFieldInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getFields()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/raw/RawField;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->rawFields:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/raw/RawField;>;"
    iget-object v1, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/raw/RawField;

    .line 191
    .local v2, "field":Lcom/sleepycat/persist/raw/RawField;
    invoke-interface {v2}, Lcom/sleepycat/persist/raw/RawField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v2    # "field":Lcom/sleepycat/persist/raw/RawField;
    goto :goto_0

    .line 193
    :cond_0
    iput-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->rawFields:Ljava/util/Map;

    .line 195
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/raw/RawField;>;"
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->rawFields:Ljava/util/Map;

    return-object v0
.end method

.method getSequenceKeyFormat()Lcom/sleepycat/persist/impl/Format;
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getSequenceKeyFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    return-object v0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A composite key class used with a sequence may contain only a single key field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V
    .locals 3
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I

    .line 210
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 211
    .local v1, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v1, p1, p2, p3}, Lcom/sleepycat/persist/impl/FieldInfo;->initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V

    .line 212
    .end local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 215
    .local v0, "type":Ljava/lang/Class;
    if-eqz v0, :cond_2

    .line 216
    invoke-static {v0}, Lcom/sleepycat/persist/impl/EnhancedAccessor;->isEnhanced(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    new-instance v1, Lcom/sleepycat/persist/impl/EnhancedAccessor;

    iget-object v2, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-direct {v1, p1, v0, v2}, Lcom/sleepycat/persist/impl/EnhancedAccessor;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_1

    .line 219
    :cond_1
    new-instance v1, Lcom/sleepycat/persist/impl/ReflectionAccessor;

    iget-object v2, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-direct {v1, p1, v0, v2}, Lcom/sleepycat/persist/impl/ReflectionAccessor;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 222
    :cond_2
    :goto_1
    new-instance v1, Lcom/sleepycat/persist/impl/RawAccessor;

    iget-object v2, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/persist/impl/RawAccessor;-><init>(Lcom/sleepycat/persist/impl/Format;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 223
    return-void
.end method

.method isModelClass()Z
    .locals 1

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method migrateFromBeta(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/persist/impl/Format;->migrateFromBeta(Ljava/util/Map;)V

    .line 160
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 161
    .local v1, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v1, p1}, Lcom/sleepycat/persist/impl/FieldInfo;->migrateFromBeta(Ljava/util/Map;)V

    .line 162
    .end local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 227
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    invoke-interface {v0, p1}, Lcom/sleepycat/persist/impl/Accessor;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z

    .line 232
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 233
    .local v0, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    :goto_0
    invoke-interface {v0}, Lcom/sleepycat/persist/impl/Accessor;->newInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 240
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 241
    .local v0, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->readCompositeKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V

    .line 242
    return-object p1
.end method

.method skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 291
    .local v0, "maxNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 292
    iget-object v2, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->fields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sleepycat/persist/impl/Format;->skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 249
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 250
    .local v0, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->writeCompositeKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 251
    return-void
.end method
