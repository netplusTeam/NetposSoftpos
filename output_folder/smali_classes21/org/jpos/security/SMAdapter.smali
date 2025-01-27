.class public interface abstract Lorg/jpos/security/SMAdapter;
.super Ljava/lang/Object;
.source "SMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FORMAT00:B = 0x0t

.field public static final FORMAT01:B = 0x1t

.field public static final FORMAT02:B = 0x2t

.field public static final FORMAT03:B = 0x3t

.field public static final FORMAT04:B = 0x4t

.field public static final FORMAT05:B = 0x5t

.field public static final FORMAT34:B = 0x22t

.field public static final FORMAT35:B = 0x23t

.field public static final FORMAT41:B = 0x29t

.field public static final FORMAT42:B = 0x2at

.field public static final LENGTH_DES:S = 0x40s

.field public static final LENGTH_DES3_2KEY:S = 0x80s

.field public static final LENGTH_DES3_3KEY:S = 0xc0s

.field public static final TYPE_BDK:Ljava/lang/String; = "BDK"

.field public static final TYPE_CVK:Ljava/lang/String; = "CVK"

.field public static final TYPE_DEK:Ljava/lang/String; = "DEK"

.field public static final TYPE_HMAC:Ljava/lang/String; = "HMAC"

.field public static final TYPE_MK_AC:Ljava/lang/String; = "MK-AC"

.field public static final TYPE_MK_CVC3:Ljava/lang/String; = "MK-CVC3"

.field public static final TYPE_MK_DAC:Ljava/lang/String; = "MK-DAC"

.field public static final TYPE_MK_DN:Ljava/lang/String; = "MK-DN"

.field public static final TYPE_MK_SMC:Ljava/lang/String; = "MK-SMC"

.field public static final TYPE_MK_SMI:Ljava/lang/String; = "MK-SMI"

.field public static final TYPE_PVK:Ljava/lang/String; = "PVK"

.field public static final TYPE_RSA_PK:Ljava/lang/String; = "RSA_PK"

.field public static final TYPE_RSA_SK:Ljava/lang/String; = "RSA_SK"

.field public static final TYPE_TAK:Ljava/lang/String; = "TAK"

.field public static final TYPE_TMK:Ljava/lang/String; = "TMK"

.field public static final TYPE_TPK:Ljava/lang/String; = "TPK"

.field public static final TYPE_ZAK:Ljava/lang/String; = "ZAK"

.field public static final TYPE_ZEK:Ljava/lang/String; = "ZEK"

.field public static final TYPE_ZMK:Ljava/lang/String; = "ZMK"

.field public static final TYPE_ZPK:Ljava/lang/String; = "ZPK"


# virtual methods
.method public abstract calculateCAVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract calculateCVD(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract calculateCVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract calculateIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract calculateIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract calculateIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract calculateIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract calculateSignature(Ljava/security/MessageDigest;Lorg/jpos/security/SecureKey;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract dataDecrypt(Ljava/lang/Object;[B)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract dataEncrypt(Ljava/lang/Object;[B)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract decryptData(Lorg/jpos/security/CipherMode;Lorg/jpos/security/SecureDESKey;[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract decryptData(Lorg/jpos/security/SecureKey;[BLjava/security/spec/AlgorithmParameterSpec;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract decryptPIN(Lorg/jpos/security/EncryptedPIN;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract deriveIBMPIN(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract encryptData(Lorg/jpos/security/CipherMode;Lorg/jpos/security/SecureDESKey;[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract encryptData(Lorg/jpos/security/SecureKey;[BLjava/security/spec/AlgorithmParameterSpec;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract encryptPIN(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract encryptPIN(Ljava/lang/String;Ljava/lang/String;Z)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract eraseOldLMK()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract exportKey(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract exportKey(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract exportPIN(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;B)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public varargs abstract formKEYfromClearComponents(SLjava/lang/String;[Ljava/lang/String;)Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract generateARPC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B",
            "Lorg/jpos/security/ARPCMethod;",
            "[B[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract generateCBC_MAC([BLjava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public generateClearKeyComponent(S)Ljava/lang/String;
    .locals 3
    .param p1, "keyLength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1546
    .local p0, "this":Lorg/jpos/security/SMAdapter;, "Lorg/jpos/security/SMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract generateEDE_MAC([BLjava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract generateKey(SLjava/lang/String;)Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract generateKey(Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract generateKeyCheckValue(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract generateKeyPair(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/javatuples/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ")",
            "Lorg/javatuples/Pair<",
            "Ljava/security/PublicKey;",
            "Lorg/jpos/security/SecurePrivateKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract generateKeyPair(Lorg/jpos/security/SecureKeySpec;)Lorg/javatuples/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/SecureKeySpec;",
            ")",
            "Lorg/javatuples/Pair<",
            "Ljava/security/PublicKey;",
            "Lorg/jpos/security/SecureKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract generatePIN(Ljava/lang/String;I)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract generatePIN(Ljava/lang/String;ILjava/util/List;)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract generateSM_MAC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract importKey(SLjava/lang/String;[BLorg/jpos/security/SecureDESKey;Z)Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract importKey(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;Z)Lorg/jpos/security/SecureKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract importPIN(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract importPIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract importPIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Z)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;Z)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract printPIN(Ljava/lang/String;Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract translateKeyFromOldLMK(Lorg/jpos/security/SecureDESKey;)Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract translateKeyFromOldLMK(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract translateKeyScheme(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/KeyScheme;)Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract translatePIN(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;B)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract translatePIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;TT;B)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract translatePIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Ljava/lang/Object;BZ)Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;TT;BZ)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract translatePINGenerateSM_MAC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/PaddingMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/EncryptedPIN;Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/javatuples/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "Lorg/jpos/security/PaddingMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;B)",
            "Lorg/javatuples/Pair<",
            "Lorg/jpos/security/EncryptedPIN;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract verifyARQC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B[B)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B[B)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract verifyARQCGenerateARPC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Lorg/jpos/security/ARPCMethod;",
            "[B[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract verifyCAVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract verifyCVC3(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/MKDMethod;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B",
            "Lorg/jpos/security/MKDMethod;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract verifyCVD(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract verifyCVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract verifyIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract verifyPVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract verifydCVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lorg/jpos/security/MKDMethod;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation
.end method

.method public abstract verifydCVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "[B",
            "Lorg/jpos/security/MKDMethod;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
