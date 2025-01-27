.class Lcom/sleepycat/persist/impl/ReadOnlyCatalog;
.super Ljava/lang/Object;
.source "ReadOnlyCatalog.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/Catalog;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private formatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field

.field private formatMap:Ljava/util/Map;
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
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/Format;>;"
    .local p3, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sleepycat/persist/impl/ReadOnlyCatalog;->classLoader:Ljava/lang/ClassLoader;

    .line 43
    iput-object p2, p0, Lcom/sleepycat/persist/impl/ReadOnlyCatalog;->formatList:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/sleepycat/persist/impl/ReadOnlyCatalog;->formatMap:Ljava/util/Map;

    .line 45
    return-void
.end method


# virtual methods
.method public convertRawObject(Lcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p2, "converted"    # Ljava/util/IdentityHashMap;

    .line 92
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)",
            "Lcom/sleepycat/persist/impl/Format;"
        }
    .end annotation

    .line 84
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public createFormat(Ljava/lang/String;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)",
            "Lcom/sleepycat/persist/impl/Format;"
        }
    .end annotation

    .line 80
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getFormat(IZ)Lcom/sleepycat/persist/impl/Format;
    .locals 3
    .param p1, "formatId"    # I
    .param p2, "expectStored"    # Z

    .line 53
    const-string v0, "Format does not exist: "

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReadOnlyCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/Format;

    .line 54
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v1, :cond_0

    .line 58
    return-object v1

    .line 55
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p1    # "formatId":I
    .end local p2    # "expectStored":Z
    throw v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "format":Lcom/sleepycat/persist/impl/Format;
    .restart local p1    # "formatId":I
    .restart local p2    # "expectStored":Z
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/util/NoSuchElementException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;
    .locals 4
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "checkEntitySubclassIndexes"    # Z

    .line 66
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReadOnlyCatalog;->formatMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .line 67
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v0, :cond_0

    .line 71
    return-object v0

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class is not persistent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReadOnlyCatalog;->formatMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    return-object v0
.end method

.method public getInitVersion(Lcom/sleepycat/persist/impl/Format;Z)I
    .locals 1
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "forReader"    # Z

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public isRawAccess()Z
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public resolveClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReadOnlyCatalog;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lcom/sleepycat/persist/impl/SimpleCatalog;->resolveClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public resolveKeyClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReadOnlyCatalog;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lcom/sleepycat/persist/impl/SimpleCatalog;->resolveKeyClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
