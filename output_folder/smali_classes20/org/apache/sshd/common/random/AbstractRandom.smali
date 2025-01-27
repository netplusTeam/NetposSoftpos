.class public abstract Lorg/apache/sshd/common/random/AbstractRandom;
.super Ljava/lang/Object;
.source "AbstractRandom.java"

# interfaces
.implements Lorg/apache/sshd/common/random/Random;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/sshd/common/random/AbstractRandom;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
