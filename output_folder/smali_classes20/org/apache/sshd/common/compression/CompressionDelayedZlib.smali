.class public Lorg/apache/sshd/common/compression/CompressionDelayedZlib;
.super Lorg/apache/sshd/common/compression/CompressionZlib;
.source "CompressionDelayedZlib.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const-string/jumbo v0, "zlib@openssh.com"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/compression/CompressionZlib;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public isDelayed()Z
    .locals 1

    .line 37
    const/4 v0, 0x1

    return v0
.end method
