.class public abstract Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;
.super Ljava/lang/Object;
.source "AbstractKexExtensionParser.java"

# interfaces
.implements Lorg/apache/sshd/common/kex/extension/KexExtensionParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    .local p0, "this":Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;, "Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "No name provided"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;->name:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract encode(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V
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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    .local p0, "this":Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;, "Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public putExtension(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
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

    .line 46
    .local p0, "this":Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;, "Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;->encode(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 48
    return-void
.end method
