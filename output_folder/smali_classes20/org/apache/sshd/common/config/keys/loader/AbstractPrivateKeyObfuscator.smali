.class public abstract Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;
.super Ljava/lang/Object;
.source "AbstractPrivateKeyObfuscator.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/PrivateKeyObfuscator;


# instance fields
.field private final algName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "No name specified"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;->algName:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public appendPrivateKeyEncryptionContext(Ljava/lang/Appendable;Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)Ljava/lang/Appendable;
    .locals 4
    .param p2, "encContext"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p1, "sb":Ljava/lang/Appendable;, "TA;"
    if-nez p2, :cond_0

    .line 68
    return-object p1

    .line 71
    :cond_0
    const-string v0, "DEK-Info: "

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 72
    const/16 v1, 0x2d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 73
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 75
    invoke-virtual {p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getInitVector()[B

    move-result-object v0

    .line 76
    .local v0, "initVector":[B
    const-string v1, "No encryption init vector"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string v3, "Empty encryption init vector"

    invoke-static {v1, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 78
    const/16 v1, 0x2c

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->appendHex(Ljava/lang/Appendable;C[B)Ljava/lang/Appendable;

    .line 79
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 80
    return-object p1
.end method

.method protected applyPrivateKeyCipher([BLorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;I[BZ)[B
    .locals 20
    .param p1, "bytes"    # [B
    .param p2, "encContext"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .param p3, "numBits"    # I
    .param p4, "keyValue"    # [B
    .param p5, "encryptIt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 141
    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    const-string v0, "No encryption context"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "No cipher name"

    invoke-static {v0, v6}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "cipherName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherType()Ljava/lang/String;

    move-result-object v0

    const-string v7, "No cipher type"

    invoke-static {v0, v7}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherMode()Ljava/lang/String;

    move-result-object v0

    const-string v7, "No cipher mode"

    invoke-static {v0, v7}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "cipherMode":Ljava/lang/String;
    const-string v0, "No source data"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    const-string v0, "No encryption key"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    array-length v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v10, "Empty encryption key"

    invoke-static {v0, v10}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getInitVector()[B

    move-result-object v0

    const-string v10, "No encryption init vector"

    invoke-static {v0, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [B

    .line 151
    .local v10, "initVector":[B
    array-length v0, v10

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v11, "Empty encryption init vector"

    invoke-static {v0, v11}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "/NoPadding"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 154
    .local v11, "xform":Ljava/lang/String;
    invoke-static {v11}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v12

    .line 156
    .local v12, "maxAllowedBits":I
    if-gt v2, v12, :cond_5

    .line 163
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v3, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v13, v0

    .line 164
    .local v13, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v14, v0

    .line 165
    .local v14, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-static {v11}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 166
    .local v15, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v8

    .line 167
    .local v8, "blockSize":I
    array-length v9, v1

    .line 168
    .local v9, "dataSize":I
    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    :goto_2
    invoke-virtual {v15, v0, v13, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 169
    if-gtz v8, :cond_3

    .line 170
    invoke-virtual {v15, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0

    .line 173
    :cond_3
    rem-int v3, v9, v8

    .line 174
    .local v3, "remLen":I
    if-gtz v3, :cond_4

    .line 175
    invoke-virtual {v15, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0

    .line 178
    :cond_4
    sub-int v5, v9, v3

    .line 179
    .local v5, "updateSize":I
    move-object/from16 v16, v6

    .end local v6    # "cipherName":Ljava/lang/String;
    .local v16, "cipherName":Ljava/lang/String;
    new-array v6, v8, [B

    .line 182
    .local v6, "lastBlock":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v17, v0

    .line 184
    .local v17, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v6, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 185
    move-object/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "cipherMode":Ljava/lang/String;
    .local v18, "cipherMode":Ljava/lang/String;
    :try_start_1
    invoke-static {v1, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 188
    :try_start_2
    invoke-virtual {v15, v1, v7, v5}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v19, v0

    .line 190
    .local v19, "buf":[B
    move-object/from16 v7, v17

    move-object/from16 v1, v19

    .end local v17    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "buf":[B
    .local v1, "buf":[B
    .local v7, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 192
    move/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "remLen":I
    .local v17, "remLen":I
    :try_start_4
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 193
    nop

    .line 195
    invoke-virtual {v15, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v1, v0

    .line 197
    :try_start_5
    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 199
    const/4 v3, 0x0

    :try_start_6
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 200
    nop

    .line 202
    .end local v1    # "buf":[B
    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    nop

    .line 205
    invoke-static {v6, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 206
    nop

    .line 208
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    move/from16 v19, v5

    goto :goto_4

    .line 202
    :catchall_1
    move-exception v0

    move/from16 v19, v5

    goto :goto_3

    .line 199
    .restart local v1    # "buf":[B
    :catchall_2
    move-exception v0

    move-object v3, v0

    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "updateSize":I
    .local v19, "updateSize":I
    :try_start_8
    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 200
    nop

    .end local v6    # "lastBlock":[B
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "blockSize":I
    .end local v9    # "dataSize":I
    .end local v10    # "initVector":[B
    .end local v11    # "xform":Ljava/lang/String;
    .end local v12    # "maxAllowedBits":I
    .end local v13    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v14    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v15    # "cipher":Ljavax/crypto/Cipher;
    .end local v16    # "cipherName":Ljava/lang/String;
    .end local v17    # "remLen":I
    .end local v18    # "cipherMode":Ljava/lang/String;
    .end local v19    # "updateSize":I
    .end local p1    # "bytes":[B
    .end local p2    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local p3    # "numBits":I
    .end local p4    # "keyValue":[B
    .end local p5    # "encryptIt":Z
    throw v3

    .line 202
    .end local v1    # "buf":[B
    .restart local v5    # "updateSize":I
    .restart local v6    # "lastBlock":[B
    .restart local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "blockSize":I
    .restart local v9    # "dataSize":I
    .restart local v10    # "initVector":[B
    .restart local v11    # "xform":Ljava/lang/String;
    .restart local v12    # "maxAllowedBits":I
    .restart local v13    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v14    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "cipher":Ljavax/crypto/Cipher;
    .restart local v16    # "cipherName":Ljava/lang/String;
    .restart local v17    # "remLen":I
    .restart local v18    # "cipherMode":Ljava/lang/String;
    .restart local p1    # "bytes":[B
    .restart local p2    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local p3    # "numBits":I
    .restart local p4    # "keyValue":[B
    .restart local p5    # "encryptIt":Z
    :catchall_3
    move-exception v0

    move/from16 v19, v5

    .end local v5    # "updateSize":I
    .restart local v19    # "updateSize":I
    goto :goto_3

    .line 192
    .end local v17    # "remLen":I
    .end local v19    # "updateSize":I
    .restart local v1    # "buf":[B
    .restart local v3    # "remLen":I
    .restart local v5    # "updateSize":I
    :catchall_4
    move-exception v0

    move/from16 v17, v3

    move/from16 v19, v5

    move-object v3, v0

    .end local v3    # "remLen":I
    .end local v5    # "updateSize":I
    .restart local v17    # "remLen":I
    .restart local v19    # "updateSize":I
    const/4 v5, 0x0

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 193
    nop

    .end local v6    # "lastBlock":[B
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "blockSize":I
    .end local v9    # "dataSize":I
    .end local v10    # "initVector":[B
    .end local v11    # "xform":Ljava/lang/String;
    .end local v12    # "maxAllowedBits":I
    .end local v13    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v14    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v15    # "cipher":Ljavax/crypto/Cipher;
    .end local v16    # "cipherName":Ljava/lang/String;
    .end local v17    # "remLen":I
    .end local v18    # "cipherMode":Ljava/lang/String;
    .end local v19    # "updateSize":I
    .end local p1    # "bytes":[B
    .end local p2    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local p3    # "numBits":I
    .end local p4    # "keyValue":[B
    .end local p5    # "encryptIt":Z
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 202
    .end local v1    # "buf":[B
    .restart local v6    # "lastBlock":[B
    .restart local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "blockSize":I
    .restart local v9    # "dataSize":I
    .restart local v10    # "initVector":[B
    .restart local v11    # "xform":Ljava/lang/String;
    .restart local v12    # "maxAllowedBits":I
    .restart local v13    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v14    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "cipher":Ljavax/crypto/Cipher;
    .restart local v16    # "cipherName":Ljava/lang/String;
    .restart local v17    # "remLen":I
    .restart local v18    # "cipherMode":Ljava/lang/String;
    .restart local v19    # "updateSize":I
    .restart local p1    # "bytes":[B
    .restart local p2    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local p3    # "numBits":I
    .restart local p4    # "keyValue":[B
    .restart local p5    # "encryptIt":Z
    :catchall_5
    move-exception v0

    goto :goto_3

    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "updateSize":I
    .restart local v3    # "remLen":I
    .restart local v5    # "updateSize":I
    .local v17, "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_6
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v7, v17

    move/from16 v17, v3

    .end local v3    # "remLen":I
    .end local v5    # "updateSize":I
    .restart local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v17, "remLen":I
    .restart local v19    # "updateSize":I
    :goto_3
    :try_start_9
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 203
    nop

    .end local v6    # "lastBlock":[B
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "blockSize":I
    .end local v9    # "dataSize":I
    .end local v10    # "initVector":[B
    .end local v11    # "xform":Ljava/lang/String;
    .end local v12    # "maxAllowedBits":I
    .end local v13    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v14    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v15    # "cipher":Ljavax/crypto/Cipher;
    .end local v16    # "cipherName":Ljava/lang/String;
    .end local v17    # "remLen":I
    .end local v18    # "cipherMode":Ljava/lang/String;
    .end local v19    # "updateSize":I
    .end local p1    # "bytes":[B
    .end local p2    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .end local p3    # "numBits":I
    .end local p4    # "keyValue":[B
    .end local p5    # "encryptIt":Z
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 205
    .restart local v6    # "lastBlock":[B
    .restart local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "blockSize":I
    .restart local v9    # "dataSize":I
    .restart local v10    # "initVector":[B
    .restart local v11    # "xform":Ljava/lang/String;
    .restart local v12    # "maxAllowedBits":I
    .restart local v13    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v14    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "cipher":Ljavax/crypto/Cipher;
    .restart local v16    # "cipherName":Ljava/lang/String;
    .restart local v17    # "remLen":I
    .restart local v18    # "cipherMode":Ljava/lang/String;
    .restart local v19    # "updateSize":I
    .restart local p1    # "bytes":[B
    .restart local p2    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .restart local p3    # "numBits":I
    .restart local p4    # "keyValue":[B
    .restart local p5    # "encryptIt":Z
    :catchall_7
    move-exception v0

    goto :goto_4

    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "updateSize":I
    .restart local v3    # "remLen":I
    .restart local v5    # "updateSize":I
    .local v17, "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_8
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v7, v17

    move/from16 v17, v3

    .end local v3    # "remLen":I
    .end local v5    # "updateSize":I
    .restart local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v17, "remLen":I
    .restart local v19    # "updateSize":I
    goto :goto_4

    .end local v18    # "cipherMode":Ljava/lang/String;
    .end local v19    # "updateSize":I
    .restart local v3    # "remLen":I
    .restart local v5    # "updateSize":I
    .local v7, "cipherMode":Ljava/lang/String;
    .local v17, "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_9
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    move/from16 v17, v3

    .end local v3    # "remLen":I
    .end local v5    # "updateSize":I
    .local v7, "baos":Ljava/io/ByteArrayOutputStream;
    .local v17, "remLen":I
    .restart local v18    # "cipherMode":Ljava/lang/String;
    .restart local v19    # "updateSize":I
    :goto_4
    const/4 v1, 0x0

    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 206
    throw v0

    .line 157
    .end local v8    # "blockSize":I
    .end local v9    # "dataSize":I
    .end local v13    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v14    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v15    # "cipher":Ljavax/crypto/Cipher;
    .end local v16    # "cipherName":Ljava/lang/String;
    .end local v17    # "remLen":I
    .end local v18    # "cipherMode":Ljava/lang/String;
    .end local v19    # "updateSize":I
    .local v6, "cipherName":Ljava/lang/String;
    .local v7, "cipherMode":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyPrivateKeyCipher("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")[encrypt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] required key length ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") exceeds max. available: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected deriveEncryptionKey(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;I)[B
    .locals 11
    .param p1, "encContext"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .param p2, "outputKeyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 102
    const-string v0, "No encryption context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No cipher name"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No cipher type"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No cipher mode"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getInitVector()[B

    move-result-object v0

    const-string v1, "No encryption init vector"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 108
    .local v0, "initVector":[B
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "Empty encryption init vector"

    invoke-static {v1, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string v3, "No encryption password"

    invoke-static {v1, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "password":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 112
    .local v3, "passBytes":[B
    sget-object v4, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    .line 114
    .local v4, "prevHash":[B
    :try_start_0
    new-array v5, p2, [B

    .line 115
    .local v5, "keyValue":[B
    const-string v6, "md5"

    invoke-static {v6}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 116
    .local v6, "hash":Ljava/security/MessageDigest;
    const/4 v7, 0x0

    .local v7, "index":I
    array-length v8, v5

    .local v8, "remLen":I
    :goto_1
    array-length v9, v5

    if-ge v7, v9, :cond_1

    .line 117
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 119
    array-length v9, v4

    invoke-virtual {v6, v4, v2, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 120
    array-length v9, v3

    invoke-virtual {v6, v3, v2, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 121
    array-length v9, v0

    const/16 v10, 0x8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v6, v0, v2, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 123
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    move-object v4, v9

    .line 125
    array-length v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v2, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v9, v4

    add-int/2addr v7, v9

    .line 127
    array-length v9, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v8, v9

    goto :goto_1

    .line 130
    .end local v7    # "index":I
    .end local v8    # "remLen":I
    :cond_1
    nop

    .line 132
    const/4 v1, 0x0

    .line 133
    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 134
    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 130
    return-object v5

    .line 132
    .end local v5    # "keyValue":[B
    .end local v6    # "hash":Ljava/security/MessageDigest;
    :catchall_0
    move-exception v5

    const/4 v1, 0x0

    .line 133
    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 134
    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 135
    throw v5
.end method

.method protected generateInitializationVector(I)[B
    .locals 3
    .param p1, "keyLength"    # I

    .line 84
    div-int/lit8 v0, p1, 0x8

    .line 85
    .local v0, "keySize":I
    rem-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_0

    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 89
    :cond_0
    new-array v1, v0, [B

    .line 90
    .local v1, "initVector":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 91
    .local v2, "randomizer":Ljava/util/Random;
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 92
    return-object v1
.end method

.method public generateInitializationVector(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)[B
    .locals 1
    .param p1, "encContext"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;->resolveKeyLength(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;->generateInitializationVector(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final getCipherName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;->algName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract resolveKeyLength(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
