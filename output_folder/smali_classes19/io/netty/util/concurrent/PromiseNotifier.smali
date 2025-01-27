.class public Lio/netty/util/concurrent/PromiseNotifier;
.super Ljava/lang/Object;
.source "PromiseNotifier.java"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "F::",
        "Lio/netty/util/concurrent/Future<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/GenericFutureListener<",
        "TF;>;"
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final logNotifyFailure:Z

.field private final promises:[Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/concurrent/Promise<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lio/netty/util/concurrent/PromiseNotifier;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/PromiseNotifier;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public varargs constructor <init>(Z[Lio/netty/util/concurrent/Promise;)V
    .locals 3
    .param p1, "logNotifyFailure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lio/netty/util/concurrent/Promise<",
            "-TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 54
    .local p0, "this":Lio/netty/util/concurrent/PromiseNotifier;, "Lio/netty/util/concurrent/PromiseNotifier<TV;TF;>;"
    .local p2, "promises":[Lio/netty/util/concurrent/Promise;, "[Lio/netty/util/concurrent/Promise<-TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "promises"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 57
    .local v2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    if-eqz v2, :cond_0

    .line 56
    .end local v2    # "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .restart local v2    # "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "promises contains null Promise"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    .end local v2    # "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    :cond_1
    invoke-virtual {p2}, [Lio/netty/util/concurrent/Promise;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/util/concurrent/Promise;

    iput-object v0, p0, Lio/netty/util/concurrent/PromiseNotifier;->promises:[Lio/netty/util/concurrent/Promise;

    .line 62
    iput-boolean p1, p0, Lio/netty/util/concurrent/PromiseNotifier;->logNotifyFailure:Z

    .line 63
    return-void
.end method

.method public varargs constructor <init>([Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/Promise<",
            "-TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 44
    .local p0, "this":Lio/netty/util/concurrent/PromiseNotifier;, "Lio/netty/util/concurrent/PromiseNotifier<TV;TF;>;"
    .local p1, "promises":[Lio/netty/util/concurrent/Promise;, "[Lio/netty/util/concurrent/Promise<-TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lio/netty/util/concurrent/PromiseNotifier;-><init>(Z[Lio/netty/util/concurrent/Promise;)V

    .line 45
    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    .local p0, "this":Lio/netty/util/concurrent/PromiseNotifier;, "Lio/netty/util/concurrent/PromiseNotifier<TV;TF;>;"
    .local p1, "future":Lio/netty/util/concurrent/Future;, "TF;"
    iget-boolean v0, p0, Lio/netty/util/concurrent/PromiseNotifier;->logNotifyFailure:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/util/concurrent/PromiseNotifier;->logger:Lio/netty/util/internal/logging/InternalLogger;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 68
    .local v0, "internalLogger":Lio/netty/util/internal/logging/InternalLogger;
    :goto_0
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 69
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lio/netty/util/concurrent/PromiseNotifier;->promises:[Lio/netty/util/concurrent/Promise;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 71
    .local v5, "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    invoke-static {v5, v1, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 70
    .end local v5    # "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    :cond_1
    goto :goto_4

    :cond_2
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    iget-object v1, p0, Lio/netty/util/concurrent/PromiseNotifier;->promises:[Lio/netty/util/concurrent/Promise;

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 75
    .local v4, "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    invoke-static {v4, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->tryCancel(Lio/netty/util/concurrent/Promise;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 74
    .end local v4    # "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 78
    :cond_3
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    .line 79
    .local v1, "cause":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/netty/util/concurrent/PromiseNotifier;->promises:[Lio/netty/util/concurrent/Promise;

    array-length v4, v3

    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 80
    .restart local v5    # "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    invoke-static {v5, v1, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 79
    .end local v5    # "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 83
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_4
    :goto_4
    return-void
.end method
