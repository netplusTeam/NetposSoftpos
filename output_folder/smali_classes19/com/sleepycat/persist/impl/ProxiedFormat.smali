.class public Lcom/sleepycat/persist/impl/ProxiedFormat;
.super Lcom/sleepycat/persist/impl/Format;
.source "ProxiedFormat.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0xde0d46609fb7af0L


# instance fields
.field private transient proxyClassName:Ljava/lang/String;

.field private proxyFormat:Lcom/sleepycat/persist/impl/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "proxiedType"    # Ljava/lang/Class;
    .param p3, "proxyClassName"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/Format;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    .line 39
    iput-object p3, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyClassName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private getProxyClassName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method areNestedRefsProhibited()Z
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V
    .locals 1
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

    .line 71
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {p1, v0, p2}, Lcom/sleepycat/persist/impl/Catalog;->createFormat(Ljava/lang/String;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    .line 73
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method convertRawObject(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "rawObject"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p4, "converted"    # Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 150
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/persist/impl/Format;->convertRawObject(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/model/PersistentProxy;

    .line 151
    .local v0, "proxy":Lcom/sleepycat/persist/model/PersistentProxy;
    invoke-interface {v0}, Lcom/sleepycat/persist/model/PersistentProxy;->convertProxy()Ljava/lang/Object;

    move-result-object v1

    .line 152
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p4, p3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-object v1
.end method

.method copySecMultiKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;Ljava/util/Set;)V
    .locals 0
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "keyFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "results"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 167
    invoke-static {p1, p0, p2, p3}, Lcom/sleepycat/persist/impl/CollectionProxy;->copyElements(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/util/Set;)V

    .line 168
    return-void
.end method

.method evolve(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 7
    .param p1, "newFormatParam"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 172
    instance-of v0, p1, Lcom/sleepycat/persist/impl/ProxiedFormat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->allowEvolveFromProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p2, p0, p0, p1}, Lcom/sleepycat/persist/impl/Evolver;->useEvolvedFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Reader;Lcom/sleepycat/persist/impl/Format;)V

    .line 187
    return v1

    .line 189
    :cond_0
    nop

    .line 190
    const-string v0, "A proxied class may not be changed to a different type"

    invoke-virtual {p2, p0, p1, v2, v0}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return v3

    .line 194
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/ProxiedFormat;

    .line 195
    .local v0, "newFormat":Lcom/sleepycat/persist/impl/ProxiedFormat;
    iget-object v4, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {p2, v4}, Lcom/sleepycat/persist/impl/Evolver;->evolveFormat(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 196
    return v3

    .line 198
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    .line 199
    .local v4, "newProxyFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-direct {v0}, Lcom/sleepycat/persist/impl/ProxiedFormat;->getProxyClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The proxy class for this type has been changed from: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " to: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    invoke-direct {v0}, Lcom/sleepycat/persist/impl/ProxiedFormat;->getProxyClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {p2, p0, v0, v2, v1}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return v3

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    if-eq v4, v2, :cond_4

    .line 209
    invoke-virtual {p2, p0, p0, v0}, Lcom/sleepycat/persist/impl/Evolver;->useEvolvedFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Reader;Lcom/sleepycat/persist/impl/Format;)V

    goto :goto_0

    .line 211
    :cond_4
    invoke-virtual {p2, p0, v0}, Lcom/sleepycat/persist/impl/Evolver;->useOldFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)V

    .line 213
    :goto_0
    return v1
.end method

.method initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I

    .line 78
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {p1, v0}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0, p0}, Lcom/sleepycat/persist/impl/Format;->setProxiedFormat(Lcom/sleepycat/persist/impl/Format;)V

    .line 84
    return-void
.end method

.method newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 88
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ProxiedFormat;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getReader()Lcom/sleepycat/persist/impl/Reader;

    move-result-object v0

    .line 96
    .local v0, "reader":Lcom/sleepycat/persist/impl/Reader;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 97
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sleepycat/persist/impl/Reader;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 108
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sleepycat/persist/impl/Reader;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1, v2}, Lcom/sleepycat/persist/impl/Reader;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/sleepycat/persist/model/PersistentProxy;

    if-eqz v2, :cond_1

    .line 111
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/persist/model/PersistentProxy;

    invoke-interface {v2}, Lcom/sleepycat/persist/model/PersistentProxy;->convertProxy()Ljava/lang/Object;

    move-result-object v1

    .line 113
    :cond_1
    return-object v1
.end method

.method public readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 121
    if-eqz p3, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getReader()Lcom/sleepycat/persist/impl/Reader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/sleepycat/persist/impl/Reader;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object p1

    .line 125
    :cond_0
    return-object p1
.end method

.method skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/Format;->skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V

    .line 161
    return-void
.end method

.method writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 132
    if-eqz p3, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sleepycat/persist/impl/Format;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    const/4 v1, 0x0

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/persist/impl/Format;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/model/PersistentProxy;

    .line 137
    .local v0, "proxy":Lcom/sleepycat/persist/model/PersistentProxy;
    invoke-interface {v0, p1}, Lcom/sleepycat/persist/model/PersistentProxy;->initializeProxy(Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ProxiedFormat;->proxyFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v1, v0, p2, v2}, Lcom/sleepycat/persist/impl/Format;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V

    .line 140
    .end local v0    # "proxy":Lcom/sleepycat/persist/model/PersistentProxy;
    :goto_0
    return-void
.end method
