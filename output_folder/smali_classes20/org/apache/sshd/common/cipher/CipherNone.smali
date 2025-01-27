.class public Lorg/apache/sshd/common/cipher/CipherNone;
.super Ljava/lang/Object;
.source "CipherNone.java"

# interfaces
.implements Lorg/apache/sshd/common/cipher/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "none"

    return-object v0
.end method

.method public getCipherBlockSize()I
    .locals 1

    .line 61
    const/16 v0, 0x8

    return v0
.end method

.method public getIVSize()I
    .locals 1

    .line 51
    const/16 v0, 0x8

    return v0
.end method

.method public getKdfSize()I
    .locals 1

    .line 56
    const/16 v0, 0x10

    return v0
.end method

.method public getKeySize()I
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getTransformation()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "none"

    return-object v0
.end method

.method public init(Lorg/apache/sshd/common/cipher/Cipher$Mode;[B[B)V
    .locals 0
    .param p1, "mode"    # Lorg/apache/sshd/common/cipher/Cipher$Mode;
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public update([BII)V
    .locals 0
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    return-void
.end method
