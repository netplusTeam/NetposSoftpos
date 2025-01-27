.class public abstract Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;
.super Ljava/lang/Object;
.source "AbstractIoResource.java"

# interfaces
.implements Lorg/apache/sshd/common/util/io/resource/IoResource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/util/io/resource/IoResource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final resourceType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final resourceValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;, "Lorg/apache/sshd/common/util/io/resource/AbstractIoResource<TT;>;"
    .local p1, "resourceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "No resource type specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;->resourceType:Ljava/lang/Class;

    .line 36
    const-string v0, "No resource value provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;->resourceValue:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 51
    .local p0, "this":Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;, "Lorg/apache/sshd/common/util/io/resource/AbstractIoResource<TT;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;->getResourceValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;, "Lorg/apache/sshd/common/util/io/resource/AbstractIoResource<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;->resourceType:Ljava/lang/Class;

    return-object v0
.end method

.method public getResourceValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;, "Lorg/apache/sshd/common/util/io/resource/AbstractIoResource<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;->resourceValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    .local p0, "this":Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;, "Lorg/apache/sshd/common/util/io/resource/AbstractIoResource<TT;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/resource/AbstractIoResource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
