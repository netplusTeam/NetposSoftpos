.class final Lorg/apache/sshd/common/config/VersionProperties$LazyVersionPropertiesHolder;
.super Ljava/lang/Object;
.source "VersionProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/config/VersionProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyVersionPropertiesHolder"
.end annotation


# static fields
.field private static final PROPERTIES:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/apache/sshd/common/config/VersionProperties$LazyVersionPropertiesHolder;

    .line 46
    invoke-static {v0}, Lorg/apache/sshd/common/config/VersionProperties$LazyVersionPropertiesHolder;->loadVersionProperties(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/VersionProperties$LazyVersionPropertiesHolder;->PROPERTIES:Ljava/util/NavigableMap;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/util/NavigableMap;
    .locals 1

    .line 43
    sget-object v0, Lorg/apache/sshd/common/config/VersionProperties$LazyVersionPropertiesHolder;->PROPERTIES:Ljava/util/NavigableMap;

    return-object v0
.end method

.method private static loadVersionProperties(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    .local p0, "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->iterateDefaultClassLoaders(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/VersionProperties$LazyVersionPropertiesHolder;->loadVersionProperties(Ljava/lang/Class;Ljava/util/Iterator;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method private static loadVersionProperties(Ljava/lang/Class;Ljava/util/Iterator;)Ljava/util/NavigableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    .local p0, "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "loaders":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/ClassLoader;>;"
    :cond_0
    :goto_0
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 61
    .local v0, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v1, "org/apache/sshd/sshd-version.properties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 62
    .local v1, "input":Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 68
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 67
    .local v2, "props":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_2
    nop

    .line 78
    new-instance v1, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 79
    .local v1, "result":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "propValue":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 83
    goto :goto_1

    .line 86
    :cond_3
    invoke-interface {v1, v4, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 87
    .local v7, "prev":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 88
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v8

    .line 89
    .local v8, "log":Lorg/slf4j/Logger;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple values for key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": current="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", previous="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 91
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "propValue":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "prev":Ljava/lang/String;
    .end local v8    # "log":Lorg/slf4j/Logger;
    :cond_4
    goto :goto_1

    .line 93
    :cond_5
    return-object v1

    .line 61
    .end local v2    # "props":Ljava/util/Properties;
    .local v1, "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local p0    # "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "loaders":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/ClassLoader;>;"
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local p0    # "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "loaders":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/ClassLoader;>;"
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local p0    # "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "loaders":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/ClassLoader;>;"
    :cond_6
    :goto_2
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    .restart local p0    # "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "loaders":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/ClassLoader;>;"
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 70
    .local v2, "log":Lorg/slf4j/Logger;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 70
    const-string v4, "Failed ({}) to load version properties from {}: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version property failure details for loader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_7
    goto/16 :goto_0

    .line 96
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "log":Lorg/slf4j/Logger;
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
