.class abstract Lcom/sleepycat/persist/impl/MapProxy;
.super Ljava/lang/Object;
.source "MapProxy.java"

# interfaces
.implements Lcom/sleepycat/persist/model/PersistentProxy;
.implements Lcom/sleepycat/persist/impl/Enhanced;


# annotations
.annotation runtime Lcom/sleepycat/persist/model/Persistent;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/impl/MapProxy$LinkedHashMapProxy;,
        Lcom/sleepycat/persist/impl/MapProxy$TreeMapProxy;,
        Lcom/sleepycat/persist/impl/MapProxy$HashMapProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sleepycat/persist/model/PersistentProxy<",
        "Ljava/util/Map<",
        "TK;TV;>;>;",
        "Lcom/sleepycat/persist/impl/Enhanced;"
    }
.end annotation


# instance fields
.field private keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sleepycat.persist.impl.MapProxy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/persist/impl/EnhancedAccessor;->registerClass(Ljava/lang/String;Lcom/sleepycat/persist/impl/Enhanced;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 35
    .local p0, "this":Lcom/sleepycat/persist/impl/MapProxy;, "Lcom/sleepycat/persist/impl/MapProxy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    iget-object p1, p0, Lcom/sleepycat/persist/impl/MapProxy;->values:[Ljava/lang/Object;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/sleepycat/persist/impl/MapProxy;->keys:[Ljava/lang/Object;

    return-object p1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
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

    if-gtz p4, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/sleepycat/persist/impl/MapProxy;->keys:[Ljava/lang/Object;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :pswitch_1
    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/sleepycat/persist/impl/MapProxy;->values:[Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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

    iput-object p5, p0, Lcom/sleepycat/persist/impl/MapProxy;->values:[Ljava/lang/Object;

    return-void

    :pswitch_1
    check-cast p5, [Ljava/lang/Object;

    iput-object p5, p0, Lcom/sleepycat/persist/impl/MapProxy;->keys:[Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
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

    iget-object v0, p0, Lcom/sleepycat/persist/impl/MapProxy;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    iget-object v0, p0, Lcom/sleepycat/persist/impl/MapProxy;->values:[Ljava/lang/Object;

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

    .line 29
    .local p0, "this":Lcom/sleepycat/persist/impl/MapProxy;, "Lcom/sleepycat/persist/impl/MapProxy<TK;TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/MapProxy;->convertProxy()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final convertProxy()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/sleepycat/persist/impl/MapProxy;, "Lcom/sleepycat/persist/impl/MapProxy<TK;TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/MapProxy;->values:[Ljava/lang/Object;

    array-length v0, v0

    .line 51
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/impl/MapProxy;->newInstance(I)Ljava/util/Map;

    move-result-object v1

    .line 52
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 53
    iget-object v3, p0, Lcom/sleepycat/persist/impl/MapProxy;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/sleepycat/persist/impl/MapProxy;->values:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public bridge synthetic initializeProxy(Ljava/lang/Object;)V
    .locals 0

    .line 29
    .local p0, "this":Lcom/sleepycat/persist/impl/MapProxy;, "Lcom/sleepycat/persist/impl/MapProxy<TK;TV;>;"
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/impl/MapProxy;->initializeProxy(Ljava/util/Map;)V

    return-void
.end method

.method public final initializeProxy(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/sleepycat/persist/impl/MapProxy;, "Lcom/sleepycat/persist/impl/MapProxy<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 39
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/sleepycat/persist/impl/MapProxy;->keys:[Ljava/lang/Object;

    .line 40
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/sleepycat/persist/impl/MapProxy;->values:[Ljava/lang/Object;

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 43
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v4, p0, Lcom/sleepycat/persist/impl/MapProxy;->keys:[Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    .line 44
    iget-object v4, p0, Lcom/sleepycat/persist/impl/MapProxy;->values:[Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    .line 45
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method protected abstract newInstance(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method
