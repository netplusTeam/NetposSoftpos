.class public final Lio/netty/util/ReferenceCountUtil;
.super Ljava/lang/Object;
.source "ReferenceCountUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/ReferenceCountUtil$ReleasingTask;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lio/netty/util/ReferenceCountUtil;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/util/ReferenceCountUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 30
    const-string v1, "touch"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/util/ResourceLeakDetector;->addExclusions(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 25
    sget-object v0, Lio/netty/util/ReferenceCountUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static refCnt(Ljava/lang/Object;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .line 168
    instance-of v0, p0, Lio/netty/util/ReferenceCounted;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static release(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .line 87
    instance-of v0, p0, Lio/netty/util/ReferenceCounted;

    if-eqz v0, :cond_0

    .line 88
    move-object v0, p0

    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    move-result v0

    return v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static release(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "decrement"    # I

    .line 98
    instance-of v0, p0, Lio/netty/util/ReferenceCounted;

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p0

    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-interface {v0, p1}, Lio/netty/util/ReferenceCounted;->release(I)Z

    move-result v0

    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static releaseLater(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    .local p0, "msg":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/netty/util/ReferenceCountUtil;->releaseLater(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static releaseLater(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p1, "decrement"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    .local p0, "msg":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Lio/netty/util/ReferenceCounted;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lio/netty/util/ReferenceCountUtil$ReleasingTask;

    move-object v2, p0

    check-cast v2, Lio/netty/util/ReferenceCounted;

    invoke-direct {v1, v2, p1}, Lio/netty/util/ReferenceCountUtil$ReleasingTask;-><init>(Lio/netty/util/ReferenceCounted;I)V

    invoke-static {v0, v1}, Lio/netty/util/ThreadDeathWatcher;->watch(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 160
    :cond_0
    return-object p0
.end method

.method public static retain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 39
    .local p0, "msg":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Lio/netty/util/ReferenceCounted;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p0

    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    return-object p0
.end method

.method public static retain(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 51
    .local p0, "msg":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Lio/netty/util/ReferenceCounted;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-interface {v0, p1}, Lio/netty/util/ReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    return-object p0
.end method

.method public static safeRelease(Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/Object;

    .line 113
    :try_start_0
    invoke-static {p0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/util/ReferenceCountUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to release a message: {}"

    invoke-interface {v1, v2, p0, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static safeRelease(Ljava/lang/Object;I)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "decrement"    # I

    .line 128
    :try_start_0
    invoke-static {p0, p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/util/ReferenceCountUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lio/netty/util/ReferenceCountUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v3, "Failed to release a message: {} (decrement: {})"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public static touch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 63
    .local p0, "msg":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Lio/netty/util/ReferenceCounted;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p0

    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    return-object p0
.end method

.method public static touch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 76
    .local p0, "msg":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Lio/netty/util/ReferenceCounted;

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p0

    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-interface {v0, p1}, Lio/netty/util/ReferenceCounted;->touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    return-object p0
.end method
