.class public Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;
.super Ljava/lang/Object;
.source "BCryptKdfOptions.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions$BCryptBadRoundsException;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_ROUNDS:I = 0xff

.field private static final MAX_ROUNDS_HOLDER:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final NAME:Ljava/lang/String; = "bcrypt"


# instance fields
.field private numRounds:I

.field private salt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->MAX_ROUNDS_HOLDER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static getMaxAllowedRounds()I
    .locals 1

    .line 230
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->MAX_ROUNDS_HOLDER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static setMaxAllowedRounds(I)V
    .locals 4
    .param p0, "value"    # I

    .line 234
    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v1, p0

    const-string v3, "Invalid max. rounds value: %d"

    invoke-static {v0, v3, v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 235
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->MAX_ROUNDS_HOLDER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 236
    return-void
.end method


# virtual methods
.method protected bcryptKdf([B[B)V
    .locals 3
    .param p1, "password"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCrypt;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCrypt;-><init>()V

    .line 172
    .local v0, "bcrypt":Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCrypt;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getSalt()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getNumRounds()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCrypt;->pbkdf([B[BI[B)V

    .line 173
    return-void
.end method

.method public decodePrivateKeyBytes(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 17
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "cipherName"    # Ljava/lang/String;
    .param p4, "privateDataBytes"    # [B
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 109
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static/range {p4 .. p4}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    return-object v2

    .line 113
    :cond_0
    invoke-static/range {p3 .. p3}, Lorg/apache/sshd/common/cipher/BuiltinCiphers;->resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/CipherFactory;

    move-result-object v3

    .line 114
    .local v3, "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/apache/sshd/common/cipher/CipherFactory;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    invoke-interface {v3}, Lorg/apache/sshd/common/cipher/CipherFactory;->getCipherBlockSize()I

    move-result v4

    .line 119
    .local v4, "blockSize":I
    array-length v0, v2

    rem-int/2addr v0, v4

    if-nez v0, :cond_7

    .line 124
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v5, p5

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 126
    .local v6, "pwd":[B
    invoke-interface {v3}, Lorg/apache/sshd/common/cipher/CipherFactory;->getKdfSize()I

    move-result v7

    .line 127
    .local v7, "keySize":I
    invoke-interface {v3}, Lorg/apache/sshd/common/cipher/CipherFactory;->getIVSize()I

    move-result v8

    .line 128
    .local v8, "ivSize":I
    add-int v0, v7, v8

    new-array v9, v0, [B

    .line 130
    .local v9, "cipherInput":[B
    const/4 v10, 0x0

    move-object/from16 v11, p0

    :try_start_0
    invoke-virtual {v11, v6, v9}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->bcryptKdf([B[B)V

    .line 132
    invoke-static {v9, v10, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object v12, v0

    .line 133
    .local v12, "kv":[B
    array-length v0, v9

    invoke-static {v9, v7, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v13, v0

    .line 135
    .local v13, "iv":[B
    :try_start_1
    invoke-interface {v3}, Lorg/apache/sshd/common/cipher/CipherFactory;->getTransformation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 136
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v3}, Lorg/apache/sshd/common/cipher/CipherFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v12, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 137
    .local v14, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v15, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v15, v13}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 138
    .local v15, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v14, v15}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 139
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .local v16, "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    :try_start_2
    invoke-static {v12, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 143
    invoke-static {v13, v3}, Ljava/util/Arrays;->fill([BB)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 165
    invoke-static {v6, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 166
    invoke-static {v9, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 139
    return-object v10

    .line 142
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v14    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v15    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local v3    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v12, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 143
    invoke-static {v13, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 144
    nop

    .end local v4    # "blockSize":I
    .end local v6    # "pwd":[B
    .end local v7    # "keySize":I
    .end local v8    # "ivSize":I
    .end local v9    # "cipherInput":[B
    .end local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "cipherName":Ljava/lang/String;
    .end local p4    # "privateDataBytes":[B
    .end local p5    # "password":Ljava/lang/String;
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 145
    .end local v12    # "kv":[B
    .end local v13    # "iv":[B
    .restart local v4    # "blockSize":I
    .restart local v6    # "pwd":[B
    .restart local v7    # "keySize":I
    .restart local v8    # "ivSize":I
    .restart local v9    # "cipherInput":[B
    .restart local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "cipherName":Ljava/lang/String;
    .restart local p4    # "privateDataBytes":[B
    .restart local p5    # "password":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 165
    .end local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local v3    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    goto :goto_3

    .line 145
    .end local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local v3    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    .line 146
    .end local v3    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    :goto_0
    :try_start_4
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 147
    .local v3, "t":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 148
    .local v10, "err":Ljava/lang/Throwable;
    instance-of v12, v3, Ljava/io/IOException;

    if-nez v12, :cond_3

    instance-of v12, v3, Ljava/security/GeneralSecurityException;

    if-eqz v12, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->resolveExceptionCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    move-object v3, v12

    .line 152
    nop

    instance-of v12, v3, Ljava/io/IOException;

    if-nez v12, :cond_2

    instance-of v12, v3, Ljava/security/GeneralSecurityException;

    if-eqz v12, :cond_4

    .line 153
    :cond_2
    move-object v10, v3

    goto :goto_2

    .line 149
    :cond_3
    :goto_1
    move-object v10, v3

    .line 157
    :cond_4
    :goto_2
    instance-of v12, v10, Ljava/io/IOException;

    if-nez v12, :cond_6

    .line 159
    instance-of v12, v10, Ljava/security/GeneralSecurityException;

    if-eqz v12, :cond_5

    .line 160
    move-object v12, v10

    check-cast v12, Ljava/security/GeneralSecurityException;

    .end local v4    # "blockSize":I
    .end local v6    # "pwd":[B
    .end local v7    # "keySize":I
    .end local v8    # "ivSize":I
    .end local v9    # "cipherInput":[B
    .end local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "cipherName":Ljava/lang/String;
    .end local p4    # "privateDataBytes":[B
    .end local p5    # "password":Ljava/lang/String;
    throw v12

    .line 162
    .restart local v4    # "blockSize":I
    .restart local v6    # "pwd":[B
    .restart local v7    # "keySize":I
    .restart local v8    # "ivSize":I
    .restart local v9    # "cipherInput":[B
    .restart local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "cipherName":Ljava/lang/String;
    .restart local p4    # "privateDataBytes":[B
    .restart local p5    # "password":Ljava/lang/String;
    :cond_5
    nop

    .end local v4    # "blockSize":I
    .end local v6    # "pwd":[B
    .end local v7    # "keySize":I
    .end local v8    # "ivSize":I
    .end local v9    # "cipherInput":[B
    .end local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "cipherName":Ljava/lang/String;
    .end local p4    # "privateDataBytes":[B
    .end local p5    # "password":Ljava/lang/String;
    throw v0

    .line 158
    .restart local v4    # "blockSize":I
    .restart local v6    # "pwd":[B
    .restart local v7    # "keySize":I
    .restart local v8    # "ivSize":I
    .restart local v9    # "cipherInput":[B
    .restart local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "cipherName":Ljava/lang/String;
    .restart local p4    # "privateDataBytes":[B
    .restart local p5    # "password":Ljava/lang/String;
    :cond_6
    move-object v12, v10

    check-cast v12, Ljava/io/IOException;

    .end local v4    # "blockSize":I
    .end local v6    # "pwd":[B
    .end local v7    # "keySize":I
    .end local v8    # "ivSize":I
    .end local v9    # "cipherInput":[B
    .end local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .end local p3    # "cipherName":Ljava/lang/String;
    .end local p4    # "privateDataBytes":[B
    .end local p5    # "password":Ljava/lang/String;
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 165
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v10    # "err":Ljava/lang/Throwable;
    .restart local v4    # "blockSize":I
    .restart local v6    # "pwd":[B
    .restart local v7    # "keySize":I
    .restart local v8    # "ivSize":I
    .restart local v9    # "cipherInput":[B
    .restart local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "resourceKey":Lorg/apache/sshd/common/NamedResource;
    .restart local p3    # "cipherName":Ljava/lang/String;
    .restart local p4    # "privateDataBytes":[B
    .restart local p5    # "password":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :goto_3
    const/4 v3, 0x0

    invoke-static {v6, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 166
    invoke-static {v9, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 167
    throw v0

    .line 120
    .end local v6    # "pwd":[B
    .end local v7    # "keySize":I
    .end local v8    # "ivSize":I
    .end local v9    # "cipherInput":[B
    .end local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .local v3, "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    :cond_7
    move-object/from16 v16, v3

    .end local v3    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encrypted data size ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") is not aligned to  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " block size ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    .end local v4    # "blockSize":I
    .end local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local v3    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    :cond_8
    move-object/from16 v11, p0

    move-object/from16 v5, p5

    move-object/from16 v16, v3

    .line 115
    .end local v3    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    .restart local v16    # "cipherSpec":Lorg/apache/sshd/common/cipher/CipherFactory;
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported cipher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 209
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 210
    return v0

    .line 212
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 213
    return v1

    .line 215
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 216
    return v0

    .line 219
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;

    .line 220
    .local v2, "other":Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getNumRounds()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getNumRounds()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 221
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getSalt()[B

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getSalt()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    .line 220
    :goto_0
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 177
    const-string v0, "bcrypt"

    return-object v0
.end method

.method public getNumRounds()I
    .locals 1

    .line 189
    iget v0, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->numRounds:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->salt:[B

    invoke-static {v0}, Lorg/apache/sshd/common/util/NumberUtils;->emptyIfNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 204
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getNumRounds()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getSalt()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected initialize(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "maxSaltSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-static {p1, p2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->setSalt([B)V

    .line 97
    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeInt(Ljava/io/InputStream;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->setNumRounds(I)V

    .line 98
    return-void
.end method

.method public initialize(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "kdfOptions"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-string v0, "bcrypt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-static {p2}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    array-length v0, p2

    add-int/lit8 v0, v0, -0x8

    .line 83
    .local v0, "expectedSaltLength":I
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->initialize(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 87
    .end local v1    # "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getSalt()[B

    move-result-object v1

    .line 88
    .local v1, "saltValue":[B
    invoke-static {v1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v2

    .line 89
    .local v2, "actualSaltLength":I
    if-ne v2, v0, :cond_0

    .line 93
    return-void

    .line 90
    :cond_0
    new-instance v3, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatched salt data length: expected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    .end local v2    # "actualSaltLength":I
    .local v1, "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "expectedSaltLength":I
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "kdfOptions":[B
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .restart local v0    # "expectedSaltLength":I
    .restart local v1    # "stream":Ljava/io/InputStream;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "kdfOptions":[B
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    .line 78
    .end local v0    # "expectedSaltLength":I
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_1
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing KDF options for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched KDF name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public setNumRounds(I)V
    .locals 4
    .param p1, "numRounds"    # I

    .line 193
    invoke-static {}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getMaxAllowedRounds()I

    move-result v0

    .line 194
    .local v0, "maxAllowed":I
    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 199
    iput p1, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->numRounds:I

    .line 200
    return-void

    .line 195
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions$BCryptBadRoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad rounds value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - max. allowed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions$BCryptBadRoundsException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public setSalt([B)V
    .locals 1
    .param p1, "salt"    # [B

    .line 185
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->emptyIfNull([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->salt:[B

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": rounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getNumRounds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", salt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;->getSalt()[B

    move-result-object v1

    const/16 v2, 0x3a

    invoke-static {v2, v1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
