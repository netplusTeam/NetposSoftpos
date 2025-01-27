.class public Lorg/apache/sshd/common/random/SingletonRandomFactory;
.super Lorg/apache/sshd/common/random/AbstractRandom;
.source "SingletonRandomFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/random/RandomFactory;


# instance fields
.field private final factory:Lorg/apache/sshd/common/NamedFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/random/Random;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Lorg/apache/sshd/common/random/Random;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/NamedFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/random/Random;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "factory":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/random/Random;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/random/AbstractRandom;-><init>()V

    .line 38
    const-string v0, "No factory"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/NamedFactory;

    iput-object v0, p0, Lorg/apache/sshd/common/random/SingletonRandomFactory;->factory:Lorg/apache/sshd/common/NamedFactory;

    .line 39
    invoke-interface {p1}, Lorg/apache/sshd/common/NamedFactory;->create()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "No random instance created"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/random/Random;

    iput-object v0, p0, Lorg/apache/sshd/common/random/SingletonRandomFactory;->random:Lorg/apache/sshd/common/random/Random;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/sshd/common/random/SingletonRandomFactory;->create()Lorg/apache/sshd/common/random/Random;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/random/Random;
    .locals 0

    .line 68
    return-object p0
.end method

.method public fill([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/common/random/SingletonRandomFactory;->random:Lorg/apache/sshd/common/random/Random;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/common/random/Random;->fill([BII)V

    .line 54
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/common/random/SingletonRandomFactory;->factory:Lorg/apache/sshd/common/NamedFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/NamedFactory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupported()Z
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/apache/sshd/common/random/SingletonRandomFactory;->factory:Lorg/apache/sshd/common/NamedFactory;

    instance-of v1, v0, Lorg/apache/sshd/common/OptionalFeature;

    if-eqz v1, :cond_0

    .line 45
    check-cast v0, Lorg/apache/sshd/common/OptionalFeature;

    invoke-interface {v0}, Lorg/apache/sshd/common/OptionalFeature;->isSupported()Z

    move-result v0

    return v0

    .line 47
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public random(I)I
    .locals 1
    .param p1, "max"    # I

    .line 58
    iget-object v0, p0, Lorg/apache/sshd/common/random/SingletonRandomFactory;->random:Lorg/apache/sshd/common/random/Random;

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/random/Random;->random(I)I

    move-result v0

    return v0
.end method
