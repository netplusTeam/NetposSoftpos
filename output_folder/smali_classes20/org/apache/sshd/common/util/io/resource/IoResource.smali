.class public interface abstract Lorg/apache/sshd/common/util/io/resource/IoResource;
.super Ljava/lang/Object;
.source "IoResource.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;
.implements Lorg/apache/sshd/common/util/io/resource/ResourceStreamProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/NamedResource;",
        "Lorg/apache/sshd/common/util/io/resource/ResourceStreamProvider;"
    }
.end annotation


# direct methods
.method public static forResource(Ljava/lang/Object;)Lorg/apache/sshd/common/util/io/resource/IoResource;
    .locals 3
    .param p0, "resource"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/sshd/common/util/io/resource/IoResource<",
            "*>;"
        }
    .end annotation

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    instance-of v0, p0, Ljava/nio/file/Path;

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/PathResource;

    move-object v1, p0

    check-cast v1, Ljava/nio/file/Path;

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/util/io/resource/PathResource;-><init>(Ljava/nio/file/Path;)V

    return-object v0

    .line 55
    :cond_1
    instance-of v0, p0, Ljava/net/URL;

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/URLResource;

    move-object v1, p0

    check-cast v1, Ljava/net/URL;

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/util/io/resource/URLResource;-><init>(Ljava/net/URL;)V

    return-object v0

    .line 57
    :cond_2
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_3

    .line 58
    new-instance v0, Lorg/apache/sshd/common/util/io/resource/URIResource;

    move-object v1, p0

    check-cast v1, Ljava/net/URI;

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/util/io/resource/URIResource;-><init>(Ljava/net/URI;)V

    return-object v0

    .line 60
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported resource type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getResourceType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getResourceValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
