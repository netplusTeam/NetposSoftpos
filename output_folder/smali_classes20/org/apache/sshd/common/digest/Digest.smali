.class public interface abstract Lorg/apache/sshd/common/digest/Digest;
.super Ljava/lang/Object;
.source "Digest.java"

# interfaces
.implements Lorg/apache/sshd/common/digest/DigestInformation;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/digest/DigestInformation;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/sshd/common/digest/Digest;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract digest()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract update([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract update([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
