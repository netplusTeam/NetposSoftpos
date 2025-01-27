.class public Lio/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;
.super Ljava/lang/Object;
.source "ThreadLocalUnmarshallerProvider.java"

# interfaces
.implements Lio/netty/handler/codec/marshalling/UnmarshallerProvider;


# instance fields
.field private final config:Lorg/jboss/marshalling/MarshallingConfiguration;

.field private final factory:Lorg/jboss/marshalling/MarshallerFactory;

.field private final unmarshallers:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Lorg/jboss/marshalling/Unmarshaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jboss/marshalling/MarshallerFactory;Lorg/jboss/marshalling/MarshallingConfiguration;)V
    .locals 1
    .param p1, "factory"    # Lorg/jboss/marshalling/MarshallerFactory;
    .param p2, "config"    # Lorg/jboss/marshalling/MarshallingConfiguration;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lio/netty/util/concurrent/FastThreadLocal;

    invoke-direct {v0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->unmarshallers:Lio/netty/util/concurrent/FastThreadLocal;

    .line 43
    iput-object p1, p0, Lio/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    .line 44
    iput-object p2, p0, Lio/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    .line 45
    return-void
.end method


# virtual methods
.method public getUnmarshaller(Lio/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->unmarshallers:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/marshalling/Unmarshaller;

    .line 50
    .local v0, "unmarshaller":Lorg/jboss/marshalling/Unmarshaller;
    if-nez v0, :cond_0

    .line 51
    iget-object v1, p0, Lio/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    iget-object v2, p0, Lio/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    invoke-interface {v1, v2}, Lorg/jboss/marshalling/MarshallerFactory;->createUnmarshaller(Lorg/jboss/marshalling/MarshallingConfiguration;)Lorg/jboss/marshalling/Unmarshaller;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lio/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->unmarshallers:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v1, v0}, Lio/netty/util/concurrent/FastThreadLocal;->set(Ljava/lang/Object;)V

    .line 54
    :cond_0
    return-object v0
.end method
