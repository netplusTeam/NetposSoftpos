.class public final Lio/netty/util/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final PROP_BUILD_DATE:Ljava/lang/String; = ".buildDate"

.field private static final PROP_COMMIT_DATE:Ljava/lang/String; = ".commitDate"

.field private static final PROP_LONG_COMMIT_HASH:Ljava/lang/String; = ".longCommitHash"

.field private static final PROP_REPO_STATUS:Ljava/lang/String; = ".repoStatus"

.field private static final PROP_SHORT_COMMIT_HASH:Ljava/lang/String; = ".shortCommitHash"

.field private static final PROP_VERSION:Ljava/lang/String; = ".version"


# instance fields
.field private final artifactId:Ljava/lang/String;

.field private final artifactVersion:Ljava/lang/String;

.field private final buildTimeMillis:J

.field private final commitTimeMillis:J

.field private final longCommitHash:Ljava/lang/String;

.field private final repositoryStatus:Ljava/lang/String;

.field private final shortCommitHash:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "artifactId"    # Ljava/lang/String;
    .param p2, "artifactVersion"    # Ljava/lang/String;
    .param p3, "buildTimeMillis"    # J
    .param p5, "commitTimeMillis"    # J
    .param p7, "shortCommitHash"    # Ljava/lang/String;
    .param p8, "longCommitHash"    # Ljava/lang/String;
    .param p9, "repositoryStatus"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lio/netty/util/Version;->artifactId:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lio/netty/util/Version;->artifactVersion:Ljava/lang/String;

    .line 163
    iput-wide p3, p0, Lio/netty/util/Version;->buildTimeMillis:J

    .line 164
    iput-wide p5, p0, Lio/netty/util/Version;->commitTimeMillis:J

    .line 165
    iput-object p7, p0, Lio/netty/util/Version;->shortCommitHash:Ljava/lang/String;

    .line 166
    iput-object p8, p0, Lio/netty/util/Version;->longCommitHash:Ljava/lang/String;

    .line 167
    iput-object p9, p0, Lio/netty/util/Version;->repositoryStatus:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public static identify()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/util/Version;",
            ">;"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Lio/netty/util/Version;->identify(Ljava/lang/ClassLoader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static identify(Ljava/lang/ClassLoader;)Ljava/util/Map;
    .locals 23
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/util/Version;",
            ">;"
        }
    .end annotation

    .line 65
    if-nez p0, :cond_0

    .line 66
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v1, v0

    .end local p0    # "classLoader":Ljava/lang/ClassLoader;
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 65
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    move-object/from16 v1, p0

    .line 70
    .end local p0    # "classLoader":Ljava/lang/ClassLoader;
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v2, v0

    .line 72
    .local v2, "props":Ljava/util/Properties;
    :try_start_0
    const-string v0, "META-INF/io.netty.versions.properties"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    move-object v3, v0

    .line 73
    .local v3, "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    move-object v4, v0

    .line 75
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    .line 77
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    goto :goto_2

    .line 81
    :catch_0
    move-exception v0

    .line 84
    nop

    .line 85
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_2
    goto :goto_1

    .line 79
    .restart local v4    # "url":Ljava/net/URL;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 80
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 83
    goto :goto_3

    .line 81
    :catch_1
    move-exception v0

    .line 84
    :goto_3
    nop

    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "props":Ljava/util/Properties;
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 88
    .end local v3    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v2    # "props":Ljava/util/Properties;
    :cond_1
    goto :goto_4

    .line 86
    :catch_2
    move-exception v0

    .line 91
    :goto_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v0, "artifactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ".repoStatus"

    const-string v6, ".longCommitHash"

    const-string v7, ".shortCommitHash"

    const-string v8, ".commitDate"

    const-string v9, ".buildDate"

    const-string v10, ".version"

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 93
    .local v4, "o":Ljava/lang/Object;
    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 95
    .local v11, "k":Ljava/lang/String;
    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 96
    .local v12, "dotIndex":I
    if-gtz v12, :cond_3

    .line 97
    goto :goto_5

    .line 100
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 103
    .local v13, "artifactId":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-virtual {v2, v9}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 105
    invoke-virtual {v2, v8}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-virtual {v2, v7}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-virtual {v2, v6}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v2, v5}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 109
    goto/16 :goto_5

    .line 112
    :cond_4
    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v4    # "o":Ljava/lang/Object;
    .end local v11    # "k":Ljava/lang/String;
    .end local v12    # "dotIndex":I
    .end local v13    # "artifactId":Ljava/lang/String;
    goto/16 :goto_5

    .line 115
    :cond_5
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 116
    .local v3, "versions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/netty/util/Version;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 117
    .local v11, "artifactId":Ljava/lang/String;
    new-instance v15, Lio/netty/util/Version;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 121
    invoke-virtual {v2, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 122
    invoke-virtual {v2, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lio/netty/util/Version;->parseIso8601(Ljava/lang/String;)J

    move-result-wide v16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 123
    invoke-virtual {v2, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lio/netty/util/Version;->parseIso8601(Ljava/lang/String;)J

    move-result-wide v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 124
    invoke-virtual {v2, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 125
    invoke-virtual {v2, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 126
    invoke-virtual {v2, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object v12, v15

    move-object v13, v11

    move-object/from16 p0, v0

    move-object v0, v15

    .end local v0    # "artifactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p0, "artifactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    invoke-direct/range {v12 .. v21}, Lio/netty/util/Version;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {v3, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v11    # "artifactId":Ljava/lang/String;
    move-object/from16 v0, p0

    goto/16 :goto_6

    .line 129
    .end local p0    # "artifactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "artifactIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 144
    invoke-static {}, Lio/netty/util/Version;->identify()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/Version;

    .line 145
    .local v1, "v":Lio/netty/util/Version;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 146
    .end local v1    # "v":Lio/netty/util/Version;
    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method private static parseIso8601(Ljava/lang/String;)J
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 134
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ignored":Ljava/text/ParseException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method


# virtual methods
.method public artifactId()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lio/netty/util/Version;->artifactId:Ljava/lang/String;

    return-object v0
.end method

.method public artifactVersion()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lio/netty/util/Version;->artifactVersion:Ljava/lang/String;

    return-object v0
.end method

.method public buildTimeMillis()J
    .locals 2

    .line 179
    iget-wide v0, p0, Lio/netty/util/Version;->buildTimeMillis:J

    return-wide v0
.end method

.method public commitTimeMillis()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lio/netty/util/Version;->commitTimeMillis:J

    return-wide v0
.end method

.method public longCommitHash()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lio/netty/util/Version;->longCommitHash:Ljava/lang/String;

    return-object v0
.end method

.method public repositoryStatus()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lio/netty/util/Version;->repositoryStatus:Ljava/lang/String;

    return-object v0
.end method

.method public shortCommitHash()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lio/netty/util/Version;->shortCommitHash:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/netty/util/Version;->artifactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/Version;->artifactVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/Version;->shortCommitHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/Version;->repositoryStatus:Ljava/lang/String;

    .line 201
    const-string v2, "clean"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (repository: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/util/Version;->repositoryStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    return-object v0
.end method
