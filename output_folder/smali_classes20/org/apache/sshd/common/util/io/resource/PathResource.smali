.class public Lorg/apache/sshd/common/util/io/resource/PathResource;
.super Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;
.source "PathResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/io/resource/AbstractIoResource<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final openOptions:[Ljava/nio/file/OpenOption;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 37
    const-class v0, Ljava/nio/file/Path;

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/resource/PathResource;->openOptions:[Ljava/nio/file/OpenOption;

    .line 39
    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "openOptions"    # [Ljava/nio/file/OpenOption;

    .line 42
    const-class v0, Ljava/nio/file/Path;

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 44
    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, [Ljava/nio/file/OpenOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/OpenOption;

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/util/io/resource/PathResource;->openOptions:[Ljava/nio/file/OpenOption;

    .line 45
    return-void
.end method


# virtual methods
.method public getOpenOptions()[Ljava/nio/file/OpenOption;
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/resource/PathResource;->openOptions:[Ljava/nio/file/OpenOption;

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [Ljava/nio/file/OpenOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/OpenOption;

    :goto_0
    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/PathResource;->getResourceValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/PathResource;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/PathResource;->getOpenOptions()[Ljava/nio/file/OpenOption;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
