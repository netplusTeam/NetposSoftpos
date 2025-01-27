.class Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;
.super Ljava/lang/Object;
.source "NettyRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NettyRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvailableProcessorsHolder"
.end annotation


# instance fields
.field private availableProcessors:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized availableProcessors()I
    .locals 2

    monitor-enter p0

    .line 65
    :try_start_0
    iget v0, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I

    if-nez v0, :cond_0

    .line 66
    const-string v0, "io.netty.availableProcessors"

    .line 69
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 67
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "availableProcessors":I
    invoke-virtual {p0, v0}, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->setAvailableProcessors(I)V

    .line 72
    .end local v0    # "availableProcessors":I
    .end local p0    # "this":Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;
    :cond_0
    iget v0, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setAvailableProcessors(I)V
    .locals 5
    .param p1, "availableProcessors"    # I

    monitor-enter p0

    .line 44
    :try_start_0
    const-string v0, "availableProcessors"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 45
    iget v0, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I

    if-nez v0, :cond_0

    .line 53
    iput p1, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 46
    .end local p0    # "this":Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;
    :cond_0
    :try_start_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "availableProcessors is already set to [%d], rejecting [%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 46
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .end local v0    # "message":Ljava/lang/String;
    .end local p1    # "availableProcessors":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
