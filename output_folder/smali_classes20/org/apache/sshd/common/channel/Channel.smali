.class public interface abstract Lorg/apache/sshd/common/channel/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lorg/apache/sshd/common/session/SessionHolder;
.implements Lorg/apache/sshd/common/channel/ChannelListenerManager;
.implements Lorg/apache/sshd/common/PropertyResolver;
.implements Lorg/apache/sshd/common/AttributeStore;
.implements Lorg/apache/sshd/common/io/PacketWriter;
.implements Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;
.implements Lorg/apache/sshd/common/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/common/session/Session;",
        ">;",
        "Lorg/apache/sshd/common/channel/ChannelListenerManager;",
        "Lorg/apache/sshd/common/PropertyResolver;",
        "Lorg/apache/sshd/common/AttributeStore;",
        "Lorg/apache/sshd/common/io/PacketWriter;",
        "Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;",
        "Lorg/apache/sshd/common/Closeable;"
    }
.end annotation


# static fields
.field public static final CHANNEL_EXEC:Ljava/lang/String; = "exec"

.field public static final CHANNEL_SHELL:Ljava/lang/String; = "shell"

.field public static final CHANNEL_SUBSYSTEM:Ljava/lang/String; = "subsystem"


# direct methods
.method public static resolveAttribute(Lorg/apache/sshd/common/channel/Channel;Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 2
    .param p0, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/channel/Channel;",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 230
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    const-string v0, "No key"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    if-nez p0, :cond_0

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/channel/Channel;->getAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/apache/sshd/common/channel/Channel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/sshd/common/session/Session;->resolveAttribute(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public abstract addRequestHandler(Lorg/apache/sshd/common/channel/RequestHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;)V"
        }
    .end annotation
.end method

.method public addRequestHandlers(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;)V"
        }
    .end annotation

    .line 77
    .local p1, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;>;"
    new-instance v0, Lorg/apache/sshd/common/channel/Channel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/channel/Channel$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/common/channel/Channel;)V

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 78
    return-void
.end method

.method public abstract getId()I
.end method

.method public abstract getLocalWindow()Lorg/apache/sshd/common/channel/Window;
.end method

.method public abstract getRecipient()I
.end method

.method public abstract getRemoteWindow()Lorg/apache/sshd/common/channel/Window;
.end method

.method public abstract getRequestHandlers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract handleClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handleData(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handleEof()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handleExtendedData(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handleFailure()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handleOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handleOpenSuccess(IJJLorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handleRequest(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handleSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handleWindowAdjust(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract init(Lorg/apache/sshd/common/session/ConnectionService;Lorg/apache/sshd/common/session/Session;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isEofSignalled()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract open(IJJLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/client/future/OpenFuture;
.end method

.method public abstract removeRequestHandler(Lorg/apache/sshd/common/channel/RequestHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;)V"
        }
    .end annotation
.end method

.method public removeRequestHandlers(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;)V"
        }
    .end annotation

    .line 83
    .local p1, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;>;"
    new-instance v0, Lorg/apache/sshd/common/channel/Channel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/channel/Channel$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/channel/Channel;)V

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 84
    return-void
.end method

.method public resolveAttribute(Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 216
    .local p1, "key":Lorg/apache/sshd/common/AttributeRepository$AttributeKey;, "Lorg/apache/sshd/common/AttributeRepository$AttributeKey<TT;>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/channel/Channel;->resolveAttribute(Lorg/apache/sshd/common/channel/Channel;Lorg/apache/sshd/common/AttributeRepository$AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
