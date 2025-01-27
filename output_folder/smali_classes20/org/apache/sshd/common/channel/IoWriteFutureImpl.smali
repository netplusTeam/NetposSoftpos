.class public Lorg/apache/sshd/common/channel/IoWriteFutureImpl;
.super Lorg/apache/sshd/common/io/AbstractIoWriteFuture;
.source "IoWriteFutureImpl.java"


# instance fields
.field private final buffer:Lorg/apache/sshd/common/util/buffer/Buffer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/io/AbstractIoWriteFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    const-string v0, "No buffer provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/buffer/Buffer;

    iput-object v0, p0, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 36
    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    return-object v0
.end method
