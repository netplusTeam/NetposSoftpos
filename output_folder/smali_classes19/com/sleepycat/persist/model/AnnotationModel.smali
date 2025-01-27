.class public Lcom/sleepycat/persist/model/AnnotationModel;
.super Lcom/sleepycat/persist/model/EntityModel;
.source "AnnotationModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;
    }
.end annotation


# instance fields
.field private classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/ClassMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private entityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private registeredSpecialClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/sleepycat/persist/model/EntityModel;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/model/AnnotationModel;->classMap:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/model/AnnotationModel;->entityMap:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/model/AnnotationModel;->registeredSpecialClasses:Ljava/util/Set;

    .line 73
    return-void
.end method

.method private getCompositeKeyFields(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/model/FieldMetadata;",
            ">;"
        }
    .end annotation

    .line 323
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v0, 0x0

    .line 324
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ": "

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 325
    .local v2, "field":Ljava/lang/reflect/Field;
    const-class v4, Lcom/sleepycat/persist/model/KeyField;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/persist/model/KeyField;

    .line 326
    .local v4, "keyField":Lcom/sleepycat/persist/model/KeyField;
    if-eqz v4, :cond_5

    .line 327
    invoke-interface {v4}, Lcom/sleepycat/persist/model/KeyField;->value()I

    move-result v5

    .line 328
    .local v5, "value":I
    const/4 v6, 0x1

    if-lt v5, v6, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-gt v5, v6, :cond_4

    .line 333
    if-nez v0, :cond_0

    .line 334
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 336
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v5, v3, :cond_2

    add-int/lit8 v3, v5, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 337
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@KeyField index value "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is used more than once: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 339
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v5, v3, :cond_3

    .line 342
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 344
    :cond_3
    new-instance v3, Lcom/sleepycat/persist/model/FieldMetadata;

    .line 345
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 346
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8}, Lcom/sleepycat/persist/model/FieldMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .local v3, "metadata":Lcom/sleepycat/persist/model/FieldMetadata;
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v0, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 329
    .end local v3    # "metadata":Lcom/sleepycat/persist/model/FieldMetadata;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unreasonable @KeyField index value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 331
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "keyField":Lcom/sleepycat/persist/model/KeyField;
    .end local v5    # "value":I
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 350
    :cond_6
    if-eqz v0, :cond_9

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_8

    .line 356
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 357
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 358
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@KeyField is missing for index value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 360
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    .end local v1    # "i":I
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@KeyField is missing on one or more instance fields: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_9
    if-eqz v0, :cond_a

    .line 365
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 367
    :cond_a
    return-object v0
.end method

.method private getElementClass(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 6
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 293
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 294
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 297
    :cond_0
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/16 v2, 0x2e

    if-eqz v1, :cond_3

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "typeArgs":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 301
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 303
    :cond_1
    if-eqz v1, :cond_2

    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 313
    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 306
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collection typed secondary key field must have a single generic type argument and a wildcard or type bound is not allowed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 310
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    .end local v1    # "typeArgs":[Ljava/lang/reflect/Type;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ONE_TO_MANY or MANY_TO_MANY secondary key field must have an array or Collection type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 318
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getInstanceFields(Ljava/util/List;Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 188
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 189
    .local v0, "nonDefaultRules":Z
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_9

    aget-object v5, v1, v4

    .line 190
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v6, Lcom/sleepycat/persist/model/NotPersistent;

    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v3

    .line 192
    .local v6, "notPersistent":Z
    :goto_1
    const-class v8, Lcom/sleepycat/persist/model/NotTransient;

    .line 193
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    move v7, v3

    .line 194
    .local v7, "notTransient":Z
    :goto_2
    if-eqz v6, :cond_3

    if-nez v7, :cond_2

    goto :goto_3

    .line 195
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both @NotTransient and @NotPersistent not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_3
    :goto_3
    if-nez v6, :cond_4

    if-eqz v7, :cond_5

    .line 199
    :cond_4
    const/4 v0, 0x1

    .line 201
    :cond_5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    .line 203
    .local v8, "mods":I
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_7

    if-nez v6, :cond_7

    .line 205
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v7, :cond_7

    .line 207
    :cond_6
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 210
    :cond_7
    const-class v9, Lcom/sleepycat/persist/model/PrimaryKey;

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-nez v9, :cond_8

    const-class v9, Lcom/sleepycat/persist/model/SecondaryKey;

    .line 211
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-nez v9, :cond_8

    const-class v9, Lcom/sleepycat/persist/model/KeyField;

    .line 212
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-nez v9, :cond_8

    .line 189
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "notPersistent":Z
    .end local v7    # "notTransient":Z
    .end local v8    # "mods":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 213
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "notPersistent":Z
    .restart local v7    # "notTransient":Z
    .restart local v8    # "mods":I
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "@PrimaryKey, @SecondaryKey and @KeyField not allowed on non-persistent field"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "notPersistent":Z
    .end local v7    # "notTransient":Z
    .end local v8    # "mods":I
    :cond_9
    return v0
.end method

.method private getPrimaryKey(Ljava/lang/Class;Ljava/util/List;)Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Lcom/sleepycat/persist/model/PrimaryKeyMetadata;"
        }
    .end annotation

    .line 224
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v0, 0x0

    .line 225
    .local v0, "foundField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 226
    .local v1, "sequence":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 227
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v4, Lcom/sleepycat/persist/model/PrimaryKey;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/persist/model/PrimaryKey;

    .line 228
    .local v4, "priKey":Lcom/sleepycat/persist/model/PrimaryKey;
    if-eqz v4, :cond_1

    .line 229
    if-nez v0, :cond_0

    .line 233
    move-object v0, v3

    .line 234
    invoke-interface {v4}, Lcom/sleepycat/persist/model/PrimaryKey;->sequence()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 236
    const/4 v1, 0x0

    goto :goto_1

    .line 230
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only one @PrimaryKey allowed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 231
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "priKey":Lcom/sleepycat/persist/model/PrimaryKey;
    :cond_1
    :goto_1
    goto :goto_0

    .line 241
    :cond_2
    if-eqz v0, :cond_3

    .line 242
    new-instance v2, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    .line 243
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-object v2

    .line 246
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private getSecondaryKeys(Ljava/lang/Class;Ljava/util/List;)Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/SecondaryKeyMetadata;",
            ">;"
        }
    .end annotation

    .line 253
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v0, 0x0

    .line 254
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 255
    .local v2, "field":Ljava/lang/reflect/Field;
    const-class v3, Lcom/sleepycat/persist/model/SecondaryKey;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/model/SecondaryKey;

    .line 256
    .local v3, "secKey":Lcom/sleepycat/persist/model/SecondaryKey;
    if-eqz v3, :cond_7

    .line 257
    invoke-interface {v3}, Lcom/sleepycat/persist/model/SecondaryKey;->relate()Lcom/sleepycat/persist/model/Relationship;

    move-result-object v13

    .line 258
    .local v13, "rel":Lcom/sleepycat/persist/model/Relationship;
    const/4 v4, 0x0

    .line 259
    .local v4, "elemClassName":Ljava/lang/String;
    sget-object v5, Lcom/sleepycat/persist/model/Relationship;->ONE_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    if-eq v13, v5, :cond_1

    sget-object v5, Lcom/sleepycat/persist/model/Relationship;->MANY_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    if-ne v13, v5, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v14, p0

    move-object v15, v4

    goto :goto_2

    .line 261
    :cond_1
    :goto_1
    move-object/from16 v14, p0

    invoke-direct {v14, v2}, Lcom/sleepycat/persist/model/AnnotationModel;->getElementClass(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    .line 263
    .end local v4    # "elemClassName":Ljava/lang/String;
    .local v15, "elemClassName":Ljava/lang/String;
    :goto_2
    invoke-interface {v3}, Lcom/sleepycat/persist/model/SecondaryKey;->name()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "keyName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 265
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_3

    .line 264
    :cond_2
    move-object v11, v4

    .line 267
    .end local v4    # "keyName":Ljava/lang/String;
    .local v11, "keyName":Ljava/lang/String;
    :goto_3
    invoke-interface {v3}, Lcom/sleepycat/persist/model/SecondaryKey;->relatedEntity()Ljava/lang/Class;

    move-result-object v10

    .line 268
    .local v10, "relatedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    if-eq v10, v4, :cond_3

    .line 269
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_3
    move-object v4, v5

    :goto_4
    move-object/from16 v16, v4

    .line 270
    .local v16, "relatedEntity":Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 271
    invoke-interface {v3}, Lcom/sleepycat/persist/model/SecondaryKey;->onRelatedEntityDelete()Lcom/sleepycat/persist/model/DeleteAction;

    move-result-object v4

    move-object v12, v4

    goto :goto_5

    :cond_4
    move-object v12, v5

    .line 272
    .local v12, "deleteAction":Lcom/sleepycat/persist/model/DeleteAction;
    :goto_5
    new-instance v17, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 273
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 274
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, v17

    move-object v8, v15

    move-object v9, v11

    move-object/from16 v18, v10

    .end local v10    # "relatedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v18, "relatedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v10, v13

    move-object/from16 v19, v1

    move-object v1, v11

    .end local v11    # "keyName":Ljava/lang/String;
    .local v1, "keyName":Ljava/lang/String;
    move-object/from16 v11, v16

    invoke-direct/range {v4 .. v12}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/persist/model/Relationship;Ljava/lang/String;Lcom/sleepycat/persist/model/DeleteAction;)V

    .line 276
    .local v4, "metadata":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    if-nez v0, :cond_5

    .line 277
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    .line 279
    :cond_5
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_6

    .line 280
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Only one @SecondaryKey with the same name allowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 282
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 256
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v4    # "metadata":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v12    # "deleteAction":Lcom/sleepycat/persist/model/DeleteAction;
    .end local v13    # "rel":Lcom/sleepycat/persist/model/Relationship;
    .end local v15    # "elemClassName":Ljava/lang/String;
    .end local v16    # "relatedEntity":Ljava/lang/String;
    .end local v18    # "relatedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v14, p0

    move-object/from16 v19, v1

    .line 285
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "secKey":Lcom/sleepycat/persist/model/SecondaryKey;
    :goto_6
    move-object/from16 v1, v19

    goto/16 :goto_0

    .line 286
    :cond_8
    move-object/from16 v14, p0

    if-eqz v0, :cond_9

    .line 287
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 289
    :cond_9
    return-object v0
.end method

.method private updateEntityInfo(Lcom/sleepycat/persist/model/ClassMetadata;)V
    .locals 9
    .param p1, "metadata"    # Lcom/sleepycat/persist/model/ClassMetadata;

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "entityClass":Ljava/lang/String;
    const/4 v1, 0x0

    .line 384
    .local v1, "priKey":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 386
    .local v2, "secKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    move-object v3, p1

    .local v3, "data":Lcom/sleepycat/persist/model/ClassMetadata;
    :goto_0
    if-eqz v3, :cond_6

    .line 387
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/ClassMetadata;->isEntityClass()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    if-nez v0, :cond_0

    .line 394
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/ClassMetadata;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 389
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An entity class may not be derived from another entity class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 392
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/ClassMetadata;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 397
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 398
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/ClassMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v1

    .line 401
    :cond_2
    nop

    .line 402
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/ClassMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v4

    .line 403
    .local v4, "classSecKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    if-eqz v4, :cond_3

    .line 404
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 405
    .local v6, "secKey":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v6}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v6    # "secKey":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    goto :goto_2

    .line 411
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/ClassMetadata;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sleepycat/persist/model/AnnotationModel;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .local v5, "cls":Ljava/lang/Class;
    nop

    .line 415
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 416
    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_5

    .line 417
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sleepycat/persist/model/AnnotationModel;->getClassMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/ClassMetadata;

    move-result-object v3

    .line 418
    if-eqz v3, :cond_4

    goto :goto_3

    .line 419
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Persistent class has non-persistent superclass: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 421
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 424
    :cond_5
    const/4 v3, 0x0

    .line 426
    .end local v4    # "classSecKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .end local v5    # "cls":Ljava/lang/Class;
    :goto_3
    goto/16 :goto_0

    .line 412
    .restart local v4    # "classSecKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    :catch_0
    move-exception v5

    .line 413
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v5}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 429
    .end local v3    # "data":Lcom/sleepycat/persist/model/ClassMetadata;
    .end local v4    # "classSecKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;>;"
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    if-eqz v0, :cond_9

    .line 430
    iget-object v3, p0, Lcom/sleepycat/persist/model/AnnotationModel;->entityMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;

    .line 431
    .local v3, "info":Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;
    if-nez v3, :cond_7

    .line 432
    new-instance v4, Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;-><init>(Lcom/sleepycat/persist/model/AnnotationModel$1;)V

    move-object v3, v4

    .line 433
    iget-object v4, p0, Lcom/sleepycat/persist/model/AnnotationModel;->entityMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_7
    if-eqz v1, :cond_8

    .line 439
    iput-object v1, v3, Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;->priKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    .line 440
    iget-object v4, v3, Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;->secKeys:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_4

    .line 436
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entity class has no primary key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 442
    .end local v3    # "info":Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;
    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public declared-synchronized getClassMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/ClassMetadata;
    .locals 22
    .param p1, "className"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/persist/model/AnnotationModel;->classMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/model/ClassMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    .line 106
    .local v12, "metadata":Lcom/sleepycat/persist/model/ClassMetadata;
    if-nez v12, :cond_a

    .line 109
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/persist/model/AnnotationModel;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 118
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    .end local p0    # "this":Lcom/sleepycat/persist/model/AnnotationModel;
    :cond_0
    iget-object v3, v1, Lcom/sleepycat/persist/model/AnnotationModel;->registeredSpecialClasses:Ljava/util/Set;

    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    const-class v3, Lcom/sleepycat/persist/model/Entity;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/model/Entity;

    move-object v13, v3

    .line 125
    .local v13, "entity":Lcom/sleepycat/persist/model/Entity;
    const-class v3, Lcom/sleepycat/persist/model/Persistent;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/model/Persistent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v3

    .line 126
    .local v14, "persistent":Lcom/sleepycat/persist/model/Persistent;
    if-nez v13, :cond_2

    if-nez v14, :cond_2

    .line 127
    monitor-exit p0

    return-object v2

    .line 129
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-nez v3, :cond_9

    .line 130
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_9

    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_9

    .line 136
    if-eqz v13, :cond_4

    if-nez v14, :cond_3

    goto :goto_0

    .line 137
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Both @Entity and @Persistent are not allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 139
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_4
    :goto_0
    if-eqz v13, :cond_5

    .line 145
    const/4 v2, 0x1

    .line 146
    .local v2, "isEntity":Z
    invoke-interface {v13}, Lcom/sleepycat/persist/model/Entity;->version()I

    move-result v3

    .line 147
    .local v3, "version":I
    const/4 v4, 0x0

    move v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v4

    .local v4, "proxiedClassName":Ljava/lang/String;
    goto :goto_1

    .line 149
    .end local v2    # "isEntity":Z
    .end local v3    # "version":I
    .end local v4    # "proxiedClassName":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .line 150
    .local v3, "isEntity":Z
    invoke-interface {v14}, Lcom/sleepycat/persist/model/Persistent;->version()I

    move-result v4

    .line 151
    .local v4, "version":I
    invoke-interface {v14}, Lcom/sleepycat/persist/model/Persistent;->proxyFor()Ljava/lang/Class;

    move-result-object v5

    .line 152
    .local v5, "proxiedClass":Ljava/lang/Class;
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_6

    .line 153
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_6
    move-object/from16 v17, v2

    move v15, v3

    move/from16 v16, v4

    .line 156
    .end local v3    # "isEntity":Z
    .end local v4    # "version":I
    .end local v5    # "proxiedClass":Ljava/lang/Class;
    .local v15, "isEntity":Z
    .local v16, "version":I
    .local v17, "proxiedClassName":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 157
    .local v10, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {v1, v10, v0}, Lcom/sleepycat/persist/model/AnnotationModel;->getInstanceFields(Ljava/util/List;Ljava/lang/Class;)Z

    move-result v2

    move/from16 v18, v2

    .line 158
    .local v18, "nonDefaultRules":Z
    const/4 v2, 0x0

    .line 159
    .local v2, "nonDefaultFields":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    if-eqz v18, :cond_8

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 161
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 162
    .local v4, "field":Ljava/lang/reflect/Field;
    new-instance v5, Lcom/sleepycat/persist/model/FieldMetadata;

    .line 163
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sleepycat/persist/model/FieldMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    nop

    .end local v4    # "field":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 166
    :cond_7
    nop

    .line 167
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    move-object v2, v3

    move-object/from16 v19, v2

    goto :goto_3

    .line 159
    :cond_8
    move-object/from16 v19, v2

    .line 170
    .end local v2    # "nonDefaultFields":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    .local v19, "nonDefaultFields":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    :goto_3
    new-instance v20, Lcom/sleepycat/persist/model/ClassMetadata;

    .line 172
    invoke-direct {v1, v0, v10}, Lcom/sleepycat/persist/model/AnnotationModel;->getPrimaryKey(Ljava/lang/Class;Ljava/util/List;)Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v7

    .line 173
    invoke-direct {v1, v0, v10}, Lcom/sleepycat/persist/model/AnnotationModel;->getSecondaryKeys(Ljava/lang/Class;Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 174
    invoke-direct {v1, v0, v10}, Lcom/sleepycat/persist/model/AnnotationModel;->getCompositeKeyFields(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move/from16 v4, v16

    move-object/from16 v5, v17

    move v6, v15

    move-object/from16 v21, v10

    .end local v10    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local v21, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lcom/sleepycat/persist/model/ClassMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/sleepycat/persist/model/PrimaryKeyMetadata;Ljava/util/Map;Ljava/util/List;Ljava/util/Collection;)V

    move-object/from16 v12, v20

    .line 176
    iget-object v2, v1, Lcom/sleepycat/persist/model/AnnotationModel;->classMap:Ljava/util/Map;

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct {v1, v12}, Lcom/sleepycat/persist/model/AnnotationModel;->updateEntityInfo(Lcom/sleepycat/persist/model/ClassMetadata;)V

    goto :goto_4

    .line 132
    .end local v15    # "isEntity":Z
    .end local v16    # "version":I
    .end local v17    # "proxiedClassName":Ljava/lang/String;
    .end local v18    # "nonDefaultRules":Z
    .end local v19    # "nonDefaultFields":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/persist/model/FieldMetadata;>;"
    .end local v21    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@Entity and @Persistent not allowed for enum, interface, or primitive type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "entity":Lcom/sleepycat/persist/model/Entity;
    .end local v14    # "persistent":Lcom/sleepycat/persist/model/Persistent;
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 111
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    monitor-exit p0

    return-object v2

    .line 180
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_a
    :goto_4
    monitor-exit p0

    return-object v12

    .line 104
    .end local v12    # "metadata":Lcom/sleepycat/persist/model/ClassMetadata;
    .end local p1    # "className":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEntityMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    monitor-enter p0

    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/model/AnnotationModel;->getClassMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/ClassMetadata;

    .line 93
    iget-object v0, p0, Lcom/sleepycat/persist/model/AnnotationModel;->entityMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;

    .line 94
    .local v0, "info":Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;
    if-eqz v0, :cond_0

    .line 95
    new-instance v1, Lcom/sleepycat/persist/model/EntityMetadata;

    iget-object v2, v0, Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;->priKey:Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    iget-object v3, v0, Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;->secKeys:Ljava/util/Map;

    .line 97
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/sleepycat/persist/model/EntityMetadata;-><init>(Ljava/lang/String;Lcom/sleepycat/persist/model/PrimaryKeyMetadata;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-object v1

    .line 99
    .end local p0    # "this":Lcom/sleepycat/persist/model/AnnotationModel;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 90
    .end local v0    # "info":Lcom/sleepycat/persist/model/AnnotationModel$EntityInfo;
    .end local p1    # "className":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKnownClasses()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sleepycat/persist/model/AnnotationModel;->classMap:Ljava/util/Map;

    .line 80
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-object v0

    .line 78
    .end local p0    # "this":Lcom/sleepycat/persist/model/AnnotationModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKnownSpecialClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/sleepycat/persist/model/AnnotationModel;->registeredSpecialClasses:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
