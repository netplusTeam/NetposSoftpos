.class public Lch/qos/logback/classic/util/EnvUtil;
.super Ljava/lang/Object;
.source "EnvUtil.java"


# static fields
.field static testServiceLoaderClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lch/qos/logback/classic/util/EnvUtil;->testServiceLoaderClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getServiceLoaderClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 44
    sget-object v0, Lch/qos/logback/classic/util/EnvUtil;->testServiceLoaderClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    const-class v0, Lch/qos/logback/classic/util/EnvUtil;

    invoke-static {v0}, Lch/qos/logback/core/util/Loader;->getClassLoaderOfClass(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isGroovyAvailable()Z
    .locals 3

    .line 34
    const-class v0, Lch/qos/logback/classic/util/EnvUtil;

    invoke-static {v0}, Lch/qos/logback/core/util/Loader;->getClassLoaderOfClass(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 36
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "groovy.lang.Binding"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v2, "bindingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 38
    .end local v2    # "bindingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    return v1
.end method

.method public static loadFromServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 48
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lch/qos/logback/classic/util/EnvUtil;->getServiceLoaderClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 49
    .local v0, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TT;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 52
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
