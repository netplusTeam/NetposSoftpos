.class final Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
.super Ljava/lang/Object;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannelHandlerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WriteTask"
.end annotation


# static fields
.field private static final ESTIMATE_TASK_SIZE_ON_SUBMIT:Z

.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;",
            ">;"
        }
    .end annotation
.end field

.field private static final WRITE_TASK_OVERHEAD:I


# instance fields
.field private ctx:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final handle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/Object;

.field private promise:Lio/netty/channel/ChannelPromise;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1048
    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask$1;

    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    .line 1062
    nop

    .line 1063
    const-string v0, "io.netty.transport.estimateSizeOnSubmit"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->ESTIMATE_TASK_SIZE_ON_SUBMIT:Z

    .line 1066
    nop

    .line 1067
    const-string v0, "io.netty.transport.writeTaskSizeOverhead"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->WRITE_TASK_OVERHEAD:I

    .line 1066
    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "+",
            "Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;",
            ">;)V"
        }
    .end annotation

    .line 1076
    .local p1, "handle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<+Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    .line 1078
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;Lio/netty/channel/AbstractChannelHandlerContext$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/internal/ObjectPool$Handle;
    .param p2, "x1"    # Lio/netty/channel/AbstractChannelHandlerContext$1;

    .line 1047
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;-><init>(Lio/netty/util/internal/ObjectPool$Handle;)V

    return-void
.end method

.method private decrementPendingOutboundBytes()V
    .locals 3

    .line 1120
    sget-boolean v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->ESTIMATE_TASK_SIZE_ON_SUBMIT:Z

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->access$1700(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->size:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/DefaultChannelPipeline;->decrementPendingOutboundBytes(J)V

    .line 1123
    :cond_0
    return-void
.end method

.method protected static init(Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;Z)V
    .locals 3
    .param p0, "task"    # Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p4, "flush"    # Z

    .line 1082
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1083
    iput-object p2, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->msg:Ljava/lang/Object;

    .line 1084
    iput-object p3, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 1086
    sget-boolean v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->ESTIMATE_TASK_SIZE_ON_SUBMIT:Z

    if-eqz v0, :cond_0

    .line 1087
    invoke-static {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->access$1700(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->estimatorHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result v0

    sget v1, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->WRITE_TASK_OVERHEAD:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->size:I

    .line 1088
    invoke-static {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->access$1700(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->size:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/DefaultChannelPipeline;->incrementPendingOutboundBytes(J)V

    goto :goto_0

    .line 1090
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->size:I

    .line 1092
    :goto_0
    if-eqz p4, :cond_1

    .line 1093
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->size:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->size:I

    .line 1095
    :cond_1
    return-void
.end method

.method static newInstance(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;Z)Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    .locals 1
    .param p0, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p3, "flush"    # Z

    .line 1057
    sget-object v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;

    .line 1058
    .local v0, "task":Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    invoke-static {v0, p0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->init(Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;Z)V

    .line 1059
    return-object v0
.end method

.method private recycle()V
    .locals 1

    .line 1127
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1128
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->msg:Ljava/lang/Object;

    .line 1129
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 1130
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->handle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    .line 1131
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 1113
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->decrementPendingOutboundBytes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->recycle()V

    .line 1116
    nop

    .line 1117
    return-void

    .line 1115
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->recycle()V

    .line 1116
    throw v0
.end method

.method public run()V
    .locals 3

    .line 1100
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->decrementPendingOutboundBytes()V

    .line 1101
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->size:I

    if-ltz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->msg:Ljava/lang/Object;

    iget-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 1104
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->msg:Ljava/lang/Object;

    iget-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWriteAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    :goto_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->recycle()V

    .line 1108
    nop

    .line 1109
    return-void

    .line 1107
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->recycle()V

    .line 1108
    throw v0
.end method
