.class public Lorg/apache/sshd/common/kex/extension/parser/Elevation;
.super Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;
.source "Elevation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/Elevation;

.field public static final NAME:Ljava/lang/String; = "elevation"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/sshd/common/kex/extension/parser/Elevation;

    invoke-direct {v0}, Lorg/apache/sshd/common/kex/extension/parser/Elevation;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/kex/extension/parser/Elevation;->INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/Elevation;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    const-string v0, "elevation"

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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/kex/extension/parser/Elevation;->encode(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    return-void
.end method

.method protected encode(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p2, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 53
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
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/kex/extension/parser/Elevation;->parseExtension(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseExtension([BII)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/common/kex/extension/parser/Elevation;->parseExtension([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseExtension(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/String;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sshd/common/kex/extension/parser/Elevation;->parseExtension([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseExtension([BII)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    if-gtz p3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_0
    return-object v0
.end method
