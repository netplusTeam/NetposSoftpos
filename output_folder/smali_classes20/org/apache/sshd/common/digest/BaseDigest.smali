.class public Lorg/apache/sshd/common/digest/BaseDigest;
.super Ljava/lang/Object;
.source "BaseDigest.java"

# interfaces
.implements Lorg/apache/sshd/common/digest/Digest;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final bsize:I

.field private h:I

.field private md:Ljava/security/MessageDigest;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bsize"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "No algorithm"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->algorithm:Ljava/lang/String;

    .line 52
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v1, p2

    const-string v3, "Invalid block size: %d"

    invoke-static {v0, v3, v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 53
    iput p2, p0, Lorg/apache/sshd/common/digest/BaseDigest;->bsize:I

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lorg/apache/sshd/common/digest/Digest;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/digest/BaseDigest;->compareTo(Lorg/apache/sshd/common/digest/Digest;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/sshd/common/digest/Digest;)I
    .locals 6
    .param p1, "that"    # Lorg/apache/sshd/common/digest/Digest;

    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 v0, -0x1

    return v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    .line 112
    return v0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BaseDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "thisAlg":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/sshd/common/digest/Digest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "thatAlg":Ljava/lang/String;
    invoke-static {v1, v2, v0}, Lorg/apache/sshd/common/util/GenericUtils;->safeCompare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    .line 118
    .local v3, "nRes":I
    if-eqz v3, :cond_2

    .line 119
    return v3

    .line 122
    :cond_2
    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BaseDigest;->getBlockSize()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/sshd/common/digest/Digest;->getBlockSize()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    return v3

    .line 127
    :cond_3
    return v0
.end method

.method public digest()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->md:Ljava/security/MessageDigest;

    const-string v1, "Digest not initialized"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 133
    return v0

    .line 135
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 136
    return v1

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 139
    return v0

    .line 142
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/common/digest/Digest;

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/digest/BaseDigest;->compareTo(Lorg/apache/sshd/common/digest/Digest;)I

    move-result v2

    .line 143
    .local v2, "nRes":I
    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->bsize:I

    return v0
.end method

.method protected getMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->md:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->h:I

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BaseDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BaseDigest;->getBlockSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->h:I

    .line 98
    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->h:I

    .line 102
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->h:I

    return v0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BaseDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->md:Ljava/security/MessageDigest;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BaseDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BaseDigest;->getBlockSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->s:Ljava/lang/String;

    .line 152
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->s:Ljava/lang/String;

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sshd/common/digest/BaseDigest;->update([BII)V

    .line 74
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/sshd/common/digest/BaseDigest;->md:Ljava/security/MessageDigest;

    const-string v1, "Digest not initialized"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 79
    return-void
.end method
