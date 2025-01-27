.class public Lcom/sleepycat/je/rep/utilint/DbCacheSizeRepEnv;
.super Ljava/lang/Object;
.source "DbCacheSizeRepEnv.java"

# interfaces
.implements Lcom/sleepycat/je/utilint/DbCacheSizeRepEnv;


# static fields
.field private static final PORT_RANGE:I = 0x64

.field private static final START_PORT:I = 0x7594


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Ljava/util/Map;)Lcom/sleepycat/je/Environment;
    .locals 9
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/sleepycat/je/EnvironmentConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sleepycat/je/Environment;"
        }
    .end annotation

    .line 38
    .local p3, "repParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "localhost"

    .line 39
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Lcom/sleepycat/je/rep/utilint/FreePortLocator;

    const-string v2, "localhost"

    const/16 v3, 0x7594

    const/16 v4, 0x75f8

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/utilint/FreePortLocator;-><init>(Ljava/lang/String;II)V

    .line 41
    .local v1, "locator":Lcom/sleepycat/je/rep/utilint/FreePortLocator;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/FreePortLocator;->next()I

    move-result v2

    .line 42
    .local v2, "port":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localhost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "hostPort":Ljava/lang/String;
    new-instance v4, Lcom/sleepycat/je/rep/ReplicationConfig;

    const-string v5, "DbCacheSizeGroup"

    const-string v6, "DbCacheSizeNode"

    invoke-direct {v4, v5, v6, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v4, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 46
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 47
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 48
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 49
    :cond_0
    new-instance v5, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    invoke-direct {v5, p1, v4, p2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)V

    return-object v5
.end method
