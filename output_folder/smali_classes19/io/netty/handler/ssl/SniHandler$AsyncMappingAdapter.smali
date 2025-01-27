.class final Lio/netty/handler/ssl/SniHandler$AsyncMappingAdapter;
.super Ljava/lang/Object;
.source "SniHandler.java"

# interfaces
.implements Lio/netty/util/AsyncMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SniHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncMappingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/AsyncMapping<",
        "Ljava/lang/String;",
        "Lio/netty/handler/ssl/SslContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final mapping:Lio/netty/util/Mapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Mapping<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lio/netty/handler/ssl/SslContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/netty/util/Mapping;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Mapping<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lio/netty/handler/ssl/SslContext;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "mapping":Lio/netty/util/Mapping;, "Lio/netty/util/Mapping<-Ljava/lang/String;+Lio/netty/handler/ssl/SslContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const-string v0, "mapping"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/Mapping;

    iput-object v0, p0, Lio/netty/handler/ssl/SniHandler$AsyncMappingAdapter;->mapping:Lio/netty/util/Mapping;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Mapping;Lio/netty/handler/ssl/SniHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/Mapping;
    .param p2, "x1"    # Lio/netty/handler/ssl/SniHandler$1;

    .line 154
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SniHandler$AsyncMappingAdapter;-><init>(Lio/netty/util/Mapping;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 154
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/SniHandler$AsyncMappingAdapter;->map(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public map(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/handler/ssl/SslContext;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/handler/ssl/SslContext;",
            ">;"
        }
    .end annotation

    .line 165
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/handler/ssl/SslContext;>;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SniHandler$AsyncMappingAdapter;->mapping:Lio/netty/util/Mapping;

    invoke-interface {v0, p1}, Lio/netty/util/Mapping;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/SslContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .local v0, "context":Lio/netty/handler/ssl/SslContext;
    nop

    .line 169
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    move-result-object v1

    return-object v1

    .line 166
    .end local v0    # "context":Lio/netty/handler/ssl/SslContext;
    :catchall_0
    move-exception v0

    .line 167
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    move-result-object v1

    return-object v1
.end method
