.class public interface abstract Lorg/apache/sshd/common/random/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# virtual methods
.method public fill([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/apache/sshd/common/random/Random;->fill([BII)V

    .line 37
    return-void
.end method

.method public abstract fill([BII)V
.end method

.method public abstract random(I)I
.end method
