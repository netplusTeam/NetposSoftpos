.class public Lch/qos/logback/core/util/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# static fields
.field private static HAS_GET_CLASS_LOADER_PERMISSION:Z = false

.field public static final IGNORE_TCL_PROPERTY_NAME:Ljava/lang/String; = "logback.ignoreTCL"

.field static final TSTR:Ljava/lang/String; = "Caught Exception while in Loader.getResource. This may be innocuous."

.field private static ignoreTCL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lch/qos/logback/core/util/Loader;->ignoreTCL:Z

    .line 36
    sput-boolean v0, Lch/qos/logback/core/util/Loader;->HAS_GET_CLASS_LOADER_PERMISSION:Z

    .line 39
    const-string v0, "logback.ignoreTCL"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "ignoreTCLProp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 42
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lch/qos/logback/core/util/OptionHelper;->toBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lch/qos/logback/core/util/Loader;->ignoreTCL:Z

    .line 45
    :cond_0
    new-instance v1, Lch/qos/logback/core/util/Loader$1;

    invoke-direct {v1}, Lch/qos/logback/core/util/Loader$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lch/qos/logback/core/util/Loader;->HAS_GET_CLASS_LOADER_PERMISSION:Z

    .line 57
    .end local v0    # "ignoreTCLProp":Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassLoaderAsPrivileged(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 144
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lch/qos/logback/core/util/Loader;->HAS_GET_CLASS_LOADER_PERMISSION:Z

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Lch/qos/logback/core/util/Loader$2;

    invoke-direct {v0, p0}, Lch/qos/logback/core/util/Loader$2;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getClassLoaderOfClass(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 162
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 163
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1

    .line 166
    :cond_0
    return-object v0
.end method

.method public static getClassLoaderOfObject(Ljava/lang/Object;)Ljava/lang/ClassLoader;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 131
    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/util/Loader;->getClassLoaderOfClass(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;
    .locals 2
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 88
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getResourceBySelfClassLoader(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;

    .line 102
    const-class v0, Lch/qos/logback/core/util/Loader;

    invoke-static {v0}, Lch/qos/logback/core/util/Loader;->getClassLoaderOfClass(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lch/qos/logback/core/util/Loader;->getResource(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static getResources(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 3
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 72
    .local v0, "urlSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 73
    .local v1, "urlEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 75
    .local v2, "url":Ljava/net/URL;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v2    # "url":Ljava/net/URL;
    goto :goto_0

    .line 77
    :cond_0
    return-object v0
.end method

.method public static getTCL()Ljava/lang/ClassLoader;
    .locals 1

    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 178
    sget-boolean v0, Lch/qos/logback/core/util/Loader;->ignoreTCL:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    :try_start_0
    invoke-static {}, Lch/qos/logback/core/util/Loader;->getTCL()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public static loadClass(Ljava/lang/String;Lch/qos/logback/core/Context;)Ljava/lang/Class;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/String;
    .param p1, "context"    # Lch/qos/logback/core/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lch/qos/logback/core/Context;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lch/qos/logback/core/util/Loader;->getClassLoaderOfObject(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 120
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method
