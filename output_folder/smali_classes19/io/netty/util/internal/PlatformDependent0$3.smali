.class final Lio/netty/util/internal/PlatformDependent0$3;
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


# instance fields
.field final synthetic val$direct:Ljava/nio/ByteBuffer;

.field final synthetic val$finalUnsafe:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lio/netty/util/internal/PlatformDependent0$3;->val$finalUnsafe:Lsun/misc/Unsafe;

    iput-object p2, p0, Lio/netty/util/internal/PlatformDependent0$3;->val$direct:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7

    .line 162
    :try_start_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 165
    .local v0, "field":Ljava/lang/reflect/Field;
    iget-object v1, p0, Lio/netty/util/internal/PlatformDependent0$3;->val$finalUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    .line 166
    .local v1, "offset":J
    iget-object v3, p0, Lio/netty/util/internal/PlatformDependent0$3;->val$finalUnsafe:Lsun/misc/Unsafe;

    iget-object v4, p0, Lio/netty/util/internal/PlatformDependent0$3;->val$direct:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .local v3, "address":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 170
    const/4 v5, 0x0

    return-object v5

    .line 172
    :cond_0
    return-object v0

    .line 175
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "offset":J
    .end local v3    # "address":J
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/SecurityException;
    return-object v0

    .line 173
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    return-object v0
.end method
