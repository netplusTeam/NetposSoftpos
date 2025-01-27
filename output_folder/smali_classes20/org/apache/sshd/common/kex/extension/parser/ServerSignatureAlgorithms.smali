.class public Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;
.super Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;
.source "ServerSignatureAlgorithms.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;

.field public static final NAME:Ljava/lang/String; = "server-sig-algs"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;

    invoke-direct {v0}, Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;->INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    const-string v0, "server-sig-algs"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;-><init>(Ljava/lang/String;)V

    .line 42
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

    .line 35
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;->encode(Ljava/util/List;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    return-void
.end method

.method protected encode(Ljava/util/List;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 0
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putNameList(Ljava/util/Collection;)V

    .line 59
    return-void
.end method

.method public bridge synthetic parseExtension(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;->parseExtension(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/util/List;

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

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;->parseExtension([BII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseExtension(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/util/List;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;->parseExtension([BII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseExtension([BII)Ljava/util/List;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    if-gtz p3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 47
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "vals":[Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_2
    return-object v2
.end method
