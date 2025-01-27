.class Lcom/sleepycat/persist/impl/StoredModel;
.super Lcom/sleepycat/persist/model/EntityModel;
.source "StoredModel.java"


# instance fields
.field private volatile catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

.field private volatile knownClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/PersistCatalog;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 34
    invoke-direct {p0}, Lcom/sleepycat/persist/model/EntityModel;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sleepycat/persist/impl/StoredModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 36
    return-void
.end method


# virtual methods
.method public getClassMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/ClassMetadata;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "metadata":Lcom/sleepycat/persist/model/ClassMetadata;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/StoredModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v1, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 53
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->isCurrentVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getClassMetadata()Lcom/sleepycat/persist/model/ClassMetadata;

    move-result-object v0

    .line 56
    :cond_0
    return-object v0
.end method

.method public getEntityMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "metadata":Lcom/sleepycat/persist/model/EntityMetadata;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/StoredModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v1, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 63
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->isCurrentVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getEntityMetadata()Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0
.end method

.method public getKnownClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/sleepycat/persist/impl/StoredModel;->knownClasses:Ljava/util/Set;

    return-object v0
.end method

.method protected setCatalog(Lcom/sleepycat/persist/impl/PersistCatalog;)V
    .locals 1
    .param p1, "newCatalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 44
    invoke-super {p0, p1}, Lcom/sleepycat/persist/model/EntityModel;->setCatalog(Lcom/sleepycat/persist/impl/PersistCatalog;)V

    .line 45
    iput-object p1, p0, Lcom/sleepycat/persist/impl/StoredModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 46
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getModelClasses()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/StoredModel;->knownClasses:Ljava/util/Set;

    .line 47
    return-void
.end method
