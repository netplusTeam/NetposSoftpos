.class public interface abstract Lorg/apache/sshd/common/compression/Compression;
.super Ljava/lang/Object;
.source "Compression.java"

# interfaces
.implements Lorg/apache/sshd/common/compression/CompressionInformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/compression/Compression$Type;
    }
.end annotation


# virtual methods
.method public abstract compress(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract init(Lorg/apache/sshd/common/compression/Compression$Type;I)V
.end method

.method public abstract uncompress(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
