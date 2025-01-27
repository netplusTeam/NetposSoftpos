.class Ljava9/util/concurrent/UnsafeAccess;
.super Ljava/lang/Object;
.source "UnsafeAccess.java"


# static fields
.field static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    const/4 v0, 0x0

    .line 20
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v1, Lsun/misc/Unsafe;

    const-string v2, "theUnsafe"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 23
    goto :goto_0

    .line 26
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 21
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v1

    .line 22
    .local v1, "oldAndroid":Ljava/lang/NoSuchFieldException;
    :try_start_1
    const-class v2, Lsun/misc/Unsafe;

    const-string v3, "THE_ONE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v0, v2

    .line 24
    .end local v1    # "oldAndroid":Ljava/lang/NoSuchFieldException;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;

    sput-object v1, Ljava9/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    .end local v0    # "field":Ljava/lang/reflect/Field;
    nop

    .line 29
    return-void

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method
