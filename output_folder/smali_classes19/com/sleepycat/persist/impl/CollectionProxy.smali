.class abstract Lcom/sleepycat/persist/impl/CollectionProxy;
.super Ljava/lang/Object;
.source "CollectionProxy.java"

# interfaces
.implements Lcom/sleepycat/persist/model/PersistentProxy;
.implements Lcom/sleepycat/persist/impl/Enhanced;


# annotations
.annotation runtime Lcom/sleepycat/persist/model/Persistent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/impl/CollectionProxy$TreeSetProxy;,
        Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;,
        Lcom/sleepycat/persist/impl/CollectionProxy$LinkedListProxy;,
        Lcom/sleepycat/persist/impl/CollectionProxy$ArrayListProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sleepycat/persist/model/PersistentProxy<",
        "Ljava/util/Collection<",
        "TE;>;>;",
        "Lcom/sleepycat/persist/impl/Enhanced;"
    }
.end annotation


# instance fields
.field private elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sleepycat.persist.impl.CollectionProxy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/persist/impl/EnhancedAccessor;->registerClass(Ljava/lang/String;Lcom/sleepycat/persist/impl/Enhanced;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 42
    .local p0, "this":Lcom/sleepycat/persist/impl/CollectionProxy;, "Lcom/sleepycat/persist/impl/CollectionProxy<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyElements(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/util/Set;)V
    .locals 8
    .param p0, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "keyFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "results"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/sleepycat/persist/impl/Format;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/raw/RawObject;

    .line 159
    .local v1, "collection":Lcom/sleepycat/persist/raw/RawObject;
    invoke-virtual {p1, v1, p0, v0}, Lcom/sleepycat/persist/impl/Format;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/sleepycat/persist/raw/RawObject;

    .line 160
    invoke-static {v1}, Lcom/sleepycat/persist/impl/CollectionProxy;->getElements(Lcom/sleepycat/persist/raw/RawObject;)[Ljava/lang/Object;

    move-result-object v2

    .line 161
    .local v2, "elements":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 162
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 163
    .local v5, "elem":Ljava/lang/Object;
    new-instance v6, Lcom/sleepycat/persist/impl/RecordOutput;

    .line 164
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RecordInput;->getCatalog()Lcom/sleepycat/persist/impl/Catalog;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/sleepycat/persist/impl/RecordOutput;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    .line 165
    .local v6, "output":Lcom/sleepycat/persist/impl/RecordOutput;
    invoke-virtual {v6, v5, p2}, Lcom/sleepycat/persist/impl/RecordOutput;->writeKeyObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    .line 166
    new-instance v7, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v7}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 167
    .local v7, "entry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {v6, v7}, Lcom/sleepycat/bind/tuple/TupleBase;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 168
    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v5    # "elem":Ljava/lang/Object;
    .end local v6    # "output":Lcom/sleepycat/persist/impl/RecordOutput;
    .end local v7    # "entry":Lcom/sleepycat/je/DatabaseEntry;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method static getElements(Lcom/sleepycat/persist/raw/RawObject;)[Ljava/lang/Object;
    .locals 5
    .param p0, "collection"    # Lcom/sleepycat/persist/raw/RawObject;

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "value":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/sleepycat/persist/raw/RawObject;->getValues()Ljava/util/Map;

    move-result-object v1

    .line 107
    .local v1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 108
    const-string v2, "elements"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sleepycat/persist/raw/RawObject;->getSuper()Lcom/sleepycat/persist/raw/RawObject;

    move-result-object p0

    .line 113
    .end local v1    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v1, :cond_3

    .line 119
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/persist/raw/RawObject;

    .line 120
    .local v1, "rawObj":Lcom/sleepycat/persist/raw/RawObject;
    invoke-virtual {v1}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/Format;

    .line 121
    .local v2, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getComponentType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 126
    invoke-virtual {v1}, Lcom/sleepycat/persist/raw/RawObject;->getElements()[Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 123
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Collection proxy \'elements\' field must be an Object array"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    .end local v1    # "rawObj":Lcom/sleepycat/persist/raw/RawObject;
    .end local v2    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Collection proxy for a secondary key field must contain a field named \'elements\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static setElements(Lcom/sleepycat/persist/raw/RawObject;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "collection"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p1, "elements"    # [Ljava/lang/Object;

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "value":Lcom/sleepycat/persist/raw/RawObject;
    :goto_0
    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/sleepycat/persist/raw/RawObject;->getValues()Ljava/util/Map;

    move-result-object v1

    .line 133
    .local v1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 134
    const-string v2, "elements"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    new-instance v3, Lcom/sleepycat/persist/raw/RawObject;

    .line 137
    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/sleepycat/persist/raw/RawObject;-><init>(Lcom/sleepycat/persist/raw/RawType;[Ljava/lang/Object;)V

    .line 136
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/persist/raw/RawObject;->getSuper()Lcom/sleepycat/persist/raw/RawObject;

    move-result-object p0

    .line 142
    .end local v1    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 143
    :cond_2
    if-eqz v0, :cond_3

    .line 146
    return-void

    .line 144
    :cond_3
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public bdbGetField(Ljava/lang/Object;IIZ)Ljava/lang/Object;
    .locals 0

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sleepycat/persist/impl/CollectionProxy;->elements:[Ljava/lang/Object;

    return-object p1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bdbIsPriKeyFieldNullOrZero()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bdbNewArray(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bdbNewInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bdbReadCompositeKeyFields(Lcom/sleepycat/persist/impl/EntityInput;[Lcom/sleepycat/persist/impl/Format;)V
    .locals 0

    return-void
.end method

.method public bdbReadNonKeyFields(Lcom/sleepycat/persist/impl/EntityInput;III)V
    .locals 0

    if-gtz p4, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/sleepycat/persist/impl/CollectionProxy;->elements:[Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bdbReadPriKeyField(Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Format;)V
    .locals 0

    return-void
.end method

.method public bdbReadSecKeyFields(Lcom/sleepycat/persist/impl/EntityInput;III)V
    .locals 0

    return-void
.end method

.method public bdbSetField(Ljava/lang/Object;IIZLjava/lang/Object;)V
    .locals 0

    if-lez p3, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p5, [Ljava/lang/Object;

    iput-object p5, p0, Lcom/sleepycat/persist/impl/CollectionProxy;->elements:[Ljava/lang/Object;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bdbSetPriField(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public bdbWriteCompositeKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;[Lcom/sleepycat/persist/impl/Format;)V
    .locals 0

    return-void
.end method

.method public bdbWriteNonKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 2

    iget-object v0, p0, Lcom/sleepycat/persist/impl/CollectionProxy;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    return-void
.end method

.method public bdbWritePriKeyField(Lcom/sleepycat/persist/impl/EntityOutput;Lcom/sleepycat/persist/impl/Format;)V
    .locals 0

    return-void
.end method

.method public bdbWriteSecKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic convertProxy()Ljava/lang/Object;
    .locals 1

    .line 36
    .local p0, "this":Lcom/sleepycat/persist/impl/CollectionProxy;, "Lcom/sleepycat/persist/impl/CollectionProxy<TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/CollectionProxy;->convertProxy()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final convertProxy()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/sleepycat/persist/impl/CollectionProxy;, "Lcom/sleepycat/persist/impl/CollectionProxy<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/CollectionProxy;->elements:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/impl/CollectionProxy;->newInstance(I)Ljava/util/Collection;

    move-result-object v0

    .line 55
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    iget-object v1, p0, Lcom/sleepycat/persist/impl/CollectionProxy;->elements:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 56
    .local v4, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method

.method public bridge synthetic initializeProxy(Ljava/lang/Object;)V
    .locals 0

    .line 36
    .local p0, "this":Lcom/sleepycat/persist/impl/CollectionProxy;, "Lcom/sleepycat/persist/impl/CollectionProxy<TE;>;"
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/impl/CollectionProxy;->initializeProxy(Ljava/util/Collection;)V

    return-void
.end method

.method public final initializeProxy(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/sleepycat/persist/impl/CollectionProxy;, "Lcom/sleepycat/persist/impl/CollectionProxy<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/CollectionProxy;->elements:[Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "element":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/sleepycat/persist/impl/CollectionProxy;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 49
    nop

    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method protected abstract newInstance(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end method
