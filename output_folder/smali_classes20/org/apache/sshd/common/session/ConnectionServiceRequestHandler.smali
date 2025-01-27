.class public interface abstract Lorg/apache/sshd/common/session/ConnectionServiceRequestHandler;
.super Ljava/lang/Object;
.source "ConnectionServiceRequestHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/channel/RequestHandler<",
        "Lorg/apache/sshd/common/session/ConnectionService;",
        ">;"
    }
.end annotation


# static fields
.field public static final SVC2HNDLR:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/apache/sshd/common/session/ConnectionServiceRequestHandler;",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/session/ConnectionService;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lorg/apache/sshd/common/util/GenericUtils;->downcast()Ljava/util/function/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/session/ConnectionServiceRequestHandler;->SVC2HNDLR:Ljava/util/function/Function;

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

    .line 31
    check-cast p1, Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/session/ConnectionServiceRequestHandler;->process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object p1

    return-object p1
.end method

.method public abstract process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
