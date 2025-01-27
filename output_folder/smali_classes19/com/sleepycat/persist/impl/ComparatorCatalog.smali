.class Lcom/sleepycat/persist/impl/ComparatorCatalog;
.super Lcom/sleepycat/persist/impl/SimpleCatalog;
.source "ComparatorCatalog.java"


# instance fields
.field private final formatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p2, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/SimpleCatalog;-><init>(Ljava/lang/ClassLoader;)V

    .line 31
    iput-object p2, p0, Lcom/sleepycat/persist/impl/ComparatorCatalog;->formatMap:Ljava/util/Map;

    .line 32
    return-void
.end method


# virtual methods
.method public getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ComparatorCatalog;->formatMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .line 37
    .local v0, "f":Lcom/sleepycat/persist/impl/Format;
    if-eqz v0, :cond_0

    .line 38
    return-object v0

    .line 41
    .end local v0    # "f":Lcom/sleepycat/persist/impl/Format;
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/persist/impl/SimpleCatalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    return-object v0
.end method
