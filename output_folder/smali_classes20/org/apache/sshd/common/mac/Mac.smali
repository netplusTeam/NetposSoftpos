.class public interface abstract Lorg/apache/sshd/common/mac/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Lorg/apache/sshd/common/mac/MacInformation;


# virtual methods
.method public doFinal([B)V
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/apache/sshd/common/mac/Mac;->doFinal([BI)V

    .line 49
    return-void
.end method

.method public abstract doFinal([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public doFinal()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-interface {p0}, Lorg/apache/sshd/common/mac/Mac;->getBlockSize()I

    move-result v0

    .line 42
    .local v0, "blockSize":I
    new-array v1, v0, [B

    .line 43
    .local v1, "buf":[B
    invoke-interface {p0, v1}, Lorg/apache/sshd/common/mac/Mac;->doFinal([B)V

    .line 44
    return-object v1
.end method

.method public abstract init([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public update([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 33
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/apache/sshd/common/mac/Mac;->update([BII)V

    .line 34
    return-void
.end method

.method public abstract update([BII)V
.end method

.method public abstract updateUInt(J)V
.end method
