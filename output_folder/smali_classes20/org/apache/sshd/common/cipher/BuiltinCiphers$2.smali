.class final enum Lorg/apache/sshd/common/cipher/BuiltinCiphers$2;
.super Lorg/apache/sshd/common/cipher/BuiltinCiphers;
.source "BuiltinCiphers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/cipher/BuiltinCiphers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V
    .locals 11
    .param p3, "factoryName"    # Ljava/lang/String;
    .param p4, "ivsize"    # I
    .param p5, "kdfSize"    # I
    .param p6, "algorithm"    # Ljava/lang/String;
    .param p7, "keySize"    # I
    .param p8, "transformation"    # Ljava/lang/String;
    .param p9, "blkSize"    # I

    .line 61
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;ILorg/apache/sshd/common/cipher/BuiltinCiphers$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$2;->create()Lorg/apache/sshd/common/cipher/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/cipher/Cipher;
    .locals 5

    .line 64
    new-instance v0, Lorg/apache/sshd/common/cipher/BaseRC4Cipher;

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$2;->getIVSize()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$2;->getKdfSize()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$2;->getKeySize()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/BuiltinCiphers$2;->getCipherBlockSize()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sshd/common/cipher/BaseRC4Cipher;-><init>(IIII)V

    return-object v0
.end method
