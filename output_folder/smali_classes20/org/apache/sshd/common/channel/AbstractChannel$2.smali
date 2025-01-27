.class Lorg/apache/sshd/common/channel/AbstractChannel$2;
.super Lorg/apache/sshd/common/io/AbstractIoWriteFuture;
.source "AbstractChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/channel/AbstractChannel;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/channel/AbstractChannel;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/channel/AbstractChannel;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "this$0"    # Lorg/apache/sshd/common/channel/AbstractChannel;
    .param p2, "x0"    # Ljava/lang/Object;
    .param p3, "x1"    # Ljava/lang/Object;

    .line 790
    iput-object p1, p0, Lorg/apache/sshd/common/channel/AbstractChannel$2;->this$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    invoke-direct {p0, p2, p3}, Lorg/apache/sshd/common/io/AbstractIoWriteFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 792
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Channel is being closed"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/AbstractChannel$2;->setValue(Ljava/lang/Object;)V

    .line 793
    return-void
.end method
