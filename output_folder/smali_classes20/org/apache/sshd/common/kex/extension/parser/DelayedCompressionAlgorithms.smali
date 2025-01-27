.class public Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;
.super Ljava/lang/Object;
.source "DelayedCompressionAlgorithms.java"


# instance fields
.field private client2server:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private server2client:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 74
    return v0

    .line 76
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 77
    return v1

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 80
    return v0

    .line 83
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;

    .line 84
    .local v2, "other":Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->getClient2Server()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->getClient2Server()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/sshd/common/util/GenericUtils;->findFirstDifferentValueIndex(Ljava/util/List;Ljava/util/List;)I

    move-result v3

    if-gez v3, :cond_3

    .line 85
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->getServer2Client()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->getServer2Client()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/sshd/common/util/GenericUtils;->findFirstDifferentValueIndex(Ljava/util/List;Ljava/util/List;)I

    move-result v3

    if-gez v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    .line 84
    :goto_0
    return v0
.end method

.method public getClient2Server()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->client2server:Ljava/util/List;

    return-object v0
.end method

.method public getServer2Client()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->server2client:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 67
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->getClient2Server()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->getServer2Client()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    .line 67
    return v0
.end method

.method public setClient2Server(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "client2server":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->client2server:Ljava/util/List;

    .line 49
    return-void
.end method

.method public setServer2Client(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "server2client":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->server2client:Ljava/util/List;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[client2server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->getClient2Server()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", server2client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->getServer2Client()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method public withClient2Server(Ljava/util/List;)Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;"
        }
    .end annotation

    .line 43
    .local p1, "client2server":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->setClient2Server(Ljava/util/List;)V

    .line 44
    return-object p0
.end method

.method public withServer2Client(Ljava/util/List;)Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;"
        }
    .end annotation

    .line 56
    .local p1, "server2client":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/kex/extension/parser/DelayedCompressionAlgorithms;->setServer2Client(Ljava/util/List;)V

    .line 57
    return-object p0
.end method
