.class Lorg/apache/sshd/common/io/nio2/Nio2Session$1;
.super Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;
.source "Nio2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/io/nio2/Nio2Session;->createReadCycleCompletionHandler(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;)Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;
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

.field final synthetic val$bufReader:Lorg/apache/sshd/common/util/Readable;

.field final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/io/nio2/Nio2Session;Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/io/nio2/Nio2Session;

    .line 343
    iput-object p1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Session;

    iput-object p2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;->val$buffer:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;->val$bufReader:Lorg/apache/sshd/common/util/Readable;

    invoke-direct {p0}, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCompleted(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;
    .param p2, "attachment"    # Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Session;

    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;->val$buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;->val$bufReader:Lorg/apache/sshd/common/util/Readable;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->handleReadCycleCompletion(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method protected bridge synthetic onCompleted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 343
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;->onCompleted(Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method protected onFailed(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "exc"    # Ljava/lang/Throwable;
    .param p2, "attachment"    # Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Session;

    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;->val$buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;->val$bufReader:Lorg/apache/sshd/common/util/Readable;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->handleReadCycleFailure(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 352
    return-void
.end method
