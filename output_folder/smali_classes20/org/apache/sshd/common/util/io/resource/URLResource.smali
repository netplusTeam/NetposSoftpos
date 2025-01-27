.class public Lorg/apache/sshd/common/util/io/resource/URLResource;
.super Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;
.source "URLResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/io/resource/AbstractIoResource<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 31
    const-class v0, Ljava/net/URL;

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 40
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 42
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/URLResource;->getResourceValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/URLResource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 48
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method
