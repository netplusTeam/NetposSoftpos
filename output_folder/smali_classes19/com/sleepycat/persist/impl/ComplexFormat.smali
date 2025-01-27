.class public Lcom/sleepycat/persist/impl/ComplexFormat;
.super Lcom/sleepycat/persist/impl/Format;
.source "ComplexFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;,
        Lcom/sleepycat/persist/impl/ComplexFormat$MultiFieldReader;,
        Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;,
        Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;,
        Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;,
        Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;,
        Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;,
        Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x27859226893ada85L


# instance fields
.field private clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

.field private transient entityFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

.field private entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

.field private evolveNeeded:Z

.field private incorrectlyOrderedSecKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private newStringFormat:Z

.field private newToOldFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nonKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

.field private nonKeyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient objAccessor:Lcom/sleepycat/persist/impl/Accessor;

.field private oldToNewKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

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

.field private volatile transient rawInputDepth:I

.field private volatile transient rawInputFields:[Lcom/sleepycat/persist/impl/FieldInfo;

.field private volatile transient rawInputLevels:[I

.field private transient secKeyAddresses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;",
            ">;"
        }
    .end annotation
.end field

.field private secKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

.field private secKeyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/model/ClassMetadata;Lcom/sleepycat/persist/model/EntityMetadata;)V
    .locals 9
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "cls"    # Ljava/lang/Class;
    .param p3, "clsMeta"    # Lcom/sleepycat/persist/model/ClassMetadata;
    .param p4, "entityMeta"    # Lcom/sleepycat/persist/model/EntityMetadata;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/Format;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->newStringFormat:Z

    .line 123
    iput-object p3, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

    .line 124
    iput-object p4, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    .line 126
    invoke-static {p2, p3}, Lcom/sleepycat/persist/impl/FieldInfo;->getInstanceFields(Ljava/lang/Class;Lcom/sleepycat/persist/model/ClassMetadata;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    .line 132
    invoke-virtual {p3}, Lcom/sleepycat/persist/model/ClassMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v0

    const/16 v1, 0x2e

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p3}, Lcom/sleepycat/persist/model/ClassMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "fieldName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/sleepycat/persist/impl/FieldInfo;

    move-result-object v2

    .line 135
    .local v2, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    if-eqz v2, :cond_0

    .line 140
    iget-object v3, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    iput-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    goto :goto_0

    .line 136
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Primary key field does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 138
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v2    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/sleepycat/persist/model/ClassMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 150
    invoke-virtual {p3}, Lcom/sleepycat/persist/model/ClassMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 151
    .local v2, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "fieldName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/sleepycat/persist/impl/FieldInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/sleepycat/persist/impl/FieldInfo;

    move-result-object v4

    .line 153
    .local v4, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    if-eqz v4, :cond_8

    .line 158
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getCatalog()Lcom/sleepycat/persist/impl/Catalog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/persist/impl/FieldInfo;->getFieldClass(Lcom/sleepycat/persist/impl/Catalog;)Ljava/lang/Class;

    move-result-object v5

    .line 159
    .local v5, "fieldCls":Ljava/lang/Class;
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelationship()Lcom/sleepycat/persist/model/Relationship;

    move-result-object v6

    .line 160
    .local v6, "rel":Lcom/sleepycat/persist/model/Relationship;
    sget-object v7, Lcom/sleepycat/persist/model/Relationship;->ONE_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    if-eq v6, v7, :cond_4

    sget-object v7, Lcom/sleepycat/persist/model/Relationship;->MANY_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    if-ne v6, v7, :cond_2

    goto :goto_2

    .line 169
    :cond_2
    invoke-static {v5}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->isManyType(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 170
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ONE_TO_ONE and MANY_TO_ONE keys must not have an array or Collection type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 173
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_4
    :goto_2
    invoke-static {v5}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->isManyType(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 176
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 177
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getDeleteAction()Lcom/sleepycat/persist/model/DeleteAction;

    move-result-object v7

    sget-object v8, Lcom/sleepycat/persist/model/DeleteAction;->NULLIFY:Lcom/sleepycat/persist/model/DeleteAction;

    if-eq v7, v8, :cond_5

    goto :goto_4

    .line 178
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NULLIFY may not be used with primitive fields: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 180
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_6
    :goto_4
    iget-object v7, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 183
    iget-object v7, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v5    # "fieldCls":Ljava/lang/Class;
    .end local v6    # "rel":Lcom/sleepycat/persist/model/Relationship;
    goto/16 :goto_1

    .line 163
    .restart local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v3    # "fieldName":Ljava/lang/String;
    .restart local v4    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    .restart local v5    # "fieldCls":Ljava/lang/Class;
    .restart local v6    # "rel":Lcom/sleepycat/persist/model/Relationship;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ONE_TO_MANY and MANY_TO_MANY keys must have an array or Collection type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 166
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    .end local v5    # "fieldCls":Ljava/lang/Class;
    .end local v6    # "rel":Lcom/sleepycat/persist/model/Relationship;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Secondary key field does not exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 156
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    .end local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    :cond_9
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 189
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/persist/impl/ComplexFormat;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 49
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/persist/impl/ComplexFormat;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 49
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/ComplexFormat;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 49
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexLatest()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 49
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 49
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/Accessor;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 49
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/persist/impl/ComplexFormat;)Lcom/sleepycat/persist/impl/Accessor;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 49
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    return-object v0
.end method

.method private checkKeyTypeChange(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/model/FieldMetadata;Lcom/sleepycat/persist/model/FieldMetadata;Ljava/lang/String;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 7
    .param p1, "newFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "oldMeta"    # Lcom/sleepycat/persist/model/FieldMetadata;
    .param p3, "newMeta"    # Lcom/sleepycat/persist/model/FieldMetadata;
    .param p4, "keyLabel"    # Ljava/lang/String;
    .param p5, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 1288
    invoke-virtual {p2}, Lcom/sleepycat/persist/model/FieldMetadata;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "oldClass":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/sleepycat/persist/model/FieldMetadata;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1290
    .local v1, "newClass":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1291
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getCatalog()Lcom/sleepycat/persist/impl/Catalog;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v2

    .line 1292
    .local v2, "oldType":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getCatalog()Lcom/sleepycat/persist/impl/Catalog;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    .line 1293
    .local v3, "newType":Lcom/sleepycat/persist/impl/Format;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 1294
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1295
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v4

    .line 1296
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 1297
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1298
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v4

    .line 1299
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 1300
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type change detected for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old field type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not compatible with the new type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1306
    invoke-virtual {p2}, Lcom/sleepycat/persist/model/FieldMetadata;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1307
    invoke-virtual {p3}, Lcom/sleepycat/persist/model/FieldMetadata;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1301
    invoke-virtual {p5, p0, p1, v4, v5}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const/4 v4, 0x0

    return v4

    .line 1311
    .end local v2    # "oldType":Lcom/sleepycat/persist/impl/Format;
    .end local v3    # "newType":Lcom/sleepycat/persist/impl/Format;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private checkNewSecKeyInitializer(Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)V
    .locals 7
    .param p1, "secKeyMeta"    # Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 535
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_2

    .line 543
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyAddresses:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;

    .line 547
    .local v0, "addr":Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    invoke-interface {v1}, Lcom/sleepycat/persist/impl/Accessor;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 548
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    iget v3, v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->fieldNum:I

    iget v4, v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->superLevel:I

    iget-boolean v5, v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->isSecField:Z

    .line 549
    invoke-interface {v2, v1, v3, v4, v5}, Lcom/sleepycat/persist/impl/Accessor;->getField(Ljava/lang/Object;IIZ)Ljava/lang/Object;

    move-result-object v2

    .line 550
    .local v2, "val":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 551
    iget-object v3, v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v3

    const-string v4, " field: "

    if-eqz v3, :cond_1

    .line 552
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "For a new secondary key field the field type must not be a primitive -- class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 555
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 556
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 558
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "For a new secondary key field the default constructor must not initialize the field to a non-null value -- class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 562
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 563
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 567
    .end local v0    # "addr":Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "val":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private checkSecKeyMetadata(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 3
    .param p1, "newFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "oldMeta"    # Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .param p3, "newMeta"    # Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .param p4, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 1265
    invoke-virtual {p2}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelationship()Lcom/sleepycat/persist/model/Relationship;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelationship()Lcom/sleepycat/persist/model/Relationship;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Old key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1270
    invoke-virtual {p2}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " relate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1271
    invoke-virtual {p2}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelationship()Lcom/sleepycat/persist/model/Relationship;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1272
    invoke-virtual {p3}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1273
    invoke-virtual {p3}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelationship()Lcom/sleepycat/persist/model/Relationship;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1267
    const-string v1, "Change detected in the relate attribute (Relationship) of a secondary key"

    invoke-virtual {p4, p0, p1, v1, v0}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const/4 v0, 0x0

    return v0

    .line 1276
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private copyIncorrectlyOrderedSecKeys(Lcom/sleepycat/persist/impl/ComplexFormat;)V
    .locals 2
    .param p1, "newFormat"    # Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 2294
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 2295
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p1, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    .line 2300
    :cond_1
    return-void
.end method

.method private evolveAllFields(Lcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/Evolver;)I
    .locals 13
    .param p1, "newFormat"    # Lcom/sleepycat/persist/impl/ComplexFormat;
    .param p2, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 1347
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    .line 1349
    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    .line 1350
    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    .line 1353
    const/4 v0, 0x0

    .line 1354
    .local v0, "evolveFailure":Z
    const/4 v1, 0x0

    .line 1355
    .local v1, "localEvolveNeeded":Z
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    .line 1356
    iget-object v5, p1, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1357
    invoke-virtual {p2, p0, p1, v2, v5}, Lcom/sleepycat/persist/impl/Evolver;->evolveRequiredKeyField(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/FieldInfo;)I

    move-result v2

    .line 1358
    .local v2, "result":I
    if-ne v2, v4, :cond_0

    .line 1359
    const/4 v0, 0x1

    goto :goto_0

    .line 1360
    :cond_0
    if-ne v2, v3, :cond_1

    .line 1361
    const/4 v1, 0x1

    .line 1366
    .end local v2    # "result":I
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/ComplexFormat;->copyIncorrectlyOrderedSecKeys(Lcom/sleepycat/persist/impl/ComplexFormat;)V

    .line 1369
    iget-object v6, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    iget-object v7, p1, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    const/4 v8, 0x1

    iget-object v9, p1, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    .line 1370
    move-object v5, p0

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/sleepycat/persist/impl/ComplexFormat;->evolveFieldList(Ljava/util/List;Ljava/util/List;ZLjava/util/List;Lcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/Evolver;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    move-result-object v2

    .line 1372
    .local v2, "reader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    sget-object v5, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->EVOLVE_FAILURE:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    if-ne v2, v5, :cond_2

    .line 1373
    const/4 v0, 0x1

    goto :goto_1

    .line 1374
    :cond_2
    if-eqz v2, :cond_3

    .line 1375
    const/4 v1, 0x1

    .line 1377
    :cond_3
    :goto_1
    sget-object v5, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->EVOLVE_NEEDED:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    if-eq v2, v5, :cond_4

    .line 1378
    iput-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    .line 1382
    :cond_4
    iget-object v7, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    iget-object v8, p1, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    .line 1383
    move-object v6, p0

    move-object v11, p1

    move-object v12, p2

    invoke-direct/range {v6 .. v12}, Lcom/sleepycat/persist/impl/ComplexFormat;->evolveFieldList(Ljava/util/List;Ljava/util/List;ZLjava/util/List;Lcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/Evolver;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    move-result-object v2

    .line 1385
    sget-object v5, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->EVOLVE_FAILURE:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    if-ne v2, v5, :cond_5

    .line 1386
    const/4 v0, 0x1

    goto :goto_2

    .line 1387
    :cond_5
    if-eqz v2, :cond_6

    .line 1388
    const/4 v1, 0x1

    .line 1390
    :cond_6
    :goto_2
    sget-object v5, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->EVOLVE_NEEDED:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    if-eq v2, v5, :cond_7

    .line 1391
    iput-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    .line 1395
    :cond_7
    if-eqz v0, :cond_8

    .line 1396
    return v4

    .line 1397
    :cond_8
    if-eqz v1, :cond_9

    .line 1398
    return v3

    .line 1400
    :cond_9
    const/4 v3, 0x0

    return v3

    .line 1347
    .end local v0    # "evolveFailure":Z
    .end local v1    # "localEvolveNeeded":Z
    .end local v2    # "reader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private evolveDeletedClass(Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 4
    .param p1, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 1319
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1320
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1336
    :cond_0
    return v1

    .line 1321
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1322
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1323
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Primary key is needed in an entity class hierarchy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1328
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    const-string v1, "Class containing primary key field was deleted "

    invoke-virtual {p1, p0, p0, v1, v0}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    return v2

    .line 1331
    :cond_2
    new-instance v0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;

    iget-object v3, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    .line 1332
    new-instance v0, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;

    iget-object v3, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFieldReader:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    .line 1333
    return v1

    .line 1319
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private evolveFieldList(Ljava/util/List;Ljava/util/List;ZLjava/util/List;Lcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/Evolver;)Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .locals 32
    .param p3, "isOldSecKeyField"    # Z
    .param p5, "newFormat"    # Lcom/sleepycat/persist/impl/ComplexFormat;
    .param p6, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;",
            "Lcom/sleepycat/persist/impl/ComplexFormat;",
            "Lcom/sleepycat/persist/impl/Evolver;",
            ")",
            "Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;"
        }
    .end annotation

    .line 1429
    .local p1, "oldFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    .local p2, "newFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    .local p4, "otherNewFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/persist/impl/Evolver;->getMutations()Lcom/sleepycat/persist/evolve/Mutations;

    move-result-object v6

    .line 1430
    .local v6, "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    const/4 v7, 0x0

    .line 1431
    .local v7, "evolveFailure":Z
    const/4 v8, 0x0

    .line 1432
    .local v8, "localEvolveNeeded":Z
    const/4 v9, 0x0

    .line 1433
    .local v9, "readerNeeded":Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1434
    .local v10, "fieldReaders":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;>;"
    const/4 v11, 0x0

    .line 1435
    .local v11, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    const/4 v12, 0x0

    .line 1442
    .local v12, "newFieldsMatched":I
    const/4 v13, 0x0

    .line 1443
    .local v13, "oldFieldIndex":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2a

    .line 1446
    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1447
    .local v15, "oldField":Lcom/sleepycat/persist/impl/FieldInfo;
    move/from16 v16, v8

    .end local v8    # "localEvolveNeeded":Z
    .local v16, "localEvolveNeeded":Z
    invoke-virtual {v15}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1448
    .local v8, "oldName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1449
    .local v18, "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    if-eqz v2, :cond_1

    .line 1450
    move/from16 v19, v9

    .end local v9    # "readerNeeded":Z
    .local v19, "readerNeeded":Z
    iget-object v9, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

    .line 1451
    invoke-virtual {v9}, Lcom/sleepycat/persist/model/ClassMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/sleepycat/persist/impl/ComplexFormat;->getSecondaryKeyMetadataByFieldName(Ljava/util/Map;Ljava/lang/String;)Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    move-result-object v18

    .line 1452
    if-eqz v18, :cond_0

    .line 1456
    move-object/from16 v9, v18

    goto :goto_1

    .line 1452
    :cond_0
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1449
    .end local v19    # "readerNeeded":Z
    .restart local v9    # "readerNeeded":Z
    :cond_1
    move/from16 v19, v9

    .end local v9    # "readerNeeded":Z
    .restart local v19    # "readerNeeded":Z
    move-object/from16 v9, v18

    .line 1456
    .end local v18    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v9, "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    :goto_1
    nop

    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v14

    move/from16 v18, v7

    .end local v7    # "evolveFailure":Z
    .local v18, "evolveFailure":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getVersion()I

    move-result v7

    invoke-virtual {v6, v14, v7, v8}, Lcom/sleepycat/persist/evolve/Mutations;->getRenamer(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Renamer;

    move-result-object v7

    .line 1458
    .local v7, "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    nop

    .line 1459
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v14

    move/from16 v20, v12

    .end local v12    # "newFieldsMatched":I
    .local v20, "newFieldsMatched":I
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getVersion()I

    move-result v12

    invoke-virtual {v6, v14, v12, v8}, Lcom/sleepycat/persist/evolve/Mutations;->getDeleter(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Deleter;

    move-result-object v12

    .line 1460
    .local v12, "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    nop

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v9

    .end local v9    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v21, "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getVersion()I

    move-result v9

    invoke-virtual {v6, v14, v9, v8}, Lcom/sleepycat/persist/evolve/Mutations;->getConverter(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Converter;

    move-result-object v9

    .line 1462
    .local v9, "converter":Lcom/sleepycat/persist/evolve/Converter;
    if-eqz v12, :cond_4

    if-nez v9, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v22, v6

    goto :goto_3

    .line 1463
    :cond_3
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v6

    .end local v6    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .local v22, "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    const-string v6, "Field Deleter is not allowed along with a Renamer or Converter for the same field: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1464
    invoke-virtual {v5, v0, v4, v12, v6}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 1467
    const/4 v6, 0x1

    .line 1468
    .end local v18    # "evolveFailure":Z
    .local v6, "evolveFailure":Z
    move v7, v6

    move/from16 v8, v16

    move/from16 v9, v19

    move/from16 v12, v20

    goto/16 :goto_10

    .line 1462
    .end local v22    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .local v6, "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .restart local v18    # "evolveFailure":Z
    :cond_4
    move-object/from16 v22, v6

    .line 1477
    .end local v6    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .restart local v22    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    :goto_3
    if-eqz v7, :cond_5

    .line 1478
    invoke-virtual {v7}, Lcom/sleepycat/persist/evolve/Renamer;->getNewName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object v6, v8

    .line 1479
    .local v6, "newName":Ljava/lang/String;
    :goto_4
    const/4 v14, 0x0

    .line 1480
    .local v14, "nameChanged":Z
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 1481
    move-object/from16 v23, v7

    .end local v7    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .local v23, "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    iget-object v7, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->newToOldFieldMap:Ljava/util/Map;

    if-nez v7, :cond_6

    .line 1482
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->newToOldFieldMap:Ljava/util/Map;

    .line 1484
    :cond_6
    iget-object v7, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->newToOldFieldMap:Ljava/util/Map;

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    const/4 v14, 0x1

    goto :goto_5

    .line 1480
    .end local v23    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .restart local v7    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    :cond_7
    move-object/from16 v23, v7

    .line 1487
    .end local v7    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .restart local v23    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    :goto_5
    invoke-static {v1, v6}, Lcom/sleepycat/persist/impl/FieldInfo;->getFieldIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v7

    .line 1488
    .local v7, "newFieldIndex":I
    const/16 v24, 0x0

    .line 1489
    .local v24, "newField":Lcom/sleepycat/persist/impl/FieldInfo;
    move/from16 v25, p3

    .line 1490
    .local v25, "isNewSecKeyField":Z
    if-ltz v7, :cond_a

    .line 1491
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v24, v26

    check-cast v24, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1497
    if-eqz v14, :cond_8

    iget-object v1, v4, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    if-eqz v1, :cond_8

    .line 1499
    invoke-interface {v1, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1500
    iget-object v1, v4, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1507
    :cond_8
    if-eq v7, v13, :cond_9

    .line 1508
    const/4 v1, 0x1

    .line 1509
    .end local v16    # "localEvolveNeeded":Z
    .local v1, "localEvolveNeeded":Z
    const/16 v16, 0x1

    move/from16 v26, v1

    move/from16 v1, v25

    .end local v19    # "readerNeeded":Z
    .local v16, "readerNeeded":Z
    goto :goto_6

    .line 1507
    .end local v1    # "localEvolveNeeded":Z
    .local v16, "localEvolveNeeded":Z
    .restart local v19    # "readerNeeded":Z
    :cond_9
    move/from16 v26, v16

    move/from16 v16, v19

    move/from16 v1, v25

    goto :goto_6

    .line 1512
    :cond_a
    nop

    .line 1513
    invoke-static {v3, v6}, Lcom/sleepycat/persist/impl/FieldInfo;->getFieldIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v7

    .line 1514
    if-ltz v7, :cond_b

    .line 1515
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1516
    xor-int/lit8 v1, v2, 0x1

    move/from16 v25, v1

    .line 1518
    :cond_b
    const/4 v1, 0x1

    .line 1519
    .end local v16    # "localEvolveNeeded":Z
    .restart local v1    # "localEvolveNeeded":Z
    const/16 v16, 0x1

    .line 1525
    .end local v19    # "readerNeeded":Z
    .local v16, "readerNeeded":Z
    move/from16 v26, v1

    .end local v1    # "localEvolveNeeded":Z
    .local v26, "localEvolveNeeded":Z
    iget-object v1, v4, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    if-eqz v1, :cond_c

    .line 1526
    invoke-interface {v1, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1531
    :cond_c
    move/from16 v1, v25

    .end local v25    # "isNewSecKeyField":Z
    .local v1, "isNewSecKeyField":Z
    :goto_6
    if-eqz v12, :cond_11

    .line 1532
    if-eqz v24, :cond_d

    .line 1533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v14

    .end local v14    # "nameChanged":Z
    .local v25, "nameChanged":Z
    const-string v14, "Field Deleter is not allowed when the persistent field is still present: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1534
    invoke-virtual {v5, v0, v4, v12, v3}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 1537
    const/4 v3, 0x1

    move/from16 v18, v3

    .end local v18    # "evolveFailure":Z
    .local v3, "evolveFailure":Z
    goto :goto_7

    .line 1532
    .end local v3    # "evolveFailure":Z
    .end local v25    # "nameChanged":Z
    .restart local v14    # "nameChanged":Z
    .restart local v18    # "evolveFailure":Z
    :cond_d
    move/from16 v25, v14

    .line 1540
    .end local v14    # "nameChanged":Z
    .restart local v25    # "nameChanged":Z
    :goto_7
    instance-of v3, v11, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;

    if-eqz v3, :cond_e

    .line 1542
    invoke-virtual {v11, v13, v7, v1}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->acceptField(IIZ)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1543
    invoke-virtual {v11, v15}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->addField(Lcom/sleepycat/persist/impl/FieldInfo;)V

    goto :goto_8

    .line 1545
    :cond_e
    new-instance v3, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;

    invoke-direct {v3, v13, v15}, Lcom/sleepycat/persist/impl/ComplexFormat$SkipFieldReader;-><init>(ILcom/sleepycat/persist/impl/FieldInfo;)V

    move-object v11, v3

    .line 1547
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    const/16 v16, 0x1

    .line 1549
    const/16 v26, 0x1

    .line 1551
    :goto_8
    if-eqz v2, :cond_10

    .line 1552
    iget-object v3, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    if-nez v3, :cond_f

    .line 1553
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    .line 1555
    :cond_f
    iget-object v3, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v11

    const/4 v11, 0x0

    .end local v11    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v19, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    invoke-interface {v3, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1551
    .end local v19    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .restart local v11    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    :cond_10
    move-object/from16 v19, v11

    .line 1444
    .end local v1    # "isNewSecKeyField":Z
    .end local v6    # "newName":Ljava/lang/String;
    .end local v7    # "newFieldIndex":I
    .end local v8    # "oldName":Ljava/lang/String;
    .end local v9    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .end local v11    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .end local v12    # "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .end local v15    # "oldField":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v21    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v23    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .end local v24    # "newField":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v25    # "nameChanged":Z
    .restart local v19    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    :goto_9
    move/from16 v9, v16

    move/from16 v7, v18

    move-object/from16 v11, v19

    move/from16 v12, v20

    move/from16 v8, v26

    goto/16 :goto_10

    .line 1559
    .end local v19    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .restart local v1    # "isNewSecKeyField":Z
    .restart local v6    # "newName":Ljava/lang/String;
    .restart local v7    # "newFieldIndex":I
    .restart local v8    # "oldName":Ljava/lang/String;
    .restart local v9    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .restart local v11    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .restart local v12    # "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .restart local v14    # "nameChanged":Z
    .restart local v15    # "oldField":Lcom/sleepycat/persist/impl/FieldInfo;
    .restart local v21    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v23    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .restart local v24    # "newField":Lcom/sleepycat/persist/impl/FieldInfo;
    :cond_11
    move/from16 v25, v14

    .end local v14    # "nameChanged":Z
    .restart local v25    # "nameChanged":Z
    if-nez v24, :cond_12

    .line 1560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Field is not present or not persistent: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1561
    invoke-virtual {v5, v0, v4, v3}, Lcom/sleepycat/persist/impl/Evolver;->addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V

    .line 1564
    const/4 v3, 0x1

    .line 1565
    .end local v18    # "evolveFailure":Z
    .restart local v3    # "evolveFailure":Z
    move v7, v3

    move/from16 v9, v16

    move/from16 v12, v20

    move/from16 v8, v26

    goto/16 :goto_10

    .line 1573
    .end local v3    # "evolveFailure":Z
    .restart local v18    # "evolveFailure":Z
    :cond_12
    add-int/lit8 v3, v20, 0x1

    .line 1576
    .end local v20    # "newFieldsMatched":I
    .local v3, "newFieldsMatched":I
    const/4 v14, 0x0

    .line 1577
    .local v14, "newMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    .line 1578
    move/from16 v19, v3

    .end local v3    # "newFieldsMatched":I
    .local v19, "newFieldsMatched":I
    iget-object v3, v4, Lcom/sleepycat/persist/impl/ComplexFormat;->clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

    .line 1579
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/ClassMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/sleepycat/persist/impl/ComplexFormat;->getSecondaryKeyMetadataByFieldName(Ljava/util/Map;Ljava/lang/String;)Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    move-result-object v14

    .line 1580
    if-eqz v14, :cond_16

    .line 1583
    nop

    .line 1584
    move-object/from16 v3, v21

    .end local v21    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v3, "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-direct {v0, v4, v3, v14, v5}, Lcom/sleepycat/persist/impl/ComplexFormat;->checkSecKeyMetadata(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Lcom/sleepycat/persist/impl/Evolver;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 1585
    const/16 v17, 0x1

    .line 1586
    .end local v18    # "evolveFailure":Z
    .local v17, "evolveFailure":Z
    move/from16 v9, v16

    move/from16 v7, v17

    move/from16 v12, v19

    move/from16 v8, v26

    goto/16 :goto_10

    .line 1594
    .end local v17    # "evolveFailure":Z
    .restart local v18    # "evolveFailure":Z
    :cond_13
    move-object/from16 v21, v12

    .end local v12    # "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .local v21, "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v12

    .line 1595
    .local v12, "oldKeyName":Ljava/lang/String;
    move-object/from16 v27, v11

    .end local v11    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v27, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    invoke-virtual {v14}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v11

    .line 1596
    .local v11, "newKeyName":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_15

    .line 1597
    move-object/from16 v17, v11

    .end local v11    # "newKeyName":Ljava/lang/String;
    .local v17, "newKeyName":Ljava/lang/String;
    iget-object v11, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    if-nez v11, :cond_14

    .line 1598
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    .line 1600
    :cond_14
    iget-object v11, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    invoke-interface {v11, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    const/4 v11, 0x1

    move/from16 v26, v11

    .end local v26    # "localEvolveNeeded":Z
    .local v11, "localEvolveNeeded":Z
    goto :goto_a

    .line 1596
    .end local v17    # "newKeyName":Ljava/lang/String;
    .local v11, "newKeyName":Ljava/lang/String;
    .restart local v26    # "localEvolveNeeded":Z
    :cond_15
    move-object/from16 v17, v11

    .line 1603
    .end local v11    # "newKeyName":Ljava/lang/String;
    .end local v12    # "oldKeyName":Ljava/lang/String;
    :goto_a
    move-object/from16 v20, v3

    goto :goto_b

    .line 1580
    .end local v3    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v11, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v12, "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .local v21, "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    :cond_16
    move-object/from16 v27, v11

    .end local v11    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .restart local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 1577
    .end local v19    # "newFieldsMatched":I
    .end local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v3, "newFieldsMatched":I
    .restart local v11    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    :cond_17
    move/from16 v19, v3

    move-object/from16 v27, v11

    move-object/from16 v3, v21

    move-object/from16 v21, v12

    .line 1603
    .end local v11    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .end local v12    # "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .local v3, "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v19    # "newFieldsMatched":I
    .local v21, "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .restart local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    if-eqz v2, :cond_19

    if-nez v1, :cond_19

    .line 1604
    iget-object v11, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    if-nez v11, :cond_18

    .line 1605
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    .line 1607
    :cond_18
    iget-object v11, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v20, "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-interface {v11, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1603
    .end local v20    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v3    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    :cond_19
    move-object/from16 v20, v3

    .line 1611
    .end local v3    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v20    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    :goto_b
    if-eqz v9, :cond_1b

    .line 1612
    if-eqz v2, :cond_1a

    .line 1613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Field Converter is not allowed for secondary key fields: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1614
    invoke-virtual {v5, v0, v4, v9, v3}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 1617
    const/4 v3, 0x1

    move v7, v3

    move/from16 v9, v16

    move/from16 v12, v19

    move/from16 v8, v26

    move-object/from16 v11, v27

    .end local v18    # "evolveFailure":Z
    .local v3, "evolveFailure":Z
    goto/16 :goto_10

    .line 1619
    .end local v3    # "evolveFailure":Z
    .restart local v18    # "evolveFailure":Z
    :cond_1a
    new-instance v3, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;

    invoke-direct {v3, v9, v13, v7, v1}, Lcom/sleepycat/persist/impl/ComplexFormat$ConvertFieldReader;-><init>(Lcom/sleepycat/persist/evolve/Converter;IIZ)V

    .line 1622
    .end local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v3, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    const/4 v11, 0x1

    .line 1624
    .end local v16    # "readerNeeded":Z
    .local v11, "readerNeeded":Z
    const/4 v12, 0x1

    .line 1626
    .end local v26    # "localEvolveNeeded":Z
    .local v12, "localEvolveNeeded":Z
    move v9, v11

    move v8, v12

    move/from16 v7, v18

    move/from16 v12, v19

    move-object v11, v3

    goto/16 :goto_10

    .line 1634
    .end local v3    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .end local v11    # "readerNeeded":Z
    .end local v12    # "localEvolveNeeded":Z
    .restart local v16    # "readerNeeded":Z
    .restart local v26    # "localEvolveNeeded":Z
    .restart local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    :cond_1b
    const/4 v3, 0x1

    .line 1635
    .local v3, "allClassesConverted":Z
    invoke-virtual {v15}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v11

    .line 1636
    .local v11, "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v12

    .line 1639
    .local v12, "formatVersion":Lcom/sleepycat/persist/impl/Format;
    :goto_c
    if-eqz v12, :cond_29

    .line 1640
    invoke-virtual {v5, v12}, Lcom/sleepycat/persist/impl/Evolver;->evolveFormat(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v17

    if-nez v17, :cond_1c

    .line 1641
    const/16 v17, 0x1

    .line 1642
    .end local v18    # "evolveFailure":Z
    .local v17, "evolveFailure":Z
    move/from16 v9, v16

    move/from16 v7, v17

    move/from16 v12, v19

    move/from16 v8, v26

    move-object/from16 v11, v27

    goto/16 :goto_10

    .line 1644
    .end local v17    # "evolveFailure":Z
    .restart local v18    # "evolveFailure":Z
    :cond_1c
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/Format;->isNew()Z

    move-result v17

    if-nez v17, :cond_1d

    .line 1645
    invoke-virtual {v5, v12}, Lcom/sleepycat/persist/impl/Evolver;->isClassConverted(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v17

    if-nez v17, :cond_1d

    .line 1646
    const/4 v3, 0x0

    .line 1648
    :cond_1d
    nop

    .line 1649
    invoke-virtual {v5, v12}, Lcom/sleepycat/persist/impl/Evolver;->getSubclassFormats(Lcom/sleepycat/persist/impl/Format;)Ljava/util/Set;

    move-result-object v17

    .line 1650
    .local v17, "subclassFormats":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/persist/impl/Format;>;"
    if-eqz v17, :cond_21

    .line 1651
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_d
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_20

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move/from16 v30, v3

    .end local v3    # "allClassesConverted":Z
    .local v30, "allClassesConverted":Z
    move-object/from16 v3, v29

    check-cast v3, Lcom/sleepycat/persist/impl/Format;

    .line 1652
    .local v3, "format2":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v5, v3}, Lcom/sleepycat/persist/impl/Evolver;->evolveFormat(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v29

    if-nez v29, :cond_1e

    .line 1653
    const/16 v18, 0x1

    .line 1654
    move/from16 v9, v16

    move/from16 v7, v18

    move/from16 v12, v19

    move/from16 v8, v26

    move-object/from16 v11, v27

    goto/16 :goto_10

    .line 1656
    :cond_1e
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->isNew()Z

    move-result v29

    if-nez v29, :cond_1f

    .line 1657
    invoke-virtual {v5, v3}, Lcom/sleepycat/persist/impl/Evolver;->isClassConverted(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v29

    if-nez v29, :cond_1f

    .line 1658
    const/16 v29, 0x0

    move/from16 v3, v29

    .end local v30    # "allClassesConverted":Z
    .local v29, "allClassesConverted":Z
    goto :goto_e

    .line 1660
    .end local v3    # "format2":Lcom/sleepycat/persist/impl/Format;
    .end local v29    # "allClassesConverted":Z
    .restart local v30    # "allClassesConverted":Z
    :cond_1f
    move/from16 v3, v30

    .end local v30    # "allClassesConverted":Z
    .local v3, "allClassesConverted":Z
    :goto_e
    goto :goto_d

    .line 1651
    :cond_20
    move/from16 v30, v3

    .line 1662
    :cond_21
    if-ne v12, v11, :cond_28

    .line 1663
    nop

    .line 1672
    .end local v12    # "formatVersion":Lcom/sleepycat/persist/impl/Format;
    .end local v17    # "subclassFormats":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/persist/impl/Format;>;"
    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v12

    .line 1673
    .local v12, "oldLatestFormat":Lcom/sleepycat/persist/impl/Format;
    move-object/from16 v28, v6

    .end local v6    # "newName":Ljava/lang/String;
    .local v28, "newName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v6

    .line 1674
    .local v6, "newFieldFormat":Lcom/sleepycat/persist/impl/Format;
    move-object/from16 v29, v9

    .end local v9    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .local v29, "converter":Lcom/sleepycat/persist/evolve/Converter;
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 1675
    move-object/from16 v30, v11

    .end local v11    # "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    .local v30, "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v6}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 1676
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/Format;->isDeleted()Z

    move-result v9

    if-nez v9, :cond_22

    goto :goto_f

    .line 1678
    :cond_22
    if-eqz v3, :cond_23

    .line 1680
    const/16 v26, 0x1

    goto :goto_f

    .line 1681
    :cond_23
    nop

    .line 1682
    invoke-static {v12, v6, v2}, Lcom/sleepycat/persist/impl/WidenerInput;->isWideningSupported(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Z)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1684
    new-instance v9, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;

    invoke-direct {v9, v12, v6, v7, v1}, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;-><init>(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;IZ)V

    .line 1687
    .end local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v9, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1688
    const/4 v11, 0x1

    .line 1689
    .end local v16    # "readerNeeded":Z
    .local v11, "readerNeeded":Z
    const/16 v16, 0x1

    .line 1690
    .end local v26    # "localEvolveNeeded":Z
    .local v16, "localEvolveNeeded":Z
    move/from16 v8, v16

    move/from16 v7, v18

    move/from16 v12, v19

    move/from16 v31, v11

    move-object v11, v9

    move/from16 v9, v31

    goto/16 :goto_10

    .line 1692
    .end local v9    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .end local v11    # "readerNeeded":Z
    .local v16, "readerNeeded":Z
    .restart local v26    # "localEvolveNeeded":Z
    .restart local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    :cond_24
    const/4 v9, 0x0

    .line 1693
    .local v9, "refWidened":Z
    invoke-virtual {v6}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v11

    if-nez v11, :cond_25

    .line 1694
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v11

    if-nez v11, :cond_25

    .line 1695
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/Format;->isDeleted()Z

    move-result v11

    if-nez v11, :cond_25

    .line 1696
    invoke-virtual {v5, v12}, Lcom/sleepycat/persist/impl/Evolver;->isClassConverted(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v11

    if-nez v11, :cond_25

    .line 1697
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/Format;->getExistingType()Ljava/lang/Class;

    move-result-object v11

    .line 1698
    .local v11, "oldCls":Ljava/lang/Class;
    invoke-virtual {v6}, Lcom/sleepycat/persist/impl/Format;->getExistingType()Ljava/lang/Class;

    move-result-object v2

    .line 1699
    .local v2, "newCls":Ljava/lang/Class;
    invoke-virtual {v2, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 1700
    const/4 v9, 0x1

    .line 1703
    .end local v2    # "newCls":Ljava/lang/Class;
    .end local v11    # "oldCls":Ljava/lang/Class;
    :cond_25
    if-eqz v9, :cond_27

    .line 1705
    const/16 v26, 0x1

    .line 1724
    .end local v9    # "refWidened":Z
    :goto_f
    move-object/from16 v11, v27

    .end local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v11, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    instance-of v2, v11, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;

    if-eqz v2, :cond_26

    .line 1726
    invoke-virtual {v11, v13, v7, v1}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->acceptField(IIZ)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1727
    invoke-virtual {v11, v15}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->addField(Lcom/sleepycat/persist/impl/FieldInfo;)V

    move/from16 v9, v16

    move/from16 v7, v18

    move/from16 v12, v19

    move/from16 v8, v26

    goto :goto_10

    .line 1729
    :cond_26
    new-instance v2, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;

    invoke-direct {v2, v13, v7, v1}, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;-><init>(IIZ)V

    .line 1731
    .end local v11    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v2, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v11, v2

    move/from16 v9, v16

    move/from16 v7, v18

    move/from16 v12, v19

    move/from16 v8, v26

    goto :goto_10

    .line 1708
    .end local v2    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .restart local v9    # "refWidened":Z
    .restart local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    :cond_27
    move-object/from16 v11, v27

    .end local v27    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .restart local v11    # "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v1

    .end local v1    # "isNewSecKeyField":Z
    .local v27, "isNewSecKeyField":Z
    const-string v1, "Old field type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1710
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not compatible with the new type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1712
    invoke-virtual {v6}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1709
    invoke-virtual {v5, v0, v4, v1}, Lcom/sleepycat/persist/impl/Evolver;->addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V

    .line 1714
    const/4 v1, 0x1

    .line 1715
    .end local v18    # "evolveFailure":Z
    .local v1, "evolveFailure":Z
    move v7, v1

    move/from16 v9, v16

    move/from16 v12, v19

    move/from16 v8, v26

    .line 1444
    .end local v1    # "evolveFailure":Z
    .end local v3    # "allClassesConverted":Z
    .end local v6    # "newFieldFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v14    # "newMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v15    # "oldField":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v16    # "readerNeeded":Z
    .end local v19    # "newFieldsMatched":I
    .end local v20    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v21    # "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .end local v23    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .end local v24    # "newField":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v25    # "nameChanged":Z
    .end local v26    # "localEvolveNeeded":Z
    .end local v27    # "isNewSecKeyField":Z
    .end local v28    # "newName":Ljava/lang/String;
    .end local v29    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .end local v30    # "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    .local v7, "evolveFailure":Z
    .local v8, "localEvolveNeeded":Z
    .local v9, "readerNeeded":Z
    .local v12, "newFieldsMatched":I
    :goto_10
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v6, v22

    goto/16 :goto_0

    .line 1662
    .local v1, "isNewSecKeyField":Z
    .restart local v3    # "allClassesConverted":Z
    .local v6, "newName":Ljava/lang/String;
    .local v7, "newFieldIndex":I
    .local v8, "oldName":Ljava/lang/String;
    .local v9, "converter":Lcom/sleepycat/persist/evolve/Converter;
    .local v11, "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    .local v12, "formatVersion":Lcom/sleepycat/persist/impl/Format;
    .restart local v14    # "newMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v15    # "oldField":Lcom/sleepycat/persist/impl/FieldInfo;
    .restart local v16    # "readerNeeded":Z
    .restart local v17    # "subclassFormats":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/persist/impl/Format;>;"
    .restart local v18    # "evolveFailure":Z
    .restart local v19    # "newFieldsMatched":I
    .restart local v20    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v21    # "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .restart local v23    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .restart local v24    # "newField":Lcom/sleepycat/persist/impl/FieldInfo;
    .restart local v25    # "nameChanged":Z
    .restart local v26    # "localEvolveNeeded":Z
    .local v27, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    :cond_28
    move-object/from16 v28, v6

    move-object/from16 v29, v9

    move-object/from16 v30, v11

    move-object/from16 v11, v27

    move/from16 v27, v1

    .line 1638
    .end local v1    # "isNewSecKeyField":Z
    .end local v6    # "newName":Ljava/lang/String;
    .end local v9    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .end local v17    # "subclassFormats":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/persist/impl/Format;>;"
    .local v11, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v27, "isNewSecKeyField":Z
    .restart local v28    # "newName":Ljava/lang/String;
    .restart local v29    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .restart local v30    # "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/Format;->getPreviousVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v12

    move/from16 v2, p3

    move-object/from16 v27, v11

    move-object/from16 v11, v30

    goto/16 :goto_c

    .line 1639
    .end local v28    # "newName":Ljava/lang/String;
    .end local v29    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .end local v30    # "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    .restart local v1    # "isNewSecKeyField":Z
    .restart local v6    # "newName":Ljava/lang/String;
    .restart local v9    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    .local v11, "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    .local v27, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    :cond_29
    move-object/from16 v30, v11

    move-object/from16 v11, v27

    move/from16 v27, v1

    .end local v1    # "isNewSecKeyField":Z
    .local v11, "currentReader":Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .local v27, "isNewSecKeyField":Z
    .restart local v30    # "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1443
    .end local v3    # "allClassesConverted":Z
    .end local v14    # "newMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v15    # "oldField":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v16    # "readerNeeded":Z
    .end local v18    # "evolveFailure":Z
    .end local v19    # "newFieldsMatched":I
    .end local v20    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v21    # "deleter":Lcom/sleepycat/persist/evolve/Deleter;
    .end local v22    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .end local v23    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .end local v24    # "newField":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v25    # "nameChanged":Z
    .end local v26    # "localEvolveNeeded":Z
    .end local v27    # "isNewSecKeyField":Z
    .end local v30    # "oldFieldFormat":Lcom/sleepycat/persist/impl/Format;
    .local v6, "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .local v7, "evolveFailure":Z
    .local v8, "localEvolveNeeded":Z
    .local v9, "readerNeeded":Z
    .local v12, "newFieldsMatched":I
    :cond_2a
    move-object/from16 v22, v6

    move/from16 v18, v7

    move/from16 v16, v8

    move/from16 v19, v9

    move/from16 v20, v12

    .line 1742
    .end local v6    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .end local v7    # "evolveFailure":Z
    .end local v8    # "localEvolveNeeded":Z
    .end local v9    # "readerNeeded":Z
    .end local v12    # "newFieldsMatched":I
    .end local v13    # "oldFieldIndex":I
    .local v16, "localEvolveNeeded":Z
    .restart local v18    # "evolveFailure":Z
    .local v19, "readerNeeded":Z
    .local v20, "newFieldsMatched":I
    .restart local v22    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    .end local v20    # "newFieldsMatched":I
    .restart local v12    # "newFieldsMatched":I
    if-ge v12, v1, :cond_2b

    .line 1743
    const/4 v8, 0x1

    .line 1744
    .end local v16    # "localEvolveNeeded":Z
    .restart local v8    # "localEvolveNeeded":Z
    const/4 v9, 0x1

    .end local v19    # "readerNeeded":Z
    .restart local v9    # "readerNeeded":Z
    goto :goto_11

    .line 1742
    .end local v8    # "localEvolveNeeded":Z
    .end local v9    # "readerNeeded":Z
    .restart local v16    # "localEvolveNeeded":Z
    .restart local v19    # "readerNeeded":Z
    :cond_2b
    move/from16 v8, v16

    move/from16 v9, v19

    .line 1747
    .end local v16    # "localEvolveNeeded":Z
    .end local v19    # "readerNeeded":Z
    .restart local v8    # "localEvolveNeeded":Z
    .restart local v9    # "readerNeeded":Z
    :goto_11
    if-eqz v18, :cond_2c

    .line 1748
    sget-object v1, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->EVOLVE_FAILURE:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    return-object v1

    .line 1749
    :cond_2c
    if-eqz v9, :cond_2f

    .line 1750
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2d

    .line 1751
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getDoNothingFieldReader()Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    move-result-object v1

    return-object v1

    .line 1752
    :cond_2d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    .line 1753
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    return-object v1

    .line 1755
    :cond_2e
    new-instance v1, Lcom/sleepycat/persist/impl/ComplexFormat$MultiFieldReader;

    invoke-direct {v1, v10}, Lcom/sleepycat/persist/impl/ComplexFormat$MultiFieldReader;-><init>(Ljava/util/List;)V

    return-object v1

    .line 1757
    :cond_2f
    if-eqz v8, :cond_30

    .line 1758
    sget-object v1, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->EVOLVE_NEEDED:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    return-object v1

    .line 1760
    :cond_30
    const/4 v1, 0x0

    return-object v1
.end method

.method private getComplexLatest()Lcom/sleepycat/persist/impl/ComplexFormat;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/ComplexFormat;

    return-object v0
.end method

.method private getDoNothingFieldReader()Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
    .locals 2

    .line 1412
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1413
    .local v0, "emptyList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;>;"
    new-instance v1, Lcom/sleepycat/persist/impl/ComplexFormat$MultiFieldReader;

    invoke-direct {v1, v0}, Lcom/sleepycat/persist/impl/ComplexFormat$MultiFieldReader;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private getNFields()I
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    .line 868
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    .line 869
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 867
    return v0
.end method

.method static getSecondaryKeyMetadataByFieldName(Ljava/util/Map;Ljava/lang/String;)Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/SecondaryKeyMetadata;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sleepycat/persist/model/SecondaryKeyMetadata;"
        }
    .end annotation

    .line 2246
    .local p0, "secKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 2247
    .local v1, "meta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v1}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2248
    return-object v1

    .line 2250
    .end local v1    # "meta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    :cond_0
    goto :goto_0

    .line 2251
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 570
    if-nez p1, :cond_1

    .line 571
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 573
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private skipToNonKeyField(Lcom/sleepycat/persist/impl/RecordInput;I)V
    .locals 4
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "toFieldNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 888
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    .line 889
    .local v0, "superFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    if-eqz v0, :cond_0

    .line 890
    const v1, 0x7ffffffe

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/persist/impl/ComplexFormat;->skipToNonKeyField(Lcom/sleepycat/persist/impl/RecordInput;I)V

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 893
    .local v1, "maxNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 894
    iget-object v3, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sleepycat/persist/impl/RecordInput;->skipField(Lcom/sleepycat/persist/impl/Format;)V

    .line 893
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 896
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private skipToSecKeyField(Lcom/sleepycat/persist/impl/RecordInput;I)V
    .locals 4
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "toFieldNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 875
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    .line 876
    .local v0, "superFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    if-eqz v0, :cond_0

    .line 877
    const v1, 0x7ffffffe

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/persist/impl/ComplexFormat;->skipToSecKeyField(Lcom/sleepycat/persist/impl/RecordInput;I)V

    .line 879
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 880
    .local v1, "maxNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 881
    iget-object v3, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sleepycat/persist/impl/RecordInput;->skipField(Lcom/sleepycat/persist/impl/Format;)V

    .line 880
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 883
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V
    .locals 6
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

    .line 326
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 328
    .local v0, "cls":Ljava/lang/Class;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/persist/impl/FieldInfo;->collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 332
    .local v2, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/persist/impl/FieldInfo;->collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V

    .line 333
    .end local v2    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_0

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 335
    .restart local v2    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/persist/impl/FieldInfo;->collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V

    .line 336
    .end local v2    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_1

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    if-eqz v1, :cond_4

    .line 340
    invoke-virtual {v1}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 341
    .local v2, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getElementClassName()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "elemClsName":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 343
    invoke-interface {p1, v3}, Lcom/sleepycat/persist/impl/Catalog;->resolveKeyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 344
    .local v4, "elemCls":Ljava/lang/Class;
    invoke-interface {p1, v4, p2}, Lcom/sleepycat/persist/impl/Catalog;->createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    .line 346
    .end local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v3    # "elemClsName":Ljava/lang/String;
    .end local v4    # "elemCls":Ljava/lang/Class;
    :cond_3
    goto :goto_2

    .line 349
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 350
    .local v1, "superCls":Ljava/lang/Class;
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_6

    .line 351
    invoke-interface {p1, v1, p2}, Lcom/sleepycat/persist/impl/Catalog;->createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v2

    .line 352
    .local v2, "superFormat":Lcom/sleepycat/persist/impl/Format;
    instance-of v3, v2, Lcom/sleepycat/persist/impl/ComplexFormat;

    if-eqz v3, :cond_5

    goto :goto_3

    .line 353
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The superclass of a complex type must not be a composite key class or a simple type class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 356
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 360
    .end local v2    # "superFormat":Lcom/sleepycat/persist/impl/Format;
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

    invoke-virtual {v2}, Lcom/sleepycat/persist/model/ClassMetadata;->getProxiedClassName()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "proxiedClsName":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 362
    invoke-interface {p1, v2, p2}, Lcom/sleepycat/persist/impl/Catalog;->createFormat(Ljava/lang/String;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    .line 364
    :cond_7
    return-void
.end method

.method convertRawObject(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;
    .locals 16
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "rawObject"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p4, "converted"    # Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 620
    move-object/from16 v0, p0

    move/from16 v7, p2

    iget-object v1, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawInputFields:[Lcom/sleepycat/persist/impl/FieldInfo;

    .line 621
    .local v1, "fields":[Lcom/sleepycat/persist/impl/FieldInfo;
    iget-object v2, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawInputLevels:[I

    .line 622
    .local v2, "levels":[I
    iget v3, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawInputDepth:I

    .line 623
    .local v3, "depth":I
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v1

    move-object v9, v2

    move v10, v3

    goto/16 :goto_a

    .line 630
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 631
    const/4 v4, 0x0

    .line 632
    .local v4, "nFields":I
    move-object/from16 v5, p0

    .line 633
    .local v5, "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_1
    if-eqz v5, :cond_2

    .line 635
    invoke-direct {v5}, Lcom/sleepycat/persist/impl/ComplexFormat;->getNFields()I

    move-result v6

    add-int/2addr v4, v6

    .line 636
    add-int/lit8 v3, v3, 0x1

    .line 634
    invoke-virtual {v5}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v5

    goto :goto_1

    .line 638
    .end local v5    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_2
    new-array v5, v3, [Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 639
    .local v5, "hierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    move v6, v3

    .line 640
    .local v6, "level":I
    move-object/from16 v8, p0

    .line 641
    .local v8, "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_2
    if-eqz v8, :cond_3

    .line 643
    add-int/lit8 v6, v6, -0x1

    .line 644
    aput-object v8, v5, v6

    .line 642
    invoke-virtual {v8}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v8

    goto :goto_2

    .line 646
    .end local v8    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_3
    if-nez v6, :cond_13

    .line 649
    new-array v2, v4, [I

    .line 650
    new-array v1, v4, [Lcom/sleepycat/persist/impl/FieldInfo;

    .line 651
    const/4 v8, 0x0

    .line 658
    .local v8, "index":I
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 659
    add-int/lit8 v6, v3, -0x1

    :goto_3
    if-ltz v6, :cond_5

    .line 660
    aget-object v9, v5, v6

    .line 661
    .local v9, "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    iget-object v10, v9, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v10, :cond_4

    .line 662
    aput v6, v2, v8

    .line 663
    aput-object v10, v1, v8

    .line 664
    add-int/lit8 v8, v8, 0x1

    .line 665
    goto :goto_4

    .line 659
    .end local v9    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 668
    :cond_5
    :goto_4
    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    goto :goto_5

    :cond_6
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 675
    :cond_7
    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v3, :cond_9

    .line 676
    aget-object v9, v5, v6

    .line 677
    .restart local v9    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    iget-object v10, v9, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 678
    .local v11, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    aput v6, v2, v8

    .line 679
    aput-object v11, v1, v8

    .line 680
    nop

    .end local v11    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    add-int/lit8 v8, v8, 0x1

    .line 681
    goto :goto_7

    .line 675
    .end local v9    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 688
    :cond_9
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v3, :cond_b

    .line 689
    aget-object v9, v5, v6

    .line 690
    .restart local v9    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    iget-object v10, v9, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 691
    .restart local v11    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    aput v6, v2, v8

    .line 692
    aput-object v11, v1, v8

    .line 693
    nop

    .end local v11    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    add-int/lit8 v8, v8, 0x1

    .line 694
    goto :goto_9

    .line 688
    .end local v9    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 698
    :cond_b
    array-length v9, v1

    if-ne v8, v9, :cond_12

    .line 699
    iput-object v1, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawInputFields:[Lcom/sleepycat/persist/impl/FieldInfo;

    .line 700
    iput-object v2, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawInputLevels:[I

    .line 701
    iput v3, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawInputDepth:I

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    .line 710
    .end local v1    # "fields":[Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v2    # "levels":[I
    .end local v3    # "depth":I
    .end local v4    # "nFields":I
    .end local v5    # "hierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v6    # "level":I
    .local v8, "fields":[Lcom/sleepycat/persist/impl/FieldInfo;
    .local v9, "levels":[I
    .local v10, "depth":I
    :goto_a
    new-array v11, v10, [Lcom/sleepycat/persist/raw/RawObject;

    .line 711
    .local v11, "objectsByLevel":[Lcom/sleepycat/persist/raw/RawObject;
    move v1, v10

    .line 712
    .local v1, "level":I
    move-object/from16 v2, p3

    move v12, v1

    .end local v1    # "level":I
    .local v2, "raw":Lcom/sleepycat/persist/raw/RawObject;
    .local v12, "level":I
    :goto_b
    if-eqz v2, :cond_d

    .line 713
    if-eqz v12, :cond_c

    .line 718
    add-int/lit8 v12, v12, -0x1

    .line 719
    aput-object v2, v11, v12

    .line 712
    invoke-virtual {v2}, Lcom/sleepycat/persist/raw/RawObject;->getSuper()Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v2

    goto :goto_b

    .line 714
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RawObject has too many superclasses: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 716
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v4

    invoke-interface {v4}, Lcom/sleepycat/persist/raw/RawType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    .end local v2    # "raw":Lcom/sleepycat/persist/raw/RawObject;
    :cond_d
    if-gtz v12, :cond_11

    .line 726
    if-nez v12, :cond_10

    .line 727
    array-length v1, v8

    new-array v13, v1, [Lcom/sleepycat/persist/raw/RawObject;

    .line 728
    .local v13, "objects":[Lcom/sleepycat/persist/raw/RawObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v13

    if-ge v1, v2, :cond_e

    .line 729
    aget v2, v9, v1

    aget-object v2, v11, v2

    aput-object v2, v13, v1

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 733
    .end local v1    # "i":I
    :cond_e
    new-instance v14, Lcom/sleepycat/persist/impl/RawComplexInput;

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object v5, v8

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/persist/impl/RawComplexInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;[Lcom/sleepycat/persist/impl/FieldInfo;[Lcom/sleepycat/persist/raw/RawObject;)V

    .line 735
    .local v1, "in":Lcom/sleepycat/persist/impl/EntityInput;
    invoke-virtual {v0, v1, v7}, Lcom/sleepycat/persist/impl/ComplexFormat;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v2

    .line 736
    .local v2, "o":Ljava/lang/Object;
    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-virtual {v15, v14, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 738
    invoke-virtual {v0, v2, v1, v7}, Lcom/sleepycat/persist/impl/ComplexFormat;->readPriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)V

    .line 740
    :cond_f
    invoke-virtual {v0, v2, v1, v7}, Lcom/sleepycat/persist/impl/ComplexFormat;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 726
    .end local v1    # "in":Lcom/sleepycat/persist/impl/EntityInput;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v13    # "objects":[Lcom/sleepycat/persist/raw/RawObject;
    :cond_10
    move-object/from16 v14, p3

    move-object/from16 v15, p4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 722
    :cond_11
    move-object/from16 v14, p3

    move-object/from16 v15, p4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RawObject has too few superclasses: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 724
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v3

    invoke-interface {v3}, Lcom/sleepycat/persist/raw/RawType;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    .end local v9    # "levels":[I
    .end local v10    # "depth":I
    .end local v11    # "objectsByLevel":[Lcom/sleepycat/persist/raw/RawObject;
    .end local v12    # "level":I
    .local v1, "fields":[Lcom/sleepycat/persist/impl/FieldInfo;
    .local v2, "levels":[I
    .restart local v3    # "depth":I
    .restart local v4    # "nFields":I
    .restart local v5    # "hierarchy":[Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v6    # "level":I
    .local v8, "index":I
    :cond_12
    move-object/from16 v14, p3

    move-object/from16 v15, p4

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 646
    .end local v8    # "index":I
    :cond_13
    move-object/from16 v14, p3

    move-object/from16 v15, p4

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8
.end method

.method copySecMultiKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;Ljava/util/Set;)V
    .locals 0
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "keyFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "results"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 842
    invoke-static {p1, p0, p2, p3}, Lcom/sleepycat/persist/impl/CollectionProxy;->copyElements(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/util/Set;)V

    .line 843
    return-void
.end method

.method evolve(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 24
    .param p1, "newFormatParam"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 923
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v1, Lcom/sleepycat/persist/impl/ComplexFormat;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 924
    nop

    .line 925
    const-string v3, "Converter is required when a complex type is changed to a simple type or enum type"

    invoke-virtual {v2, v0, v1, v3}, Lcom/sleepycat/persist/impl/Evolver;->addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V

    .line 928
    return v4

    .line 930
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 931
    .local v3, "newFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/persist/impl/Evolver;->getMutations()Lcom/sleepycat/persist/evolve/Mutations;

    move-result-object v5

    .line 932
    .local v5, "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    const/4 v6, 0x0

    .line 933
    .local v6, "thisChanged":Z
    const/4 v7, 0x0

    .line 934
    .local v7, "hierarchyChanged":Z
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 937
    .local v8, "allKeyNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isEntity()Z

    move-result v9

    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/ComplexFormat;->isEntity()Z

    move-result v10

    if-ne v9, v10, :cond_25

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isEntity()Z

    move-result v9

    iget-object v10, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    move v10, v4

    :goto_0
    if-ne v9, v10, :cond_24

    .line 939
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/ComplexFormat;->isEntity()Z

    move-result v9

    iget-object v10, v3, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    move v10, v4

    :goto_1
    if-ne v9, v10, :cond_23

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isEntity()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 953
    .local v9, "oldEntityClass":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v10

    .local v10, "newEntityClass":Ljava/lang/String;
    goto :goto_2

    .line 955
    .end local v9    # "oldEntityClass":Ljava/lang/String;
    .end local v10    # "newEntityClass":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .line 956
    .restart local v9    # "oldEntityClass":Ljava/lang/String;
    const/4 v10, 0x0

    .line 965
    .restart local v10    # "newEntityClass":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v12

    .line 966
    .local v12, "oldSuper":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_3
    const/4 v13, 0x0

    if-eqz v12, :cond_9

    .line 968
    nop

    .line 969
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/ComplexFormat;->getVersion()I

    move-result v15

    invoke-virtual {v5, v14, v15, v13}, Lcom/sleepycat/persist/evolve/Mutations;->getConverter(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Converter;

    move-result-object v13

    .line 970
    .local v13, "converter":Lcom/sleepycat/persist/evolve/Converter;
    if-eqz v13, :cond_4

    .line 971
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Converter is required for this subclass when a Converter appears on its superclass: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 972
    invoke-virtual {v2, v0, v1, v11}, Lcom/sleepycat/persist/impl/Evolver;->addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V

    .line 975
    return v4

    .line 977
    :cond_4
    invoke-virtual {v2, v12}, Lcom/sleepycat/persist/impl/Evolver;->evolveFormat(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 978
    return v4

    .line 980
    :cond_5
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/ComplexFormat;->isCurrentVersion()Z

    move-result v14

    if-nez v14, :cond_8

    .line 981
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/ComplexFormat;->isDeleted()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 982
    invoke-direct {v12, v2}, Lcom/sleepycat/persist/impl/ComplexFormat;->evolveDeletedClass(Lcom/sleepycat/persist/impl/Evolver;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 983
    return v4

    .line 986
    :cond_6
    iget-object v14, v12, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    if-eqz v14, :cond_7

    .line 987
    invoke-interface {v8, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 989
    :cond_7
    const/4 v7, 0x1

    .line 967
    .end local v13    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    :cond_8
    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v12

    goto :goto_3

    .line 1002
    .end local v12    # "oldSuper":Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_9
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/ComplexFormat;->getExistingType()Ljava/lang/Class;

    move-result-object v12

    .line 1003
    .local v12, "newFormatCls":Ljava/lang/Class;
    move-object v14, v12

    .line 1004
    .local v14, "newSuper":Ljava/lang/Class;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v15, "newLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .line 1006
    .local v16, "newLevel":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getSuperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v11

    if-nez v11, :cond_a

    .line 1013
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    const-class v13, Ljava/lang/Object;

    if-eq v11, v13, :cond_b

    .line 1014
    const/4 v6, 0x1

    .line 1015
    const/4 v7, 0x1

    goto :goto_4

    .line 1018
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getSuperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 1019
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1020
    const/4 v6, 0x1

    .line 1021
    const/4 v7, 0x1

    .line 1025
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v11

    .line 1026
    .local v11, "oldSuper":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_5
    if-eqz v11, :cond_1a

    .line 1030
    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/ComplexFormat;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 1031
    .local v13, "oldSuperName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1032
    .local v17, "foundNewSuper":Ljava/lang/Class;
    move/from16 v18, v16

    .line 1033
    .local v18, "tryNewLevel":I
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v4, v19

    .line 1034
    .local v4, "newSuper2":Ljava/lang/Class;
    :goto_6
    move-object/from16 v20, v5

    .end local v5    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .local v20, "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_10

    .line 1036
    add-int/lit8 v18, v18, 0x1

    .line 1037
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1038
    move-object/from16 v17, v4

    .line 1039
    move/from16 v5, v18

    .line 1040
    .end local v16    # "newLevel":I
    .local v5, "newLevel":I
    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/ComplexFormat;->isEntity()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 1041
    if-nez v9, :cond_d

    .line 1042
    if-nez v10, :cond_c

    .line 1043
    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 1044
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move/from16 v16, v5

    move-object/from16 v4, v17

    goto :goto_7

    .line 1042
    :cond_c
    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 1041
    :cond_d
    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 1040
    :cond_e
    move/from16 v16, v5

    move-object/from16 v4, v17

    goto :goto_7

    .line 1035
    .end local v5    # "newLevel":I
    .restart local v16    # "newLevel":I
    :cond_f
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v5, v20

    goto :goto_6

    .line 1034
    :cond_10
    move-object/from16 v4, v17

    .line 1050
    .end local v17    # "foundNewSuper":Ljava/lang/Class;
    .local v4, "foundNewSuper":Ljava/lang/Class;
    :goto_7
    if-eqz v4, :cond_14

    .line 1057
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 1058
    .local v5, "newSuper2":Ljava/lang/Class;
    :goto_8
    if-eq v5, v4, :cond_13

    .line 1064
    const/4 v7, 0x1

    .line 1070
    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v17

    .line 1071
    .local v17, "oldSuper2":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_9
    if-eqz v17, :cond_12

    .line 1073
    nop

    .line 1074
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/persist/impl/ComplexFormat;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v21

    move/from16 v22, v6

    .end local v6    # "thisChanged":Z
    .local v22, "thisChanged":Z
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 1075
    .local v6, "oldSuper2Name":Ljava/lang/String;
    move/from16 v21, v7

    .end local v7    # "hierarchyChanged":Z
    .local v21, "hierarchyChanged":Z
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1076
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v6

    .end local v6    # "oldSuper2Name":Ljava/lang/String;
    .local v23, "oldSuper2Name":Ljava/lang/String;
    const-string v6, "Class Converter is required when a superclass is moved in the class hierarchy: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1080
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1077
    invoke-virtual {v2, v0, v1, v6}, Lcom/sleepycat/persist/impl/Evolver;->addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V

    .line 1081
    const/4 v6, 0x0

    return v6

    .line 1075
    .end local v23    # "oldSuper2Name":Ljava/lang/String;
    .restart local v6    # "oldSuper2Name":Ljava/lang/String;
    :cond_11
    move-object/from16 v23, v6

    .line 1072
    .end local v6    # "oldSuper2Name":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v17

    move/from16 v7, v21

    move/from16 v6, v22

    goto :goto_9

    .line 1071
    .end local v21    # "hierarchyChanged":Z
    .end local v22    # "thisChanged":Z
    .local v6, "thisChanged":Z
    .restart local v7    # "hierarchyChanged":Z
    :cond_12
    move/from16 v22, v6

    move/from16 v21, v7

    .line 1059
    .end local v6    # "thisChanged":Z
    .end local v7    # "hierarchyChanged":Z
    .end local v17    # "oldSuper2":Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v21    # "hierarchyChanged":Z
    .restart local v22    # "thisChanged":Z
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_8

    .line 1058
    .end local v21    # "hierarchyChanged":Z
    .end local v22    # "thisChanged":Z
    .restart local v6    # "thisChanged":Z
    .restart local v7    # "hierarchyChanged":Z
    :cond_13
    move/from16 v22, v6

    .line 1085
    .end local v5    # "newSuper2":Ljava/lang/Class;
    .end local v6    # "thisChanged":Z
    .restart local v22    # "thisChanged":Z
    move-object v5, v4

    .line 1086
    .end local v14    # "newSuper":Ljava/lang/Class;
    .local v5, "newSuper":Ljava/lang/Class;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v14, v5

    const/4 v1, 0x0

    goto/16 :goto_d

    .line 1094
    .end local v5    # "newSuper":Ljava/lang/Class;
    .end local v22    # "thisChanged":Z
    .restart local v6    # "thisChanged":Z
    .restart local v14    # "newSuper":Ljava/lang/Class;
    :cond_14
    move/from16 v22, v6

    .end local v6    # "thisChanged":Z
    .restart local v22    # "thisChanged":Z
    const/4 v5, 0x1

    .line 1097
    .end local v7    # "hierarchyChanged":Z
    .local v5, "hierarchyChanged":Z
    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/ComplexFormat;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 1098
    nop

    .line 1099
    invoke-direct {v11}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexLatest()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v6

    .line 1100
    .local v6, "oldSuperLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    invoke-direct {v6}, Lcom/sleepycat/persist/impl/ComplexFormat;->getNFields()I

    move-result v7

    if-eqz v7, :cond_15

    .line 1101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "foundNewSuper":Ljava/lang/Class;
    .local v17, "foundNewSuper":Ljava/lang/Class;
    const-string v4, "When a superclass is removed from the class hierarchy, the superclass or all of its persistent fields must be deleted with a Deleter: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1107
    invoke-virtual {v6}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1102
    invoke-virtual {v2, v0, v1, v4}, Lcom/sleepycat/persist/impl/Evolver;->addMissingMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;)V

    .line 1108
    const/4 v4, 0x0

    return v4

    .line 1100
    .end local v17    # "foundNewSuper":Ljava/lang/Class;
    .restart local v4    # "foundNewSuper":Ljava/lang/Class;
    :cond_15
    move-object/from16 v17, v4

    .end local v4    # "foundNewSuper":Ljava/lang/Class;
    .restart local v17    # "foundNewSuper":Ljava/lang/Class;
    goto :goto_a

    .line 1097
    .end local v6    # "oldSuperLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v17    # "foundNewSuper":Ljava/lang/Class;
    .restart local v4    # "foundNewSuper":Ljava/lang/Class;
    :cond_16
    move-object/from16 v17, v4

    .line 1112
    .end local v4    # "foundNewSuper":Ljava/lang/Class;
    .restart local v17    # "foundNewSuper":Ljava/lang/Class;
    :goto_a
    if-eqz v9, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isCurrentVersion()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1113
    iget-object v4, v11, Lcom/sleepycat/persist/impl/ComplexFormat;->clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

    .line 1114
    invoke-virtual {v4}, Lcom/sleepycat/persist/model/ClassMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v4

    .line 1115
    .local v4, "secKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    iget-object v6, v11, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1116
    .local v7, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    nop

    .line 1118
    invoke-virtual {v7}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sleepycat/persist/impl/ComplexFormat;->getSecondaryKeyMetadataByFieldName(Ljava/util/Map;Ljava/lang/String;)Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    move-result-object v1

    .line 1119
    .local v1, "meta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    if-eqz v1, :cond_17

    .line 1120
    move-object/from16 v21, v4

    .end local v4    # "secKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .local v21, "secKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    invoke-virtual {v1}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v1

    const/4 v1, 0x0

    .end local v1    # "meta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v23, "meta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-interface {v8, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    .end local v7    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v23    # "meta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    move-object/from16 v1, p1

    move-object/from16 v4, v21

    goto :goto_b

    .line 1119
    .end local v21    # "secKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .restart local v1    # "meta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v4    # "secKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .restart local v7    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    :cond_17
    move-object/from16 v23, v1

    .end local v1    # "meta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v23    # "meta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1115
    .end local v7    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v23    # "meta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    :cond_18
    move-object/from16 v21, v4

    const/4 v1, 0x0

    .end local v4    # "secKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .restart local v21    # "secKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    goto :goto_c

    .line 1112
    .end local v21    # "secKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    :cond_19
    const/4 v1, 0x0

    .line 1128
    :goto_c
    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v5

    .line 1027
    .end local v5    # "hierarchyChanged":Z
    .end local v13    # "oldSuperName":Ljava/lang/String;
    .end local v17    # "foundNewSuper":Ljava/lang/Class;
    .end local v18    # "tryNewLevel":I
    .local v7, "hierarchyChanged":Z
    :goto_d
    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v11

    move-object/from16 v1, p1

    move-object/from16 v5, v20

    move/from16 v6, v22

    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1026
    .end local v20    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .end local v22    # "thisChanged":Z
    .local v5, "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .local v6, "thisChanged":Z
    :cond_1a
    move-object/from16 v20, v5

    move/from16 v22, v6

    .line 1133
    .end local v5    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .end local v6    # "thisChanged":Z
    .end local v11    # "oldSuper":Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v20    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .restart local v22    # "thisChanged":Z
    invoke-direct {v0, v3, v2}, Lcom/sleepycat/persist/impl/ComplexFormat;->evolveAllFields(Lcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/Evolver;)I

    move-result v1

    .line 1134
    .local v1, "result":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1b

    .line 1135
    const/4 v4, 0x0

    return v4

    .line 1137
    :cond_1b
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1c

    .line 1138
    const/4 v6, 0x1

    .end local v22    # "thisChanged":Z
    .restart local v6    # "thisChanged":Z
    goto :goto_e

    .line 1137
    .end local v6    # "thisChanged":Z
    .restart local v22    # "thisChanged":Z
    :cond_1c
    move/from16 v6, v22

    .line 1140
    .end local v22    # "thisChanged":Z
    .restart local v6    # "thisChanged":Z
    :goto_e
    iget-object v4, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->oldToNewKeyMap:Ljava/util/Map;

    if-eqz v4, :cond_1d

    .line 1141
    invoke-interface {v8, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1145
    :cond_1d
    if-eqz v6, :cond_1e

    .line 1147
    const-string v4, "Changes to the fields or superclass were detected"

    invoke-virtual {v2, v4, v0, v3}, Lcom/sleepycat/persist/impl/Evolver;->checkUpdatedVersion(Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1149
    const/4 v4, 0x0

    return v4

    .line 1153
    :cond_1e
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_20

    if-eqz v9, :cond_20

    if-eqz v10, :cond_20

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isCurrentVersion()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1157
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1158
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1159
    .local v11, "oldKeyName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1160
    .local v13, "newKeyName":Ljava/lang/String;
    if-eqz v13, :cond_1f

    .line 1161
    nop

    .line 1162
    invoke-virtual {v2, v9, v10, v11, v13}, Lcom/sleepycat/persist/impl/Evolver;->renameSecondaryDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1165
    :cond_1f
    nop

    .line 1166
    invoke-virtual {v2, v9, v11}, Lcom/sleepycat/persist/impl/Evolver;->deleteSecondaryDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "oldKeyName":Ljava/lang/String;
    .end local v13    # "newKeyName":Ljava/lang/String;
    :goto_10
    goto :goto_f

    .line 1180
    :cond_20
    if-nez v7, :cond_22

    if-nez v6, :cond_22

    iget-boolean v4, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->newStringFormat:Z

    if-nez v4, :cond_21

    goto :goto_11

    .line 1184
    :cond_21
    invoke-virtual {v2, v0, v3}, Lcom/sleepycat/persist/impl/Evolver;->useOldFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)V

    goto :goto_12

    .line 1181
    :cond_22
    :goto_11
    new-instance v4, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;

    invoke-direct {v4, v15}, Lcom/sleepycat/persist/impl/ComplexFormat$EvolveReader;-><init>(Ljava/util/List;)V

    .line 1182
    .local v4, "reader":Lcom/sleepycat/persist/impl/Reader;
    invoke-virtual {v2, v0, v4, v3}, Lcom/sleepycat/persist/impl/Evolver;->useEvolvedFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Reader;Lcom/sleepycat/persist/impl/Format;)V

    .line 1183
    .end local v4    # "reader":Lcom/sleepycat/persist/impl/Reader;
    nop

    .line 1186
    :goto_12
    const/4 v4, 0x1

    return v4

    .line 939
    .end local v1    # "result":I
    .end local v9    # "oldEntityClass":Ljava/lang/String;
    .end local v10    # "newEntityClass":Ljava/lang/String;
    .end local v12    # "newFormatCls":Ljava/lang/Class;
    .end local v14    # "newSuper":Ljava/lang/Class;
    .end local v15    # "newLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "newLevel":I
    .end local v20    # "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    .local v5, "mutations":Lcom/sleepycat/persist/evolve/Mutations;
    :cond_23
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 938
    :cond_24
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 937
    :cond_25
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method evolveMetadata(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Converter;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 20
    .param p1, "newFormatParam"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "converter"    # Lcom/sleepycat/persist/evolve/Converter;
    .param p3, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 1193
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isEntity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1195
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1196
    move-object/from16 v9, p1

    check-cast v9, Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 1198
    .local v9, "newFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    iget-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    .line 1199
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/EntityMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v2

    iget-object v0, v9, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    .line 1200
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/EntityMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v3

    .line 1199
    const-string v4, "primary key"

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/persist/impl/ComplexFormat;->checkKeyTypeChange(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/model/FieldMetadata;Lcom/sleepycat/persist/model/FieldMetadata;Ljava/lang/String;Lcom/sleepycat/persist/impl/Evolver;)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 1202
    return v10

    .line 1206
    :cond_0
    instance-of v0, v7, Lcom/sleepycat/persist/evolve/EntityConverter;

    if-eqz v0, :cond_1

    .line 1207
    move-object v0, v7

    check-cast v0, Lcom/sleepycat/persist/evolve/EntityConverter;

    .line 1208
    .local v0, "entityConverter":Lcom/sleepycat/persist/evolve/EntityConverter;
    invoke-virtual {v0}, Lcom/sleepycat/persist/evolve/EntityConverter;->getDeletedKeys()Ljava/util/Set;

    move-result-object v0

    .line 1209
    .local v0, "deletedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v11, v0

    goto :goto_0

    .line 1210
    .end local v0    # "deletedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    move-object v11, v0

    .line 1213
    .local v11, "deletedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    iget-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    .line 1214
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v12

    .line 1215
    .local v12, "oldSecondaryKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    iget-object v0, v9, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    .line 1216
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v13

    .line 1217
    .local v13, "newSecondaryKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    new-instance v0, Ljava/util/HashSet;

    .line 1218
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v14, v0

    .line 1220
    .local v14, "insertedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 1221
    .local v5, "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v5}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v4

    .line 1222
    .local v4, "keyName":Ljava/lang/String;
    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isCurrentVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v4}, Lcom/sleepycat/persist/impl/Evolver;->deleteSecondaryDatabase(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1227
    :cond_2
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 1228
    .local v3, "newMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    if-nez v3, :cond_3

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Existing key not found in new entity metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    invoke-virtual {v8, v6, v9, v7, v0}, Lcom/sleepycat/persist/impl/Evolver;->addInvalidMutation(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/Mutation;Ljava/lang/String;)V

    .line 1233
    return v10

    .line 1235
    :cond_3
    invoke-interface {v14, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "secondary key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1237
    .local v16, "keyLabel":Ljava/lang/String;
    nop

    .line 1238
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v5

    move-object/from16 v17, v3

    .end local v3    # "newMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v17, "newMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    move-object/from16 v18, v4

    .end local v4    # "keyName":Ljava/lang/String;
    .local v18, "keyName":Ljava/lang/String;
    move-object/from16 v4, v16

    move-object/from16 v19, v5

    .end local v5    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v19, "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/persist/impl/ComplexFormat;->checkKeyTypeChange(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/model/FieldMetadata;Lcom/sleepycat/persist/model/FieldMetadata;Ljava/lang/String;Lcom/sleepycat/persist/impl/Evolver;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1239
    return v10

    .line 1241
    :cond_4
    nop

    .line 1242
    move-object/from16 v1, v17

    move-object/from16 v0, v19

    .end local v17    # "newMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v19    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v0, "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v1, "newMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-direct {v6, v9, v0, v1, v8}, Lcom/sleepycat/persist/impl/ComplexFormat;->checkSecKeyMetadata(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Lcom/sleepycat/persist/impl/Evolver;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1243
    return v10

    .line 1246
    .end local v0    # "oldMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v1    # "newMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v16    # "keyLabel":Ljava/lang/String;
    .end local v18    # "keyName":Ljava/lang/String;
    :cond_5
    :goto_2
    goto :goto_1

    .line 1248
    :cond_6
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New keys "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not allowed when using a Converter with an entity class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1250
    const-string v1, "Error"

    invoke-virtual {v8, v6, v9, v1, v0}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :cond_7
    const/4 v0, 0x1

    return v0

    .line 1195
    .end local v9    # "newFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v11    # "deletedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "oldSecondaryKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .end local v13    # "newSecondaryKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .end local v14    # "insertedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1194
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1193
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getAccessor(Z)Lcom/sleepycat/persist/impl/Accessor;
    .locals 1
    .param p1, "rawAccess"    # Z

    .line 2311
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    :goto_0
    return-object v0
.end method

.method public getClassMetadata()Lcom/sleepycat/persist/model/ClassMetadata;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

    return-object v0
.end method

.method getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getSuperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/ComplexFormat;

    return-object v0
.end method

.method getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->entityFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isNew()Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    move-object v0, p0

    .line 270
    .local v0, "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_0
    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isEntity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    return-object v0

    .line 271
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    goto :goto_0

    .line 276
    .end local v0    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 267
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getEntityMetadata()Lcom/sleepycat/persist/model/EntityMetadata;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    return-object v0
.end method

.method getEvolveNeeded()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->evolveNeeded:Z

    return v0
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

    .line 307
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawFields:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/raw/RawField;>;"
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/raw/RawField;

    .line 313
    .local v2, "field":Lcom/sleepycat/persist/raw/RawField;
    invoke-interface {v2}, Lcom/sleepycat/persist/raw/RawField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v2    # "field":Lcom/sleepycat/persist/raw/RawField;
    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/raw/RawField;

    .line 316
    .restart local v2    # "field":Lcom/sleepycat/persist/raw/RawField;
    invoke-interface {v2}, Lcom/sleepycat/persist/raw/RawField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v2    # "field":Lcom/sleepycat/persist/raw/RawField;
    goto :goto_1

    .line 318
    :cond_2
    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawFields:Ljava/util/Map;

    .line 320
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/raw/RawField;>;"
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawFields:Ljava/util/Map;

    return-object v0
.end method

.method public getIncorrectlyOrderedSecKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2306
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    return-object v0
.end method

.method getNewStringFormat()Z
    .locals 1

    .line 292
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->newStringFormat:Z

    return v0

    .line 293
    :cond_0
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getOldKeyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;

    .line 767
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->newToOldFieldMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 768
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->newToOldFieldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 771
    :cond_0
    return-object p1
.end method

.method getPriKeyField()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

    invoke-virtual {v0}, Lcom/sleepycat/persist/model/ClassMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

    invoke-virtual {v0}, Lcom/sleepycat/persist/model/ClassMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getPriKeyFieldInfo()Lcom/sleepycat/persist/impl/FieldInfo;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    return-object v0
.end method

.method initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V
    .locals 26
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I

    .line 369
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 370
    .local v4, "type":Ljava/lang/Class;
    const/4 v0, 0x0

    .line 371
    .local v0, "useEnhanced":Z
    if-eqz v4, :cond_0

    .line 372
    invoke-static {v4}, Lcom/sleepycat/persist/impl/EnhancedAccessor;->isEnhanced(Ljava/lang/Class;)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_0

    .line 371
    :cond_0
    move/from16 v16, v0

    .line 375
    .end local v0    # "useEnhanced":Z
    .local v16, "useEnhanced":Z
    :goto_0
    iget-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {v0, v14, v15, v5}, Lcom/sleepycat/persist/impl/FieldInfo;->initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V

    .line 378
    :cond_1
    iget-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 379
    .local v1, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v1, v14, v15, v5}, Lcom/sleepycat/persist/impl/FieldInfo;->initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V

    .line 380
    .end local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_1

    .line 381
    :cond_2
    iget-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 382
    .restart local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v1, v14, v15, v5}, Lcom/sleepycat/persist/impl/FieldInfo;->initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V

    .line 383
    .end local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_2

    .line 385
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    .line 386
    .local v0, "superFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    .line 387
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 388
    .local v1, "superCls":Ljava/lang/Class;
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_4

    .line 389
    nop

    .line 390
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 391
    invoke-virtual {v6, v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->setSuperFormat(Lcom/sleepycat/persist/impl/Format;)V

    move-object v3, v0

    goto :goto_3

    .line 395
    .end local v1    # "superCls":Ljava/lang/Class;
    :cond_4
    move-object v3, v0

    .end local v0    # "superFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    .local v3, "superFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_3
    if-eqz v3, :cond_8

    .line 396
    invoke-virtual {v3, v14, v15}, Lcom/sleepycat/persist/impl/ComplexFormat;->initializeIfNeeded(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;)V

    .line 397
    iget-object v0, v3, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 398
    .local v0, "superAccessor":Lcom/sleepycat/persist/impl/Accessor;
    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    .line 399
    const-string v1, " extends "

    if-eqz v16, :cond_6

    .line 400
    instance-of v2, v0, Lcom/sleepycat/persist/impl/EnhancedAccessor;

    if-eqz v2, :cond_5

    goto :goto_4

    .line 401
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The superclass of an enhanced class must also be enhanced: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    :cond_6
    instance-of v2, v0, Lcom/sleepycat/persist/impl/ReflectionAccessor;

    if-eqz v2, :cond_7

    goto :goto_4

    .line 408
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The superclass of an unenhanced class must not be enhanced: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 411
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    .end local v0    # "superAccessor":Lcom/sleepycat/persist/impl/Accessor;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    .line 418
    .local v0, "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_5
    if-eqz v0, :cond_a

    .line 420
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isEntity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 421
    iput-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->entityFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 422
    goto :goto_6

    .line 419
    :cond_9
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v0

    goto :goto_5

    .line 434
    .end local v0    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isEntity()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->isCurrentVersion()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/sleepycat/persist/model/EntityModel;->getEntityMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v0

    iput-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    .line 439
    :cond_b
    iget-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

    invoke-virtual {v0}, Lcom/sleepycat/persist/model/ClassMetadata;->getProxiedClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->entityFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    if-nez v0, :cond_c

    goto :goto_7

    .line 440
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A proxy may not be an entity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_d
    :goto_7
    iget-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->entityFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    if-eqz v0, :cond_f

    if-eq v0, v6, :cond_f

    iget-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-nez v0, :cond_e

    goto :goto_8

    .line 447
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A PrimaryKey may not appear on an Entity subclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_f
    :goto_8
    const/4 v0, 0x0

    if-eqz v4, :cond_12

    .line 453
    if-eqz v16, :cond_10

    .line 454
    new-instance v1, Lcom/sleepycat/persist/impl/EnhancedAccessor;

    invoke-direct {v1, v14, v4, v6}, Lcom/sleepycat/persist/impl/EnhancedAccessor;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/impl/ComplexFormat;)V

    iput-object v1, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_a

    .line 456
    :cond_10
    if-eqz v3, :cond_11

    iget-object v1, v3, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    move-object v10, v1

    goto :goto_9

    :cond_11
    move-object v10, v0

    .line 458
    .local v10, "superObjAccessor":Lcom/sleepycat/persist/impl/Accessor;
    :goto_9
    new-instance v1, Lcom/sleepycat/persist/impl/ReflectionAccessor;

    iget-object v11, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    iget-object v12, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    iget-object v13, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    move-object v7, v1

    move-object/from16 v8, p1

    move-object v9, v4

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/persist/impl/ReflectionAccessor;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/impl/Accessor;Lcom/sleepycat/persist/impl/FieldInfo;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 463
    .end local v10    # "superObjAccessor":Lcom/sleepycat/persist/impl/Accessor;
    :cond_12
    :goto_a
    if-eqz v3, :cond_13

    iget-object v0, v3, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    :cond_13
    move-object v2, v0

    .line 465
    .local v2, "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    new-instance v7, Lcom/sleepycat/persist/impl/RawAccessor;

    iget-object v8, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    iget-object v9, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    iget-object v10, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v11, v3

    .end local v3    # "superFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    .local v11, "superFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    move-object v3, v8

    move-object v8, v4

    .end local v4    # "type":Ljava/lang/Class;
    .local v8, "type":Ljava/lang/Class;
    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/persist/impl/RawAccessor;-><init>(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Accessor;Lcom/sleepycat/persist/impl/FieldInfo;Ljava/util/List;Ljava/util/List;)V

    iput-object v7, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    iget-object v1, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->entityFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    if-eqz v1, :cond_14

    .line 471
    nop

    .line 472
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/ComplexFormat;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getEntityMetadata()Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v0

    .line 474
    :cond_14
    if-eqz v0, :cond_1d

    .line 475
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyAddresses:Ljava/util/Map;

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexLatest()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v1

    .line 477
    .local v1, "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    if-eq v1, v6, :cond_15

    .line 478
    invoke-virtual {v1, v14, v15}, Lcom/sleepycat/persist/impl/ComplexFormat;->initializeIfNeeded(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;)V

    .line 482
    :cond_15
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 483
    .local v4, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v4}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, "clsName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getName()Ljava/lang/String;

    move-result-object v7

    .line 485
    .local v7, "fieldName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 486
    .local v9, "superLevel":I
    move-object/from16 v10, p0

    .line 487
    .local v10, "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    :goto_c
    if-eqz v10, :cond_1b

    .line 489
    nop

    .line 490
    invoke-virtual {v10}, Lcom/sleepycat/persist/impl/ComplexFormat;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 491
    const/4 v12, 0x0

    .line 492
    .local v12, "useFieldName":Ljava/lang/String;
    iget-object v13, v10, Lcom/sleepycat/persist/impl/ComplexFormat;->newToOldFieldMap:Ljava/util/Map;

    if-eqz v13, :cond_16

    .line 493
    invoke-interface {v13, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 494
    iget-object v13, v10, Lcom/sleepycat/persist/impl/ComplexFormat;->newToOldFieldMap:Ljava/util/Map;

    .line 495
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    check-cast v12, Ljava/lang/String;

    goto :goto_d

    .line 497
    :cond_16
    move-object v12, v7

    .line 501
    :goto_d
    iget-object v13, v10, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    .line 502
    invoke-static {v13, v12}, Lcom/sleepycat/persist/impl/FieldInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/sleepycat/persist/impl/FieldInfo;

    move-result-object v13

    .line 503
    .local v13, "info":Lcom/sleepycat/persist/impl/FieldInfo;
    if-eqz v13, :cond_17

    .line 504
    const/16 v17, 0x1

    .line 505
    .local v17, "isSecField":Z
    move-object/from16 v23, v0

    .end local v0    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .local v23, "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    iget-object v0, v10, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move/from16 v24, v17

    .local v0, "fieldNum":I
    goto :goto_e

    .line 507
    .end local v17    # "isSecField":Z
    .end local v23    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .local v0, "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    :cond_17
    move-object/from16 v23, v0

    .end local v0    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v23    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    const/16 v17, 0x0

    .line 508
    .restart local v17    # "isSecField":Z
    iget-object v0, v10, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    .line 509
    invoke-static {v0, v12}, Lcom/sleepycat/persist/impl/FieldInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/sleepycat/persist/impl/FieldInfo;

    move-result-object v13

    .line 510
    if-nez v13, :cond_19

    .line 512
    if-eq v1, v6, :cond_18

    .line 513
    nop

    .line 514
    invoke-direct {v1, v4}, Lcom/sleepycat/persist/impl/ComplexFormat;->checkNewSecKeyInitializer(Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)V

    .line 515
    move-object/from16 v0, v23

    goto :goto_b

    .line 512
    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 517
    :cond_19
    iget-object v0, v10, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move/from16 v24, v17

    .line 519
    .end local v17    # "isSecField":Z
    .local v0, "fieldNum":I
    .local v24, "isSecField":Z
    :goto_e
    new-instance v25, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;

    .line 521
    invoke-virtual {v13}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v22

    move-object/from16 v17, v25

    move/from16 v18, v24

    move/from16 v19, v0

    move/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v17 .. v22}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;-><init>(ZIILcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/Format;)V

    .line 522
    .local v17, "addr":Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
    move/from16 v18, v0

    .end local v0    # "fieldNum":I
    .local v18, "fieldNum":I
    iget-object v0, v6, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyAddresses:Ljava/util/Map;

    move-object/from16 v19, v1

    .end local v1    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .local v19, "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    invoke-virtual {v4}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v2

    move-object/from16 v2, v17

    .end local v17    # "addr":Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
    .local v2, "addr":Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
    .local v20, "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 490
    .end local v12    # "useFieldName":Ljava/lang/String;
    .end local v13    # "info":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v18    # "fieldNum":I
    .end local v19    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v20    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .end local v23    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v24    # "isSecField":Z
    .local v0, "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v1    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .local v2, "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    :cond_1a
    move-object/from16 v23, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 524
    .end local v0    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v1    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v2    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .restart local v19    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v20    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .restart local v23    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    :goto_f
    add-int/lit8 v9, v9, 0x1

    .line 488
    invoke-virtual {v10}, Lcom/sleepycat/persist/impl/ComplexFormat;->getComplexSuper()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v10

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v0, v23

    goto/16 :goto_c

    .line 487
    .end local v19    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v20    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .end local v23    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v0    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v1    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v2    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    :cond_1b
    move-object/from16 v23, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 526
    .end local v0    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v1    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v2    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .end local v4    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v5    # "clsName":Ljava/lang/String;
    .end local v7    # "fieldName":Ljava/lang/String;
    .end local v9    # "superLevel":I
    .end local v10    # "format":Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v19    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v20    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .restart local v23    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    goto/16 :goto_b

    .line 482
    .end local v19    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v20    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .end local v23    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v0    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v1    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v2    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    :cond_1c
    move-object/from16 v23, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .end local v0    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v1    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v2    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .restart local v19    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v20    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .restart local v23    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    goto :goto_10

    .line 474
    .end local v19    # "thisLatest":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v20    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .end local v23    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v0    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v2    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    :cond_1d
    move-object/from16 v23, v0

    move-object/from16 v20, v2

    .line 528
    .end local v0    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v2    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .restart local v20    # "superRawAccessor":Lcom/sleepycat/persist/impl/Accessor;
    .restart local v23    # "latestEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    :goto_10
    return-void
.end method

.method isEntity()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->clsMeta:Lcom/sleepycat/persist/model/ClassMetadata;

    invoke-virtual {v0}, Lcom/sleepycat/persist/model/ClassMetadata;->isEntityClass()Z

    move-result v0

    return v0
.end method

.method isModelClass()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method isPriKeyNullOrZero(Ljava/lang/Object;Z)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "rawAccess"    # Z

    .line 745
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 746
    .local v0, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    :goto_0
    invoke-interface {v0, p1}, Lcom/sleepycat/persist/impl/Accessor;->isPriKeyFieldNullOrZero(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isSecKeyIncorrectlyOrdered(Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;

    .line 2262
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 2263
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2262
    :goto_1
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

    .line 194
    .local p1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/persist/impl/Format;->migrateFromBeta(Ljava/util/Map;)V

    .line 195
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/FieldInfo;->migrateFromBeta(Ljava/util/Map;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 199
    .local v1, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v1, p1}, Lcom/sleepycat/persist/impl/FieldInfo;->migrateFromBeta(Ljava/util/Map;)V

    .line 200
    .end local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->nonKeyFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 202
    .restart local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v1, p1}, Lcom/sleepycat/persist/impl/FieldInfo;->migrateFromBeta(Ljava/util/Map;)V

    .line 203
    .end local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    goto :goto_1

    .line 204
    :cond_2
    return-void
.end method

.method newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 579
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    invoke-interface {v0, p1}, Lcom/sleepycat/persist/impl/Accessor;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z

    .line 584
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 585
    .local v0, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    :goto_0
    invoke-interface {v0}, Lcom/sleepycat/persist/impl/Accessor;->newInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method nullifySecKey(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "entity"    # Ljava/lang/Object;
    .param p3, "keyName"    # Ljava/lang/String;
    .param p4, "keyElement"    # Ljava/lang/Object;

    .line 780
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyAddresses:Ljava/util/Map;

    if-eqz v2, :cond_9

    .line 783
    move-object/from16 v3, p3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;

    .line 784
    .local v2, "addr":Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
    const/4 v4, 0x0

    if-eqz v2, :cond_8

    .line 785
    iget-object v5, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    iget v6, v2, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->fieldNum:I

    iget v7, v2, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->superLevel:I

    iget-boolean v8, v2, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->isSecField:Z

    .line 786
    move-object/from16 v15, p2

    invoke-interface {v5, v15, v6, v7, v8}, Lcom/sleepycat/persist/impl/Accessor;->getField(Ljava/lang/Object;IIZ)Ljava/lang/Object;

    move-result-object v5

    .line 787
    .local v5, "oldVal":Ljava/lang/Object;
    if-eqz v5, :cond_7

    .line 788
    const/4 v6, 0x1

    if-eqz v1, :cond_6

    .line 789
    move-object v7, v5

    check-cast v7, Lcom/sleepycat/persist/raw/RawObject;

    .line 790
    .local v7, "container":Lcom/sleepycat/persist/raw/RawObject;
    invoke-virtual {v7}, Lcom/sleepycat/persist/raw/RawObject;->getElements()[Ljava/lang/Object;

    move-result-object v8

    .line 791
    .local v8, "a1":[Ljava/lang/Object;
    if-eqz v8, :cond_0

    move v9, v6

    goto :goto_0

    :cond_0
    move v9, v4

    :goto_0
    move/from16 v16, v9

    .line 792
    .local v16, "isArray":Z
    if-nez v16, :cond_1

    .line 793
    invoke-static {v7}, Lcom/sleepycat/persist/impl/CollectionProxy;->getElements(Lcom/sleepycat/persist/raw/RawObject;)[Ljava/lang/Object;

    move-result-object v8

    .line 795
    :cond_1
    if-eqz v8, :cond_5

    .line 796
    const/4 v9, 0x0

    move v14, v9

    .local v14, "i":I
    :goto_1
    array-length v9, v8

    if-ge v14, v9, :cond_4

    .line 797
    aget-object v9, v8, v14

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 798
    array-length v9, v8

    add-int/lit8 v13, v9, -0x1

    .line 799
    .local v13, "len":I
    new-array v12, v13, [Ljava/lang/Object;

    .line 800
    .local v12, "a2":[Ljava/lang/Object;
    invoke-static {v8, v4, v12, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    add-int/lit8 v4, v14, 0x1

    sub-int v9, v13, v14

    invoke-static {v8, v4, v12, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    if-eqz v16, :cond_2

    .line 803
    iget-object v9, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    iget v11, v2, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->fieldNum:I

    iget v4, v2, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->superLevel:I

    iget-boolean v10, v2, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->isSecField:Z

    new-instance v6, Lcom/sleepycat/persist/raw/RawObject;

    .line 807
    invoke-virtual {v7}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v1

    invoke-direct {v6, v1, v12}, Lcom/sleepycat/persist/raw/RawObject;-><init>(Lcom/sleepycat/persist/raw/RawType;[Ljava/lang/Object;)V

    .line 804
    move v1, v10

    move-object/from16 v10, p2

    move-object v3, v12

    .end local v12    # "a2":[Ljava/lang/Object;
    .local v3, "a2":[Ljava/lang/Object;
    move v12, v4

    move v4, v13

    .end local v13    # "len":I
    .local v4, "len":I
    move v13, v1

    move v1, v14

    .end local v14    # "i":I
    .local v1, "i":I
    move-object v14, v6

    invoke-interface/range {v9 .. v14}, Lcom/sleepycat/persist/impl/Accessor;->setField(Ljava/lang/Object;IIZLjava/lang/Object;)V

    goto :goto_2

    .line 809
    .end local v1    # "i":I
    .end local v3    # "a2":[Ljava/lang/Object;
    .end local v4    # "len":I
    .restart local v12    # "a2":[Ljava/lang/Object;
    .restart local v13    # "len":I
    .restart local v14    # "i":I
    :cond_2
    move-object v3, v12

    move v4, v13

    move v1, v14

    .end local v12    # "a2":[Ljava/lang/Object;
    .end local v13    # "len":I
    .end local v14    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "a2":[Ljava/lang/Object;
    .restart local v4    # "len":I
    invoke-static {v7, v3}, Lcom/sleepycat/persist/impl/CollectionProxy;->setElements(Lcom/sleepycat/persist/raw/RawObject;[Ljava/lang/Object;)V

    .line 811
    :goto_2
    const/4 v6, 0x1

    return v6

    .line 796
    .end local v1    # "i":I
    .end local v3    # "a2":[Ljava/lang/Object;
    .end local v4    # "len":I
    .restart local v14    # "i":I
    :cond_3
    move v1, v14

    .end local v14    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v14, v1, 0x1

    move-object/from16 v3, p3

    move-object/from16 v1, p4

    const/4 v6, 0x1

    .end local v1    # "i":I
    .restart local v14    # "i":I
    goto :goto_1

    :cond_4
    move v1, v14

    .line 815
    .end local v14    # "i":I
    :cond_5
    return v4

    .line 817
    .end local v7    # "container":Lcom/sleepycat/persist/raw/RawObject;
    .end local v8    # "a1":[Ljava/lang/Object;
    .end local v16    # "isArray":Z
    :cond_6
    iget-object v9, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    iget v11, v2, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->fieldNum:I

    iget v12, v2, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->superLevel:I

    iget-boolean v13, v2, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->isSecField:Z

    const/4 v14, 0x0

    .line 818
    move-object/from16 v10, p2

    invoke-interface/range {v9 .. v14}, Lcom/sleepycat/persist/impl/Accessor;->setField(Ljava/lang/Object;IIZLjava/lang/Object;)V

    .line 820
    const/4 v1, 0x1

    return v1

    .line 823
    :cond_7
    return v4

    .line 826
    .end local v5    # "oldVal":Ljava/lang/Object;
    :cond_8
    move-object/from16 v15, p2

    return v4

    .line 781
    .end local v2    # "addr":Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
    :cond_9
    move-object/from16 v15, p2

    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 14
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 592
    move-object v0, p0

    if-eqz p3, :cond_0

    iget-object v1, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    :goto_0
    move-object v2, v1

    .line 593
    .local v2, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    const/4 v5, 0x0

    const v6, 0x7ffffffe

    const/4 v7, -0x1

    move-object v3, p1

    move-object/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/sleepycat/persist/impl/Accessor;->readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    .line 594
    const/4 v11, 0x0

    const v12, 0x7ffffffe

    const/4 v13, -0x1

    move-object v8, v2

    move-object v9, p1

    move-object/from16 v10, p2

    invoke-interface/range {v8 .. v13}, Lcom/sleepycat/persist/impl/Accessor;->readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    .line 595
    return-object p1
.end method

.method public readPriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 761
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 762
    .local v0, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->readPriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V

    .line 763
    return-void
.end method

.method setEvolveNeeded(Z)V
    .locals 0
    .param p1, "needed"    # Z

    .line 282
    iput-boolean p1, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->evolveNeeded:Z

    .line 283
    return-void
.end method

.method setSecKeyCorrectlyOrdered(Ljava/lang/String;)Z
    .locals 3
    .param p1, "keyName"    # Ljava/lang/String;

    .line 2275
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 2276
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2278
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    .line 2279
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->entityMeta:Lcom/sleepycat/persist/model/EntityMetadata;

    if-eqz v0, :cond_3

    .line 2280
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2281
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2282
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->incorrectlyOrderedSecKeys:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2284
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 2285
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 2279
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 834
    const v0, 0x7ffffffe

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->skipToSecKeyField(Lcom/sleepycat/persist/impl/RecordInput;I)V

    .line 835
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/ComplexFormat;->skipToNonKeyField(Lcom/sleepycat/persist/impl/RecordInput;I)V

    .line 836
    return-void
.end method

.method skipToSecKey(Lcom/sleepycat/persist/impl/RecordInput;Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->secKeyAddresses:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 852
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;

    .line 853
    .local v0, "addr":Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
    if-eqz v0, :cond_1

    .line 854
    iget-boolean v1, v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->isSecField:Z

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->clsFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    iget v2, v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->fieldNum:I

    invoke-direct {v1, p1, v2}, Lcom/sleepycat/persist/impl/ComplexFormat;->skipToSecKeyField(Lcom/sleepycat/persist/impl/RecordInput;I)V

    goto :goto_0

    .line 857
    :cond_0
    const v1, 0x7ffffffe

    invoke-direct {p0, p1, v1}, Lcom/sleepycat/persist/impl/ComplexFormat;->skipToSecKeyField(Lcom/sleepycat/persist/impl/RecordInput;I)V

    .line 858
    iget-object v1, v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->clsFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    iget v2, v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->fieldNum:I

    invoke-direct {v1, p1, v2}, Lcom/sleepycat/persist/impl/ComplexFormat;->skipToNonKeyField(Lcom/sleepycat/persist/impl/RecordInput;I)V

    .line 860
    :goto_0
    iget-object v1, v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    return-object v1

    .line 862
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 850
    .end local v0    # "addr":Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
    :cond_2
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
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

    .line 602
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 603
    .local v0, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->writeSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 604
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->writeNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 605
    return-void
.end method

.method writePriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 753
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->rawAccessor:Lcom/sleepycat/persist/impl/Accessor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat;->objAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 754
    .local v0, "accessor":Lcom/sleepycat/persist/impl/Accessor;
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/sleepycat/persist/impl/Accessor;->writePriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 755
    return-void
.end method
