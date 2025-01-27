.class final enum Lorg/apache/sshd/common/compression/BuiltinCompressions$3;
.super Lorg/apache/sshd/common/compression/BuiltinCompressions;
.source "BuiltinCompressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/compression/BuiltinCompressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "n"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/compression/BuiltinCompressions;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/compression/BuiltinCompressions$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/sshd/common/compression/BuiltinCompressions$3;->create()Lorg/apache/sshd/common/compression/Compression;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/compression/Compression;
    .locals 1

    .line 64
    new-instance v0, Lorg/apache/sshd/common/compression/CompressionDelayedZlib;

    invoke-direct {v0}, Lorg/apache/sshd/common/compression/CompressionDelayedZlib;-><init>()V

    return-object v0
.end method

.method public isDelayed()Z
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method
