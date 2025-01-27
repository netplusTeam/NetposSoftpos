.class public final Lio/netty/util/internal/ReflectionUtil;
.super Ljava/lang/Object;
.source "ReflectionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleInaccessibleObjectException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.reflect.InaccessibleObjectException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    return-object p0

    .line 50
    :cond_0
    throw p0
.end method

.method public static trySetAccessible(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/Throwable;
    .locals 2
    .param p0, "object"    # Ljava/lang/reflect/AccessibleObject;
    .param p1, "checkAccessible"    # Z

    .line 30
    if-eqz p1, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isExplicitTryReflectionSetAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Reflective setAccessible(true) disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lio/netty/util/internal/ReflectionUtil;->handleInaccessibleObjectException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    return-object v1

    .line 36
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/SecurityException;
    return-object v0
.end method
