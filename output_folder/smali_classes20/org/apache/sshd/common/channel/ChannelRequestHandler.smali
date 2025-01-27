.class public interface abstract Lorg/apache/sshd/common/channel/ChannelRequestHandler;
.super Ljava/lang/Object;
.source "ChannelRequestHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/channel/RequestHandler<",
        "Lorg/apache/sshd/common/channel/Channel;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHANN2HNDLR:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/apache/sshd/common/channel/ChannelRequestHandler;",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lorg/apache/sshd/common/util/GenericUtils;->downcast()Ljava/util/function/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/channel/ChannelRequestHandler;->CHANN2HNDLR:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/Object;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/sshd/common/channel/Channel;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/channel/ChannelRequestHandler;->process(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object p1

    return-object p1
.end method

.method public abstract process(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
