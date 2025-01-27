.class Lcom/sleepycat/persist/impl/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Lcom/sleepycat/persist/raw/RawField;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sleepycat/persist/raw/RawField;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/persist/impl/FieldInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1ca041e97a64e978L


# instance fields
.field private className:Ljava/lang/String;

.field private transient cls:Ljava/lang/Class;

.field private transient field:Ljava/lang/reflect/Field;

.field private format:Lcom/sleepycat/persist/impl/Format;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->name:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->cls:Ljava/lang/Class;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->className:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/sleepycat/persist/impl/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 131
    return-void
.end method

.method private collectParameterizedTypeFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;Ljava/lang/reflect/ParameterizedType;)V
    .locals 3
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p3, "parameType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Catalog;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")V"
        }
    .end annotation

    .line 171
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 172
    .local v0, "types":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 173
    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    .line 174
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1, p2, v2}, Lcom/sleepycat/persist/impl/FieldInfo;->collectParameterizedTypeFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_1

    .line 176
    :cond_0
    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 182
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p1, v2, p2}, Lcom/sleepycat/persist/impl/Catalog;->createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    .line 172
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method static getField(Ljava/util/List;Ljava/lang/String;)Lcom/sleepycat/persist/impl/FieldInfo;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sleepycat/persist/impl/FieldInfo;"
        }
    .end annotation

    .line 102
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    invoke-static {p0, p1}, Lcom/sleepycat/persist/impl/FieldInfo;->getFieldIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 104
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    return-object v1

    .line 106
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static getFieldIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 111
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 112
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 113
    .local v1, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    return v0

    .line 111
    .end local v1    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static getInstanceFields(Ljava/lang/Class;Lcom/sleepycat/persist/model/ClassMetadata;)Ljava/util/List;
    .locals 9
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "clsMeta"    # Lcom/sleepycat/persist/model/ClassMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/sleepycat/persist/model/ClassMetadata;",
            ")",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    if-eqz p1, :cond_3

    .line 54
    nop

    .line 55
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/ClassMetadata;->getPersistentFields()Ljava/util/Collection;

    move-result-object v1

    .line 56
    .local v1, "persistentFields":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    if-eqz v1, :cond_3

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 58
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "clsName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/persist/model/FieldMetadata;

    .line 60
    .local v4, "fieldMeta":Lcom/sleepycat/persist/model/FieldMetadata;
    invoke-virtual {v4}, Lcom/sleepycat/persist/model/FieldMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Persistent field "

    if-eqz v5, :cond_2

    .line 67
    :try_start_0
    invoke-virtual {v4}, Lcom/sleepycat/persist/model/FieldMetadata;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v5, "field":Ljava/lang/reflect/Field;
    nop

    .line 73
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {v4}, Lcom/sleepycat/persist/model/FieldMetadata;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 79
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 84
    new-instance v6, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {v6, v5}, Lcom/sleepycat/persist/impl/FieldInfo;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v4    # "fieldMeta":Lcom/sleepycat/persist/model/FieldMetadata;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 80
    .restart local v4    # "fieldMeta":Lcom/sleepycat/persist/model/FieldMetadata;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " may not be static"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must be of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 77
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not declared in this class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 61
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must be declared in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    .end local v1    # "persistentFields":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    .end local v2    # "clsName":Ljava/lang/String;
    .end local v4    # "fieldMeta":Lcom/sleepycat/persist/model/FieldMetadata;
    :cond_3
    if-nez v0, :cond_5

    .line 89
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 90
    .local v1, "declaredFields":[Ljava/lang/reflect/Field;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 91
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 92
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 93
    .local v5, "mods":I
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 94
    new-instance v6, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {v6, v4}, Lcom/sleepycat/persist/impl/FieldInfo;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "mods":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_5
    return-object v0
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

    .line 141
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->cls:Ljava/lang/Class;

    invoke-interface {p1, v0, p2}, Lcom/sleepycat/persist/impl/Catalog;->createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->format:Lcom/sleepycat/persist/impl/Format;

    .line 150
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 151
    .local v0, "cls":Ljava/lang/Class;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/FieldInfo;->format:Lcom/sleepycat/persist/impl/Format;

    instance-of v1, v1, Lcom/sleepycat/persist/impl/NonPersistentFormat;

    if-eqz v1, :cond_1

    const-class v1, Ljava/util/Map;

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/util/Collection;

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/sleepycat/persist/impl/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 157
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 156
    invoke-direct {p0, p1, p2, v1}, Lcom/sleepycat/persist/impl/FieldInfo;->collectParameterizedTypeFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;Ljava/lang/reflect/ParameterizedType;)V

    .line 160
    :cond_1
    return-void
.end method

.method public compareTo(Lcom/sleepycat/persist/impl/FieldInfo;)I
    .locals 2
    .param p1, "o"    # Lcom/sleepycat/persist/impl/FieldInfo;

    .line 236
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/sleepycat/persist/impl/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/impl/FieldInfo;->compareTo(Lcom/sleepycat/persist/impl/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 241
    instance-of v0, p1, Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v0, :cond_0

    .line 242
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 243
    .local v0, "o":Lcom/sleepycat/persist/impl/FieldInfo;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/FieldInfo;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/sleepycat/persist/impl/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 245
    .end local v0    # "o":Lcom/sleepycat/persist/impl/FieldInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getClassName()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method getFieldClass(Lcom/sleepycat/persist/impl/Catalog;)Ljava/lang/Class;
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;

    .line 213
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->cls:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sleepycat/persist/impl/Catalog;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->cls:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 220
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->cls:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->format:Lcom/sleepycat/persist/impl/Format;

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/sleepycat/persist/raw/RawType;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I

    .line 207
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->format:Lcom/sleepycat/persist/impl/Format;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isNew()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->format:Lcom/sleepycat/persist/impl/Format;

    .line 210
    :cond_0
    return-void
.end method

.method migrateFromBeta(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation

    .line 188
    .local p1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->format:Lcom/sleepycat/persist/impl/Format;

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->format:Lcom/sleepycat/persist/impl/Format;

    .line 190
    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/FieldInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 194
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Field name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/impl/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/impl/FieldInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
