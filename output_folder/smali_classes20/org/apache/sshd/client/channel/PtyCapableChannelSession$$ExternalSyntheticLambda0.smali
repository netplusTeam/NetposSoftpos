.class public final synthetic Lorg/apache/sshd/client/channel/PtyCapableChannelSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/util/buffer/Buffer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/util/buffer/Buffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/client/channel/PtyCapableChannelSession$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/util/buffer/Buffer;

    check-cast p1, Lorg/apache/sshd/common/channel/PtyMode;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/client/channel/PtyCapableChannelSession;->lambda$doOpenPty$0(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;)V

    return-void
.end method
