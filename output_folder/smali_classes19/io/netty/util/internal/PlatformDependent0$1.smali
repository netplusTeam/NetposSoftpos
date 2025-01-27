.class final Lio/netty/util/internal/PlatformDependent0$1;
.super Ljava/lang/Object;
.source "PlatformDependent0.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/PlatformDependent0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    .line 88
    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 91
    .local v0, "unsafeField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/ReflectionUtil;->trySetAccessible(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/Throwable;

    move-result-object v1

    .line 92
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 93
    return-object v1

    .line 96
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 103
    .end local v0    # "unsafeField":Ljava/lang/reflect/Field;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    return-object v0

    .line 101
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return-object v0

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/SecurityException;
    return-object v0

    .line 97
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    return-object v0
.end method
