.class final enum Lorg/apache/sshd/common/mac/BuiltinMacs$2;
.super Lorg/apache/sshd/common/mac/BuiltinMacs;
.source "BuiltinMacs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/mac/BuiltinMacs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p3, "factoryName"    # Ljava/lang/String;
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p5, "bsize"    # I
    .param p6, "defbsize"    # I

    .line 58
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/sshd/common/mac/BuiltinMacs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILorg/apache/sshd/common/mac/BuiltinMacs$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-super {p0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->create()Lorg/apache/sshd/common/mac/Mac;

    move-result-object v0

    return-object v0
.end method

.method public isEncryptThenMac()Z
    .locals 1

    .line 61
    const/4 v0, 0x1

    return v0
.end method
