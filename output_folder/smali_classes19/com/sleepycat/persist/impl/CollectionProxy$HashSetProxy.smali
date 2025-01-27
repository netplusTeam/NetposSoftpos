.class Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;
.super Lcom/sleepycat/persist/impl/CollectionProxy;
.source "CollectionProxy.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/Enhanced;


# annotations
.annotation runtime Lcom/sleepycat/persist/model/Persistent;
    proxyFor = Ljava/util/HashSet;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/CollectionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashSetProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/persist/impl/CollectionProxy<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private synthetic $invoke$special$bdbGetField(Ljava/lang/Object;IIZ)Ljava/lang/Object;
    .locals 0

    if-lez p3, :cond_0

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;->$invoke$special$bdbGetField(Ljava/lang/Object;IIZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic $invoke$special$bdbSetField(Ljava/lang/Object;IIZLjava/lang/Object;)V
    .locals 6

    if-lez p3, :cond_0

    add-int/lit8 v3, p3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;->$invoke$special$bdbSetField(Ljava/lang/Object;IIZLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;

    invoke-direct {v0}, Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;-><init>()V

    const-string v1, "com.sleepycat.persist.impl.CollectionProxy$HashSetProxy"

    invoke-static {v1, v0}, Lcom/sleepycat/persist/impl/EnhancedAccessor;->registerClass(Ljava/lang/String;Lcom/sleepycat/persist/impl/Enhanced;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 86
    .local p0, "this":Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;, "Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/CollectionProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public bdbGetField(Ljava/lang/Object;IIZ)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;->$invoke$special$bdbGetField(Ljava/lang/Object;IIZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bdbIsPriKeyFieldNullOrZero()Z
    .locals 1

    invoke-super {p0}, Lcom/sleepycat/persist/impl/CollectionProxy;->bdbIsPriKeyFieldNullOrZero()Z

    move-result v0

    return v0
.end method

.method public bdbNewArray(I)Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;

    return-object p1
.end method

.method public bdbNewInstance()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;

    invoke-direct {v0}, Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;-><init>()V

    return-object v0
.end method

.method public bdbReadCompositeKeyFields(Lcom/sleepycat/persist/impl/EntityInput;[Lcom/sleepycat/persist/impl/Format;)V
    .locals 0

    return-void
.end method

.method public bdbReadNonKeyFields(Lcom/sleepycat/persist/impl/EntityInput;III)V
    .locals 0

    if-eqz p4, :cond_0

    add-int/lit8 p4, p4, -0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/CollectionProxy;->bdbReadNonKeyFields(Lcom/sleepycat/persist/impl/EntityInput;III)V

    :cond_0
    return-void
.end method

.method public bdbReadPriKeyField(Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Format;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sleepycat/persist/impl/CollectionProxy;->bdbReadPriKeyField(Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Format;)V

    return-void
.end method

.method public bdbReadSecKeyFields(Lcom/sleepycat/persist/impl/EntityInput;III)V
    .locals 0

    if-eqz p4, :cond_0

    add-int/lit8 p4, p4, -0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/CollectionProxy;->bdbReadSecKeyFields(Lcom/sleepycat/persist/impl/EntityInput;III)V

    :cond_0
    return-void
.end method

.method public bdbSetField(Ljava/lang/Object;IIZLjava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;->$invoke$special$bdbSetField(Ljava/lang/Object;IIZLjava/lang/Object;)V

    return-void
.end method

.method public bdbSetPriField(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sleepycat/persist/impl/CollectionProxy;->bdbSetPriField(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bdbWriteCompositeKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;[Lcom/sleepycat/persist/impl/Format;)V
    .locals 0

    return-void
.end method

.method public bdbWriteNonKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sleepycat/persist/impl/CollectionProxy;->bdbWriteNonKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;)V

    return-void
.end method

.method public bdbWritePriKeyField(Lcom/sleepycat/persist/impl/EntityOutput;Lcom/sleepycat/persist/impl/Format;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sleepycat/persist/impl/CollectionProxy;->bdbWritePriKeyField(Lcom/sleepycat/persist/impl/EntityOutput;Lcom/sleepycat/persist/impl/Format;)V

    return-void
.end method

.method public bdbWriteSecKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sleepycat/persist/impl/CollectionProxy;->bdbWriteSecKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;)V

    return-void
.end method

.method public bridge synthetic convertProxy()Ljava/lang/Object;
    .locals 1

    .line 83
    .local p0, "this":Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;, "Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy<TE;>;"
    invoke-super {p0}, Lcom/sleepycat/persist/impl/CollectionProxy;->convertProxy()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initializeProxy(Ljava/lang/Object;)V
    .locals 0

    .line 83
    .local p0, "this":Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;, "Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy<TE;>;"
    check-cast p1, Ljava/util/Collection;

    invoke-super {p0, p1}, Lcom/sleepycat/persist/impl/CollectionProxy;->initializeProxy(Ljava/util/Collection;)V

    return-void
.end method

.method protected newInstance(I)Ljava/util/Collection;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;, "Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy<TE;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method
