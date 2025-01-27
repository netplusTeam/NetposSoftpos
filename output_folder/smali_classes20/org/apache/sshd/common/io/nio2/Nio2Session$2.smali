.class Lorg/apache/sshd/common/io/nio2/Nio2Session$2;
.super Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;
.source "Nio2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/io/nio2/Nio2Session;->createWriteCycleCompletionHandler(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/nio/ByteBuffer;)Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/io/nio2/Nio2Session;

.field final synthetic val$buffer:Ljava/nio/ByteBuffer;

.field final synthetic val$future:Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;

.field final synthetic val$socket:Ljava/nio/channels/AsynchronousSocketChannel;

.field final synthetic val$writeLen:I


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/io/nio2/Nio2Session;Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/io/nio2/Nio2Session;

    .line 440
    iput-object p1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Session;

    iput-object p2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$future:Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;

    iput-object p3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$socket:Ljava/nio/channels/AsynchronousSocketChannel;

    iput-object p4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$buffer:Ljava/nio/ByteBuffer;

    iput p5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$writeLen:I

    invoke-direct {p0}, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCompleted(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Integer;
    .param p2, "attachment"    # Ljava/lang/Object;

    .line 443
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Session;

    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$future:Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;

    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$socket:Ljava/nio/channels/AsynchronousSocketChannel;

    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$buffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$writeLen:I

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->handleCompletedWriteCycle(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/nio/ByteBuffer;ILorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method protected bridge synthetic onCompleted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 440
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->onCompleted(Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method protected onFailed(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 7
    .param p1, "exc"    # Ljava/lang/Throwable;
    .param p2, "attachment"    # Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Session;

    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$future:Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;

    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$socket:Ljava/nio/channels/AsynchronousSocketChannel;

    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$buffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;->val$writeLen:I

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->handleWriteCycleFailure(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/nio/ByteBuffer;ILjava/lang/Throwable;Ljava/lang/Object;)V

    .line 449
    return-void
.end method
