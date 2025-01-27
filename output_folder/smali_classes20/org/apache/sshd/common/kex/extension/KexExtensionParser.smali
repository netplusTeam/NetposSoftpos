.class public interface abstract Lorg/apache/sshd/common/kex/extension/KexExtensionParser;
.super Ljava/lang/Object;
.source "KexExtensionParser.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/NamedResource;"
    }
.end annotation


# virtual methods
.method public abstract parseExtension(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public parseExtension([B)Ljava/lang/Object;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/apache/sshd/common/kex/extension/KexExtensionParser;, "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<TT;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/apache/sshd/common/kex/extension/KexExtensionParser;->parseExtension([BII)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseExtension([BII)Ljava/lang/Object;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/apache/sshd/common/kex/extension/KexExtensionParser;, "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<TT;>;"
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BII)V

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/kex/extension/KexExtensionParser;->parseExtension(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract putExtension(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
