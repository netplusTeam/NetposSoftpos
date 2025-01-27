.class public Lbsh/collection/CollectionManagerImpl;
.super Lbsh/CollectionManager;
.source "CollectionManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lbsh/CollectionManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 46
    new-instance v0, Lbsh/collection/CollectionIterator;

    invoke-direct {v0, p1}, Lbsh/collection/CollectionIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "map"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 60
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isMap(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 51
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lbsh/CollectionManager;->isMap(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putInMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "map"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 69
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
