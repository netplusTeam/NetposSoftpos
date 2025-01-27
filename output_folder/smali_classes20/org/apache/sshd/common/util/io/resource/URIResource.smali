.class public Lorg/apache/sshd/common/util/io/resource/URIResource;
.super Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;
.source "URIResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/io/resource/AbstractIoResource<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .line 32
    const-class v0, Ljava/net/URI;

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getURI()Ljava/net/URI;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/URIResource;->getResourceValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/URIResource;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 42
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 43
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method
