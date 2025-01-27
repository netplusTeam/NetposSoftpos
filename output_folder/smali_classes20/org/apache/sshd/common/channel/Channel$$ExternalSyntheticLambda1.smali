.class public final synthetic Lorg/apache/sshd/common/channel/Channel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/channel/Channel;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/channel/Channel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/channel/Channel$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/channel/Channel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/channel/Channel$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/channel/Channel;

    check-cast p1, Lorg/apache/sshd/common/channel/RequestHandler;

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/channel/Channel;->addRequestHandler(Lorg/apache/sshd/common/channel/RequestHandler;)V

    return-void
.end method
