.class public Lorg/jpos/q2/SimpleConfigurationFactory;
.super Ljava/lang/Object;
.source "SimpleConfigurationFactory.java"

# interfaces
.implements Lorg/jpos/q2/ConfigurationFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$readYAML$0(Ljava/util/Properties;Ljava/lang/Object;)V
    .locals 3
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "d"    # Ljava/lang/Object;

    .line 84
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/jpos/core/Environment;->flat(Ljava/util/Properties;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 85
    return-void
.end method

.method private readYAML(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 5
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 81
    .local v1, "fis":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v2}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    .line 82
    .local v2, "yaml":Lorg/yaml/snakeyaml/Yaml;
    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/Yaml;->loadAll(Ljava/io/InputStream;)Ljava/lang/Iterable;

    move-result-object v3

    .line 83
    .local v3, "document":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    new-instance v4, Lorg/jpos/q2/SimpleConfigurationFactory$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lorg/jpos/q2/SimpleConfigurationFactory$$ExternalSyntheticLambda0;-><init>(Ljava/util/Properties;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v2    # "yaml":Lorg/yaml/snakeyaml/Yaml;
    .end local v3    # "document":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 90
    .end local v1    # "fis":Ljava/io/InputStream;
    return-void

    .line 80
    .restart local v1    # "fis":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "fis":Ljava/io/InputStream;
    .end local p1    # "props":Ljava/util/Properties;
    .end local p2    # "fileName":Ljava/lang/String;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "fis":Ljava/io/InputStream;
    .restart local p1    # "props":Ljava/util/Properties;
    .restart local p2    # "fileName":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    .line 88
    .end local v1    # "fis":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getConfiguration(Lorg/jdom2/Element;)Lorg/jpos/core/Configuration;
    .locals 11
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 39
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "property"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 42
    .local v2, "property":Lorg/jdom2/Element;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "name":Ljava/lang/String;
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "value":Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {v2, v5}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "file":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 46
    invoke-static {v5}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    :try_start_0
    const-string v6, ".yml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    invoke-direct {p0, v0, v5}, Lorg/jpos/q2/SimpleConfigurationFactory;->readYAML(Ljava/util/Properties;Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    goto :goto_2

    .line 53
    :catch_0
    move-exception v6

    .line 54
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v7, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v7, v5, v6}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 57
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_1
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 58
    invoke-virtual {v0, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 59
    .local v6, "obj":Ljava/lang/Object;
    instance-of v7, v6, [Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 60
    move-object v7, v6

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    .line 61
    .local v7, "mobj":[Ljava/lang/String;
    array-length v10, v7

    add-int/2addr v10, v8

    new-array v8, v10, [Ljava/lang/String;

    .line 62
    .local v8, "m":[Ljava/lang/String;
    array-length v10, v7

    invoke-static {v7, v9, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    array-length v9, v7

    aput-object v4, v8, v9

    .line 64
    invoke-virtual {v0, v3, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v7    # "mobj":[Ljava/lang/String;
    .end local v8    # "m":[Ljava/lang/String;
    goto :goto_2

    :cond_2
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 66
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 67
    .local v7, "m":[Ljava/lang/String;
    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    aput-object v10, v7, v9

    .line 68
    aput-object v4, v7, v8

    .line 69
    invoke-virtual {v0, v3, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v7    # "m":[Ljava/lang/String;
    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v2    # "property":Lorg/jdom2/Element;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "file":Ljava/lang/String;
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_4
    :goto_2
    goto :goto_0

    .line 74
    :cond_5
    new-instance v2, Lorg/jpos/core/SimpleConfiguration;

    invoke-direct {v2, v0}, Lorg/jpos/core/SimpleConfiguration;-><init>(Ljava/util/Properties;)V

    return-object v2
.end method
