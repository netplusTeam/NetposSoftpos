.class public Lorg/apache/sshd/common/util/io/resource/ClassLoaderResource;
.super Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;
.source "ClassLoaderResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/io/resource/AbstractIoResource<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final resourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "resourceName"    # Ljava/lang/String;

    .line 39
    const-class v0, Ljava/lang/ClassLoader;

    if-nez p1, :cond_0

    const-class v1, Lorg/apache/sshd/common/util/io/resource/ClassLoaderResource;

    invoke-static {v1}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->resolveDefaultClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 40
    const-string v0, "No resource name provided"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/resource/ClassLoaderResource;->resourceName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/resource/ClassLoaderResource;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/ClassLoaderResource;->getResourceValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/ClassLoaderResource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/ClassLoaderResource;->getResourceLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 56
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 61
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 65
    return-object v2

    .line 62
    :cond_0
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    .end local v2    # "input":Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No resource loader for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
