.class public Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;
.super Lorg/apache/sshd/common/io/AbstractIoWriteFuture;
.source "Nio2DefaultIoWriteFuture.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/io/AbstractIoWriteFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    iput-object p3, p0, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->buffer:Ljava/nio/ByteBuffer;

    .line 35
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 46
    const-string v0, "No exception specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->setValue(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public setWritten()V
    .locals 1

    .line 42
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->setValue(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
