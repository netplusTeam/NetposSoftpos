.class public Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;
.super Ljava/lang/Object;
.source "UnsafeAccess.java"


# static fields
.field public static final SUPPORTS_GET_AND_ADD_LONG:Z

.field public static final SUPPORTS_GET_AND_SET_REF:Z

.field public static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    .line 45
    invoke-static {}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->hasGetAndSetSupport()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->SUPPORTS_GET_AND_SET_REF:Z

    .line 46
    invoke-static {}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->hasGetAndAddLongSupport()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->SUPPORTS_GET_AND_ADD_LONG:Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 2
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 107
    :try_start_0
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 5

    .line 54
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lsun/misc/Unsafe;

    const-string v2, "theUnsafe"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 55
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 73
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .local v0, "instance":Lsun/misc/Unsafe;
    goto :goto_0

    .line 58
    .end local v0    # "instance":Lsun/misc/Unsafe;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ignored":Ljava/lang/Exception;
    :try_start_1
    const-class v2, Lsun/misc/Unsafe;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 66
    .local v2, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/misc/Unsafe;>;"
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 67
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .end local v2    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/misc/Unsafe;>;"
    .restart local v0    # "instance":Lsun/misc/Unsafe;
    nop

    .line 74
    .end local v1    # "ignored":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 69
    .end local v0    # "instance":Lsun/misc/Unsafe;
    .restart local v1    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static hasGetAndAddLongSupport()Z
    .locals 7

    .line 94
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lsun/misc/Unsafe;

    const-string v2, "getAndAddLong"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return v5

    .line 97
    :catch_0
    move-exception v1

    .line 100
    return v0
.end method

.method private static hasGetAndSetSupport()Z
    .locals 7

    .line 81
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lsun/misc/Unsafe;

    const-string v2, "getAndSetObject"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-class v6, Ljava/lang/Object;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return v5

    .line 84
    :catch_0
    move-exception v1

    .line 87
    return v0
.end method
