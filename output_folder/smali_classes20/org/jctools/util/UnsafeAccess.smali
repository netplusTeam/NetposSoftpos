.class public Lorg/jctools/util/UnsafeAccess;
.super Ljava/lang/Object;
.source "UnsafeAccess.java"


# static fields
.field public static final SUPPORTS_GET_AND_SET:Z

.field public static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lsun/misc/Unsafe;

    const-string/jumbo v3, "theUnsafe"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 47
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 48
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 67
    .local v2, "instance":Lsun/misc/Unsafe;
    goto :goto_0

    .line 50
    .end local v2    # "instance":Lsun/misc/Unsafe;
    :catch_0
    move-exception v2

    .line 58
    .local v2, "ignored":Ljava/lang/Exception;
    :try_start_1
    const-class v3, Lsun/misc/Unsafe;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 59
    .local v3, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/misc/Unsafe;>;"
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 60
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 66
    .local v3, "instance":Lsun/misc/Unsafe;
    move-object v2, v3

    .line 69
    .end local v3    # "instance":Lsun/misc/Unsafe;
    .local v2, "instance":Lsun/misc/Unsafe;
    :goto_0
    const/4 v3, 0x0

    .line 72
    .local v3, "getAndSetSupport":Z
    :try_start_2
    const-class v4, Lsun/misc/Unsafe;

    const-string v5, "getAndSetObject"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v6, v0

    const/4 v0, 0x2

    const-class v1, Ljava/lang/Object;

    aput-object v1, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 73
    const/4 v3, 0x1

    .line 77
    goto :goto_1

    .line 75
    :catch_1
    move-exception v0

    .line 79
    :goto_1
    sput-object v2, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    .line 80
    sput-boolean v3, Lorg/jctools/util/UnsafeAccess;->SUPPORTS_GET_AND_SET:Z

    .line 81
    .end local v2    # "instance":Lsun/misc/Unsafe;
    .end local v3    # "getAndSetSupport":Z
    return-void

    .line 62
    .local v2, "ignored":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    sput-boolean v1, Lorg/jctools/util/UnsafeAccess;->SUPPORTS_GET_AND_SET:Z

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 87
    :try_start_0
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
