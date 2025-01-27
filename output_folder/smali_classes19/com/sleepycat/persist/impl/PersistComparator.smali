.class public Lcom/sleepycat/persist/impl/PersistComparator;
.super Ljava/lang/Object;
.source "PersistComparator.java"

# interfaces
.implements Lcom/sleepycat/je/DatabaseComparator;
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sleepycat/je/DatabaseComparator;",
        "Ljava/util/Comparator<",
        "[B>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4876c4326d4598b5L


# instance fields
.field private transient binding:Lcom/sleepycat/persist/impl/PersistKeyBinding;

.field private comositeFieldOrder:[Ljava/lang/String;

.field private fieldFormatData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sleepycat/persist/impl/PersistKeyBinding;)V
    .locals 8
    .param p1, "binding"    # Lcom/sleepycat/persist/impl/PersistKeyBinding;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sleepycat/persist/impl/PersistComparator;->binding:Lcom/sleepycat/persist/impl/PersistKeyBinding;

    .line 49
    iget-object v0, p1, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    check-cast v0, Lcom/sleepycat/persist/impl/CompositeKeyFormat;

    .line 51
    .local v0, "format":Lcom/sleepycat/persist/impl/CompositeKeyFormat;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/impl/PersistComparator;->keyClassName:Ljava/lang/String;

    .line 52
    nop

    .line 53
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getClassMetadata()Lcom/sleepycat/persist/model/ClassMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->getCompositeKeyFields()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getFieldNameArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/impl/PersistComparator;->comositeFieldOrder:[Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;->getFieldInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 56
    .local v2, "field":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    .line 57
    .local v3, "fieldFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    move-object v4, v3

    check-cast v4, Lcom/sleepycat/persist/impl/EnumFormat;

    .line 59
    .local v4, "enumFormat":Lcom/sleepycat/persist/impl/EnumFormat;
    iget-object v5, p0, Lcom/sleepycat/persist/impl/PersistComparator;->fieldFormatData:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 60
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/sleepycat/persist/impl/PersistComparator;->fieldFormatData:Ljava/util/Map;

    .line 62
    :cond_0
    iget-object v5, p0, Lcom/sleepycat/persist/impl/PersistComparator;->fieldFormatData:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/EnumFormat;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/EnumFormat;->getFormatData()[Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v2    # "field":Lcom/sleepycat/persist/impl/FieldInfo;
    .end local v3    # "fieldFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v4    # "enumFormat":Lcom/sleepycat/persist/impl/EnumFormat;
    :cond_1
    goto :goto_0

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/persist/impl/PersistComparator;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public compare([B[B)I
    .locals 4
    .param p1, "b1"    # [B
    .param p2, "b2"    # [B

    .line 115
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistComparator;->binding:Lcom/sleepycat/persist/impl/PersistKeyBinding;

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    array-length v1, p1

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/sleepycat/persist/impl/PersistKeyBinding;->bytesToObject([BII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 122
    .local v0, "k1":Ljava/lang/Comparable;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistComparator;->binding:Lcom/sleepycat/persist/impl/PersistKeyBinding;

    array-length v3, p2

    .line 123
    invoke-virtual {v1, p2, v2, v3}, Lcom/sleepycat/persist/impl/PersistKeyBinding;->bytesToObject([BII)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 125
    .local v1, "k2":Ljava/lang/Comparable;
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 126
    .end local v0    # "k1":Ljava/lang/Comparable;
    .end local v1    # "k2":Ljava/lang/Comparable;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 116
    .end local v0    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :cond_0
    const-string v0, "Not initialized"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public initialize(Ljava/lang/ClassLoader;)V
    .locals 9
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 76
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistComparator;->fieldFormatData:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/sleepycat/persist/impl/ComparatorCatalog;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/persist/impl/ComparatorCatalog;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;)V

    .local v0, "catalog":Lcom/sleepycat/persist/impl/Catalog;
    goto :goto_2

    .line 79
    .end local v0    # "catalog":Lcom/sleepycat/persist/impl/Catalog;
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "enumFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    new-instance v2, Lcom/sleepycat/persist/impl/ComparatorCatalog;

    invoke-direct {v2, p1, v0}, Lcom/sleepycat/persist/impl/ComparatorCatalog;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;)V

    .line 83
    .local v2, "catalog":Lcom/sleepycat/persist/impl/Catalog;
    iget-object v3, p0, Lcom/sleepycat/persist/impl/PersistComparator;->fieldFormatData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 84
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 85
    .local v5, "fldClassName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 88
    .local v6, "enumNames":[Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, v5}, Lcom/sleepycat/persist/impl/Catalog;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v7, "fldClass":Ljava/lang/Class;
    nop

    .line 92
    new-instance v8, Lcom/sleepycat/persist/impl/EnumFormat;

    invoke-direct {v8, v2, v7, v6}, Lcom/sleepycat/persist/impl/EnumFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;[Ljava/lang/String;)V

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v5    # "fldClassName":Ljava/lang/String;
    .end local v6    # "enumNames":[Ljava/lang/String;
    .end local v7    # "fldClass":Ljava/lang/Class;
    goto :goto_0

    .line 89
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v5    # "fldClassName":Ljava/lang/String;
    .restart local v6    # "enumNames":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 95
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v5    # "fldClassName":Ljava/lang/String;
    .end local v6    # "enumNames":[Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/persist/impl/Format;

    .line 96
    .local v4, "fldFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v4, v2, v1}, Lcom/sleepycat/persist/impl/Format;->initializeIfNeeded(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;)V

    .line 97
    .end local v4    # "fldFormat":Lcom/sleepycat/persist/impl/Format;
    goto :goto_1

    .line 95
    :cond_2
    move-object v0, v2

    .line 101
    .end local v2    # "catalog":Lcom/sleepycat/persist/impl/Catalog;
    .local v0, "catalog":Lcom/sleepycat/persist/impl/Catalog;
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistComparator;->keyClassName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sleepycat/persist/impl/Catalog;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .local v1, "keyClass":Ljava/lang/Class;
    nop

    .line 105
    new-instance v2, Lcom/sleepycat/persist/impl/PersistKeyBinding;

    iget-object v3, p0, Lcom/sleepycat/persist/impl/PersistComparator;->comositeFieldOrder:[Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/sleepycat/persist/impl/PersistKeyBinding;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sleepycat/persist/impl/PersistComparator;->binding:Lcom/sleepycat/persist/impl/PersistKeyBinding;

    .line 107
    return-void

    .line 102
    .end local v1    # "keyClass":Ljava/lang/Class;
    :catch_1
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "[DPL comparator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, " keyClassName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistComparator;->keyClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, " comositeFieldOrder = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistComparator;->comositeFieldOrder:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x2c

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 147
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .end local v6    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, " fieldFormatData = {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistComparator;->fieldFormatData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 152
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v7, v6

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 154
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .end local v9    # "s":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 156
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    goto :goto_1

    .line 158
    :cond_2
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
