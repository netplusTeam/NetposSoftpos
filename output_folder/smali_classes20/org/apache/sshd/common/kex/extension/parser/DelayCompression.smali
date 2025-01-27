.class public Lorg/apache/sshd/common/kex/extension/parser/DelayCompression;
.super Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;
.source "DelayCompression.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser<",
        "Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/DelayCompression;

.field public static final NAME:Ljava/lang/String; = "delay-compression"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/sshd/common/kex/extension/parser/DelayCompression;

    invoke-direct {v0}, Lorg/apache/sshd/common/kex/extension/parser/DelayCompression;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/kex/extension/parser/DelayCompression;->INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/DelayCompression;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    const-string v0, "delay-compression"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected bridge synthetic encode(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    check-cast p1, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/kex/extension/parser/DelayCompression;->encode(Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    return-void
.end method

.method protected encode(Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "algos"    # Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v0

    .line 51
    .local v0, "lenPos":I
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 52
    invoke-virtual {p1}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->getClient2Server()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putNameList(Ljava/util/Collection;)V

    .line 53
    invoke-virtual {p1}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->getServer2Client()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putNameList(Ljava/util/Collection;)V

    .line 54
    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->updateLengthPlaceholder(Lorg/apache/sshd/common/util/buffer/Buffer;I)I

    .line 55
    return-void
.end method

.method public bridge synthetic parseExtension(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/kex/extension/parser/DelayCompression;->parseExtension(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;

    move-result-object p1

    return-object p1
.end method

.method public parseExtension(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;
    .locals 2
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;

    invoke-direct {v0}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;-><init>()V

    .line 43
    .local v0, "algos":Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getNameList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->setClient2Server(Ljava/util/List;)V

    .line 44
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getNameList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->setServer2Client(Ljava/util/List;)V

    .line 45
    return-object v0
.end method
