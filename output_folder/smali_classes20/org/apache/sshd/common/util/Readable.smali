.class public interface abstract Lorg/apache/sshd/common/util/Readable;
.super Ljava/lang/Object;
.source "Readable.java"


# direct methods
.method public static readable(Ljava/nio/ByteBuffer;)Lorg/apache/sshd/common/util/Readable;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 40
    const-string v0, "No buffer to wrap"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lorg/apache/sshd/common/util/Readable$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/Readable$1;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public abstract available()I
.end method

.method public abstract getRawBytes([BII)V
.end method
