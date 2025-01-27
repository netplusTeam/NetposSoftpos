.class public Lch/qos/logback/core/util/EnvUtil;
.super Ljava/lang/Object;
.source "EnvUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isJDK5()Z
    .locals 1

    .line 44
    const/4 v0, 0x5

    invoke-static {v0}, Lch/qos/logback/core/util/EnvUtil;->isJDK_N_OrHigher(I)Z

    move-result v0

    return v0
.end method

.method public static isJDK6OrHigher()Z
    .locals 1

    .line 48
    const/4 v0, 0x6

    invoke-static {v0}, Lch/qos/logback/core/util/EnvUtil;->isJDK_N_OrHigher(I)Z

    move-result v0

    return v0
.end method

.method public static isJDK7OrHigher()Z
    .locals 1

    .line 52
    const/4 v0, 0x7

    invoke-static {v0}, Lch/qos/logback/core/util/EnvUtil;->isJDK_N_OrHigher(I)Z

    move-result v0

    return v0
.end method

.method private static isJDK_N_OrHigher(I)Z
    .locals 6
    .param p0, "n"    # I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, "versionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_0
    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "javaVersion":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 34
    return v2

    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 38
    const/4 v2, 0x1

    return v2

    .line 39
    .end local v4    # "v":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 40
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return v2
.end method

.method public static isJaninoAvailable()Z
    .locals 3

    .line 56
    const-class v0, Lch/qos/logback/core/util/EnvUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 58
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "org.codehaus.janino.ScriptEvaluator"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v2, "bindingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 60
    .end local v2    # "bindingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    return v1
.end method

.method public static isWindows()Z
    .locals 2

    .line 66
    const-string/jumbo v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "os":Ljava/lang/String;
    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
