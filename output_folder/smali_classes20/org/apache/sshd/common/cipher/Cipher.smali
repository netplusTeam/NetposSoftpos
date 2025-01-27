.class public interface abstract Lorg/apache/sshd/common/cipher/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"

# interfaces
.implements Lorg/apache/sshd/common/cipher/CipherInformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/cipher/Cipher$Mode;
    }
.end annotation


# direct methods
.method public static checkSupported(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "xform"    # Ljava/lang/String;
    .param p1, "keyLength"    # I

    .line 77
    const-string v0, "No transformation"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    if-lez p1, :cond_1

    .line 83
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v1, "maxKeyLength":I
    if-lt v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 85
    .end local v1    # "maxKeyLength":I
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad key length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for cipher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract init(Lorg/apache/sshd/common/cipher/Cipher$Mode;[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public update([B)V
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/apache/sshd/common/cipher/Cipher;->update([BII)V

    .line 56
    return-void
.end method

.method public abstract update([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
