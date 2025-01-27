.class public Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;
.super Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder;
.source "OpenSSHEd25519PrivateKeyEntryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder<",
        "Lnet/i2p/crypto/eddsa/EdDSAPublicKey;",
        "Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;

.field private static final KEYPAIR_SIZE:I = 0x40

.field private static final PK_SIZE:I = 0x20

.field private static final SK_SIZE:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 60
    const-class v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    const-class v1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 62
    const-string v2, "ssh-ed25519"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 61
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 60
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sshd/common/config/keys/impl/AbstractPrivateKeyEntryDecoder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic clonePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;->clonePrivateKey(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePrivateKey(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    .locals 3
    .param p1, "key"    # Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

    move-result-object v1

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    return-object v0
.end method

.method public bridge synthetic clonePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;->clonePublicKey(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePublicKey(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .locals 3
    .param p1, "key"    # Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 165
    if-nez p1, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>(Lnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    return-object v0
.end method

.method public bridge synthetic decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Ljava/security/PrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;->decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePrivateKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;)Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    .locals 10
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p4, "keyData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    const-string v0, "ssh-ed25519"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isEDDSACurveSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    .line 83
    .local v0, "pk":[B
    sget-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    .line 85
    .local v1, "keypair":[B
    const/16 v2, 0x40

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p4, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    move-object v0, v4

    .line 86
    const/16 v4, 0x80

    invoke-static {p4, v4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    move-object v1, v4

    .line 87
    array-length v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x20

    if-ne v4, v7, :cond_3

    .line 91
    array-length v4, v1

    if-ne v4, v2, :cond_2

    .line 97
    invoke-static {v1, v7, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    .local v2, "sk":[B
    :try_start_1
    const-string v4, "Ed25519"

    invoke-static {v4}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v4

    .line 106
    .local v4, "params":Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    new-instance v5, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-direct {v5, v2, v4}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-virtual {p0, v5}, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    check-cast v5, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v4    # "params":Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .local v5, "privateKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    :try_start_2
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 110
    nop

    .line 118
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getAbyte()[B

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_0

    .line 122
    nop

    .line 125
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 126
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 122
    return-object v5

    .line 119
    :cond_0
    :try_start_3
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v6, "The provided pk does NOT match the computed pk for the given sk."

    invoke-direct {v4, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pk":[B
    .end local v1    # "keypair":[B
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "keyType":Ljava/lang/String;
    .end local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p4    # "keyData":Ljava/io/InputStream;
    throw v4

    .line 109
    .end local v5    # "privateKey":Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    .restart local v0    # "pk":[B
    .restart local v1    # "keypair":[B
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "keyType":Ljava/lang/String;
    .restart local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p4    # "keyData":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 110
    nop

    .end local v0    # "pk":[B
    .end local v1    # "keypair":[B
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "keyType":Ljava/lang/String;
    .end local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p4    # "keyData":Ljava/io/InputStream;
    throw v4

    .line 98
    .end local v2    # "sk":[B
    .restart local v0    # "pk":[B
    .restart local v1    # "keypair":[B
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "keyType":Ljava/lang/String;
    .restart local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p4    # "keyData":Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v4, "Keypair did not contain the public key."

    invoke-direct {v2, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pk":[B
    .end local v1    # "keypair":[B
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "keyType":Ljava/lang/String;
    .end local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p4    # "keyData":Ljava/io/InputStream;
    throw v2

    .line 92
    .restart local v0    # "pk":[B
    .restart local v1    # "keypair":[B
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "keyType":Ljava/lang/String;
    .restart local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p4    # "keyData":Ljava/io/InputStream;
    :cond_2
    new-instance v4, Ljava/security/InvalidKeyException;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "Unexpected keypair size: %s (expected %s)"

    new-array v6, v6, [Ljava/lang/Object;

    array-length v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-static {v7, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pk":[B
    .end local v1    # "keypair":[B
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "keyType":Ljava/lang/String;
    .end local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p4    # "keyData":Ljava/io/InputStream;
    throw v4

    .line 88
    .restart local v0    # "pk":[B
    .restart local v1    # "keypair":[B
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "keyType":Ljava/lang/String;
    .restart local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p4    # "keyData":Ljava/io/InputStream;
    :cond_3
    new-instance v2, Ljava/security/InvalidKeyException;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "Unexpected pk size: %s (expected %s)"

    new-array v6, v6, [Ljava/lang/Object;

    array-length v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pk":[B
    .end local v1    # "keypair":[B
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "keyType":Ljava/lang/String;
    .end local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .end local p4    # "keyData":Ljava/io/InputStream;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    .restart local v0    # "pk":[B
    .restart local v1    # "keypair":[B
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "keyType":Ljava/lang/String;
    .restart local p3    # "passwordProvider":Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .restart local p4    # "keyData":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 126
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 127
    throw v2

    .line 75
    .end local v0    # "pk":[B
    .end local v1    # "keypair":[B
    :cond_4
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "EdDSA provider not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_5
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic encodePrivateKey(Ljava/io/OutputStream;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    check-cast p2, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;->encodePrivateKey(Ljava/io/OutputStream;Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodePrivateKey(Ljava/io/OutputStream;Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "key"    # Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const-string v0, "No private key provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

    move-result-object v0

    .line 139
    .local v0, "sk":[B
    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getAbyte()[B

    move-result-object v1

    .line 141
    .local v1, "pk":[B
    const-string v2, "No seed"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 144
    .local v2, "keypair":[B
    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-static {v1, v3, v2, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    invoke-static {p1, v1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->writeRLEBytes(Ljava/io/OutputStream;[B)I

    .line 148
    invoke-static {p1, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->writeRLEBytes(Ljava/io/OutputStream;[B)I

    .line 150
    const-string v3, "ssh-ed25519"

    return-object v3
.end method

.method public getKeyFactoryInstance()Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 188
    const-string v0, "EdDSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPairGenerator()Ljava/security/KeyPairGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 183
    const-string v0, "EdDSA"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0
.end method

.method public isPublicKeyRecoverySupported()Z
    .locals 1

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic recoverPublicKey(Ljava/security/PrivateKey;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/security/eddsa/OpenSSHEd25519PrivateKeyEntryDecoder;->recoverPublicKey(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public recoverPublicKey(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .locals 1
    .param p1, "prvKey"    # Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 160
    invoke-static {p1}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->recoverEDDSAPublicKey(Ljava/security/PrivateKey;)Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    move-result-object v0

    return-object v0
.end method
