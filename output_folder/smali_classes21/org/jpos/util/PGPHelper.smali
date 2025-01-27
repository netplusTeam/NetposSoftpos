.class public Lorg/jpos/util/PGPHelper;
.super Ljava/lang/Object;
.source "PGPHelper.java"


# static fields
.field private static final PUBRING:Ljava/lang/String; = "META-INF/.pgp/pubring.asc"

.field private static final SIGNER:Ljava/lang/String; = "license@jpos.org"

.field private static fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    sput-object v0, Lorg/jpos/util/PGPHelper;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    .line 49
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 51
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLicense()I
    .locals 24

    .line 148
    const-string v0, "HmacSHA256"

    const/high16 v1, 0x90000

    .line 149
    .local v1, "rc":I
    const/4 v2, 0x0

    .line 152
    .local v2, "newl":Z
    :try_start_0
    invoke-static {}, Lorg/jpos/util/PGPHelper;->getLicenseeStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    const-class v4, Lorg/jpos/q2/Q2;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "META-INF/.pgp/pubring.asc"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 154
    .local v4, "ks":Ljava/io/InputStream;
    const-string v5, "license@jpos.org"

    invoke-static {v4, v5}, Lorg/jpos/util/PGPHelper;->readPublicKey(Ljava/io/InputStream;Ljava/lang/String;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v5

    .line 155
    .local v5, "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    new-instance v6, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 156
    .local v6, "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v8

    .line 158
    .local v8, "mac":Ljavax/crypto/Mac;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 160
    :goto_0
    invoke-virtual {v6}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->read()I

    move-result v0

    move v9, v0

    .local v9, "ch":I
    const/16 v10, 0xa

    if-ltz v0, :cond_2

    invoke-virtual {v6}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->isClearText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v7, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    const/4 v0, 0x0

    move v2, v0

    .line 165
    :cond_0
    if-ne v9, v10, :cond_1

    .line 166
    const/4 v2, 0x1

    .line 167
    goto :goto_0

    .line 169
    :cond_1
    int-to-byte v0, v9

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Lorg/bouncycastle/openpgp/PGPObjectFactory;

    sget-object v11, Lorg/jpos/util/PGPHelper;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v0, v6, v11}, Lorg/bouncycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 172
    .local v0, "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v11

    .line 173
    .local v11, "o":Ljava/lang/Object;
    instance-of v12, v11, Lorg/bouncycastle/openpgp/PGPSignatureList;

    if-eqz v12, :cond_10

    .line 174
    move-object v12, v11

    check-cast v12, Lorg/bouncycastle/openpgp/PGPSignatureList;

    .line 175
    .local v12, "list":Lorg/bouncycastle/openpgp/PGPSignatureList;
    invoke-virtual {v12}, Lorg/bouncycastle/openpgp/PGPSignatureList;->size()I

    move-result v13

    if-lez v13, :cond_e

    .line 176
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v14

    .line 177
    .local v14, "sig":Lorg/bouncycastle/openpgp/PGPSignature;
    new-instance v15, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v15}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v13, "BC"

    invoke-virtual {v15, v13}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v13

    invoke-virtual {v14, v13, v5}, Lorg/bouncycastle/openpgp/PGPSignature;->init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 178
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->read()I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v9, v13

    if-ltz v13, :cond_5

    :try_start_3
    invoke-virtual {v6}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->isClearText()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 179
    if-eqz v2, :cond_3

    .line 180
    invoke-virtual {v7, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 181
    const/4 v2, 0x0

    .line 183
    :cond_3
    if-ne v9, v10, :cond_4

    .line 184
    const/4 v2, 0x1

    .line 185
    goto :goto_1

    .line 187
    :cond_4
    int-to-byte v13, v9

    invoke-virtual {v7, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_1

    .line 189
    :cond_5
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v14, v13}, Lorg/bouncycastle/openpgp/PGPSignature;->update([B)V

    .line 190
    invoke-virtual {v14}, Lorg/bouncycastle/openpgp/PGPSignature;->verify()Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v13, :cond_d

    .line 191
    const v13, 0x7ffff

    and-int/2addr v1, v13

    .line 192
    :try_start_5
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 193
    .local v13, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    move-object/from16 v17, v0

    .end local v0    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .local v17, "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v13, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v15, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v15

    .line 195
    .local v0, "reader":Ljava/io/BufferedReader;
    const-string v10, "\\s(valid through:)\\s(\\d\\d\\d\\d-\\d\\d-\\d\\d)?"

    const/4 v15, 0x2

    invoke-static {v10, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 196
    .local v10, "p1":Ljava/util/regex/Pattern;
    const-string v15, "\\s(instances:)\\s([\\d]{0,4})?"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v18, v1

    const/4 v1, 0x2

    .end local v1    # "rc":I
    .local v18, "rc":I
    :try_start_6
    invoke-static {v15, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v15

    move-object v1, v15

    .line 197
    .local v1, "p2":Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/jpos/q2/install/ModuleUtils;->getSystemHash()Ljava/lang/String;

    move-result-object v15

    .line 198
    .local v15, "h":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v19

    .local v20, "s":Ljava/lang/String;
    if-eqz v19, :cond_c

    .line 199
    move-object/from16 v19, v0

    move-object/from16 v0, v20

    .end local v20    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    .local v19, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    move-object/from16 v21, v20

    .line 200
    .local v21, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v20, :cond_7

    move/from16 v20, v2

    .end local v2    # "newl":Z
    .local v20, "newl":Z
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    move-object/from16 v22, v4

    const/4 v4, 0x2

    .end local v4    # "ks":Ljava/io/InputStream;
    .local v22, "ks":Ljava/io/InputStream;
    if-ne v2, v4, :cond_6

    .line 201
    move-object/from16 v2, v21

    .end local v21    # "matcher":Ljava/util/regex/Matcher;
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v4, v21

    .line 202
    .local v4, "lDate":Ljava/lang/String;
    move-object/from16 v21, v2

    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v21    # "matcher":Ljava/util/regex/Matcher;
    invoke-static {}, Lorg/jpos/q2/Q2;->getBuildTimestamp()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v6

    move-object/from16 v16, v7

    const/4 v6, 0x0

    const/16 v7, 0xa

    .end local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .local v16, "out":Ljava/io/ByteArrayOutputStream;
    .local v23, "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8

    .line 203
    const/high16 v2, 0x40000

    or-int v18, v18, v2

    goto :goto_3

    .line 200
    .end local v4    # "lDate":Ljava/lang/String;
    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .restart local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_6
    move-object/from16 v23, v6

    move-object/from16 v16, v7

    const/4 v6, 0x0

    const/16 v7, 0xa

    .end local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    goto :goto_3

    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "newl":Z
    .end local v22    # "ks":Ljava/io/InputStream;
    .end local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .local v2, "newl":Z
    .local v4, "ks":Ljava/io/InputStream;
    .restart local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_7
    move/from16 v20, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v16, v7

    const/4 v6, 0x0

    const/16 v7, 0xa

    .line 206
    .end local v2    # "newl":Z
    .end local v4    # "ks":Ljava/io/InputStream;
    .end local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "newl":Z
    .restart local v22    # "ks":Ljava/io/InputStream;
    .restart local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    :cond_8
    :goto_3
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 207
    .end local v21    # "matcher":Ljava/util/regex/Matcher;
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    .line 208
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    or-int v18, v18, v4

    goto :goto_4

    .line 207
    :cond_9
    const/4 v6, 0x2

    .line 210
    :cond_a
    :goto_4
    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_b

    .line 211
    const v4, 0xeffff

    and-int v4, v18, v4

    move/from16 v18, v4

    .line 213
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_b
    move-object/from16 v7, v16

    move-object/from16 v0, v19

    move/from16 v2, v20

    move-object/from16 v4, v22

    move-object/from16 v6, v23

    goto/16 :goto_2

    .line 152
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "p2":Ljava/util/regex/Pattern;
    .end local v5    # "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    .end local v8    # "mac":Ljavax/crypto/Mac;
    .end local v9    # "ch":I
    .end local v10    # "p1":Ljava/util/regex/Pattern;
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "list":Lorg/bouncycastle/openpgp/PGPSignatureList;
    .end local v13    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v14    # "sig":Lorg/bouncycastle/openpgp/PGPSignature;
    .end local v15    # "h":Ljava/lang/String;
    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .end local v22    # "ks":Ljava/io/InputStream;
    .end local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    :catchall_0
    move-exception v0

    move-object v4, v0

    move/from16 v1, v18

    move/from16 v2, v20

    goto/16 :goto_7

    .line 198
    .local v0, "reader":Ljava/io/BufferedReader;
    .restart local v1    # "p2":Ljava/util/regex/Pattern;
    .local v2, "newl":Z
    .restart local v4    # "ks":Ljava/io/InputStream;
    .restart local v5    # "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    .restart local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "mac":Ljavax/crypto/Mac;
    .restart local v9    # "ch":I
    .restart local v10    # "p1":Ljava/util/regex/Pattern;
    .restart local v11    # "o":Ljava/lang/Object;
    .restart local v12    # "list":Lorg/bouncycastle/openpgp/PGPSignatureList;
    .restart local v13    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v14    # "sig":Lorg/bouncycastle/openpgp/PGPSignature;
    .restart local v15    # "h":Ljava/lang/String;
    .restart local v17    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .local v20, "s":Ljava/lang/String;
    :cond_c
    move-object/from16 v19, v0

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v16, v7

    move-object/from16 v0, v20

    move/from16 v20, v2

    .end local v2    # "newl":Z
    .end local v4    # "ks":Ljava/io/InputStream;
    .end local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .local v0, "s":Ljava/lang/String;
    .restart local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    .local v20, "newl":Z
    .restart local v22    # "ks":Ljava/io/InputStream;
    .restart local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    move/from16 v1, v18

    goto :goto_5

    .line 152
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "p2":Ljava/util/regex/Pattern;
    .end local v5    # "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    .end local v8    # "mac":Ljavax/crypto/Mac;
    .end local v9    # "ch":I
    .end local v10    # "p1":Ljava/util/regex/Pattern;
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "list":Lorg/bouncycastle/openpgp/PGPSignatureList;
    .end local v13    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v14    # "sig":Lorg/bouncycastle/openpgp/PGPSignature;
    .end local v15    # "h":Ljava/lang/String;
    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .end local v20    # "newl":Z
    .end local v22    # "ks":Ljava/io/InputStream;
    .end local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .restart local v2    # "newl":Z
    :catchall_1
    move-exception v0

    move/from16 v20, v2

    move-object v4, v0

    move/from16 v1, v18

    .end local v2    # "newl":Z
    .restart local v20    # "newl":Z
    goto :goto_7

    .end local v18    # "rc":I
    .end local v20    # "newl":Z
    .local v1, "rc":I
    .restart local v2    # "newl":Z
    :catchall_2
    move-exception v0

    move/from16 v18, v1

    move/from16 v20, v2

    move-object v4, v0

    .end local v1    # "rc":I
    .end local v2    # "newl":Z
    .restart local v18    # "rc":I
    .restart local v20    # "newl":Z
    goto :goto_7

    .line 190
    .end local v18    # "rc":I
    .end local v20    # "newl":Z
    .local v0, "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .restart local v1    # "rc":I
    .restart local v2    # "newl":Z
    .restart local v4    # "ks":Ljava/io/InputStream;
    .restart local v5    # "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    .restart local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "mac":Ljavax/crypto/Mac;
    .restart local v9    # "ch":I
    .restart local v11    # "o":Ljava/lang/Object;
    .restart local v12    # "list":Lorg/bouncycastle/openpgp/PGPSignatureList;
    .restart local v14    # "sig":Lorg/bouncycastle/openpgp/PGPSignature;
    :cond_d
    move-object/from16 v17, v0

    move/from16 v20, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v16, v7

    .end local v0    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .end local v2    # "newl":Z
    .end local v4    # "ks":Ljava/io/InputStream;
    .end local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .restart local v20    # "newl":Z
    .restart local v22    # "ks":Ljava/io/InputStream;
    .restart local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    goto :goto_5

    .line 152
    .end local v5    # "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    .end local v8    # "mac":Ljavax/crypto/Mac;
    .end local v9    # "ch":I
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "list":Lorg/bouncycastle/openpgp/PGPSignatureList;
    .end local v14    # "sig":Lorg/bouncycastle/openpgp/PGPSignature;
    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .end local v20    # "newl":Z
    .end local v22    # "ks":Ljava/io/InputStream;
    .end local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .restart local v2    # "newl":Z
    :catchall_3
    move-exception v0

    move/from16 v20, v2

    move-object v4, v0

    .end local v2    # "newl":Z
    .restart local v20    # "newl":Z
    goto :goto_7

    .line 175
    .end local v20    # "newl":Z
    .restart local v0    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .restart local v2    # "newl":Z
    .restart local v4    # "ks":Ljava/io/InputStream;
    .restart local v5    # "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    .restart local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "mac":Ljavax/crypto/Mac;
    .restart local v9    # "ch":I
    .restart local v11    # "o":Ljava/lang/Object;
    .restart local v12    # "list":Lorg/bouncycastle/openpgp/PGPSignatureList;
    :cond_e
    move-object/from16 v17, v0

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v16, v7

    .line 216
    .end local v0    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .end local v4    # "ks":Ljava/io/InputStream;
    .end local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .restart local v22    # "ks":Ljava/io/InputStream;
    .restart local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    :goto_5
    :try_start_8
    sget-object v0, Lorg/jpos/q2/Q2;->PUBKEYHASH:[B

    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_f

    .line 217
    const/high16 v0, 0x20000

    or-int/2addr v1, v0

    .line 218
    :cond_f
    invoke-static {}, Lorg/jpos/q2/install/ModuleUtils;->getRKeys()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lorg/jpos/util/PGPHelper;->getLicenseeHash()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v0, :cond_11

    .line 219
    const/high16 v0, 0x80000

    or-int/2addr v0, v1

    move v1, v0

    .end local v1    # "rc":I
    .local v0, "rc":I
    goto :goto_6

    .line 173
    .end local v12    # "list":Lorg/bouncycastle/openpgp/PGPSignatureList;
    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .end local v22    # "ks":Ljava/io/InputStream;
    .end local v23    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .local v0, "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .restart local v1    # "rc":I
    .restart local v4    # "ks":Ljava/io/InputStream;
    .restart local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_10
    move-object/from16 v17, v0

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v16, v7

    .line 221
    .end local v0    # "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .end local v4    # "ks":Ljava/io/InputStream;
    .end local v5    # "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    .end local v6    # "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "mac":Ljavax/crypto/Mac;
    .end local v11    # "o":Ljava/lang/Object;
    :cond_11
    :goto_6
    if-eqz v3, :cond_12

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 223
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_12
    goto :goto_9

    .line 152
    .end local v9    # "ch":I
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_4
    move-exception v0

    move-object v4, v0

    .end local v1    # "rc":I
    .end local v2    # "newl":Z
    .end local v3    # "in":Ljava/io/InputStream;
    :goto_7
    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 221
    .restart local v1    # "rc":I
    .restart local v2    # "newl":Z
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_5
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_13

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v6, v0

    :try_start_c
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "rc":I
    .end local v2    # "newl":Z
    :cond_13
    :goto_8
    throw v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v1    # "rc":I
    .restart local v2    # "newl":Z
    :catch_0
    move-exception v0

    .line 224
    :goto_9
    return v1
.end method

.method public static checkSignature()Z
    .locals 5

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "ok":Z
    :try_start_0
    invoke-static {}, Lorg/jpos/util/PGPHelper;->getLicenseeStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    const-class v2, Lorg/jpos/q2/Q2;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "META-INF/.pgp/pubring.asc"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 139
    .local v2, "ks":Ljava/io/InputStream;
    const-string v3, "license@jpos.org"

    invoke-static {v2, v3}, Lorg/jpos/util/PGPHelper;->readPublicKey(Ljava/io/InputStream;Ljava/lang/String;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    .line 140
    .local v3, "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    invoke-static {v1, v3}, Lorg/jpos/util/PGPHelper;->verifySignature(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v4

    .line 141
    .end local v2    # "ks":Ljava/io/InputStream;
    .end local v3    # "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    goto :goto_1

    .line 137
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "ok":Z
    .end local v1    # "is":Ljava/io/InputStream;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    .restart local v0    # "ok":Z
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ok":Z
    :cond_1
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "ok":Z
    :catch_0
    move-exception v1

    .line 144
    :goto_1
    return v0
.end method

.method public static decrypt([BLjava/io/InputStream;[C)[B
    .locals 18
    .param p0, "encrypted"    # [B
    .param p1, "keyIn"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 362
    .local v0, "in":Ljava/io/InputStream;
    new-instance v2, Lorg/bouncycastle/openpgp/PGPObjectFactory;

    sget-object v3, Lorg/jpos/util/PGPHelper;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 364
    .local v2, "pgpF":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v3

    .line 369
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;

    if-eqz v4, :cond_0

    .line 370
    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;

    .local v4, "enc":Lorg/bouncycastle/openpgp/PGPEncryptedDataList;
    goto :goto_0

    .line 372
    .end local v4    # "enc":Lorg/bouncycastle/openpgp/PGPEncryptedDataList;
    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;

    .line 378
    .restart local v4    # "enc":Lorg/bouncycastle/openpgp/PGPEncryptedDataList;
    :goto_0
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->getEncryptedDataObjects()Ljava/util/Iterator;

    move-result-object v5

    .line 379
    .local v5, "it":Ljava/util/Iterator;
    const/4 v6, 0x0

    .line 380
    .local v6, "sKey":Lorg/bouncycastle/openpgp/PGPPrivateKey;
    const/4 v7, 0x0

    .line 381
    .local v7, "pbe":Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;
    new-instance v8, Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;

    .line 382
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v9

    sget-object v10, Lorg/jpos/util/PGPHelper;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 384
    .local v8, "pgpSec":Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;
    :goto_1
    if-nez v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 385
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    check-cast v7, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;

    .line 386
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->getKeyID()J

    move-result-wide v9

    move-object/from16 v11, p2

    invoke-static {v8, v9, v10, v11}, Lorg/jpos/util/PGPHelper;->findSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;J[C)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v6

    goto :goto_1

    .line 384
    :cond_1
    move-object/from16 v11, p2

    .line 389
    if-eqz v6, :cond_3

    .line 394
    new-instance v9, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;

    invoke-direct {v9, v6}, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;-><init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->getDataStream(Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;)Ljava/io/InputStream;

    move-result-object v9

    .line 395
    .local v9, "clear":Ljava/io/InputStream;
    new-instance v10, Lorg/bouncycastle/openpgp/PGPObjectFactory;

    sget-object v12, Lorg/jpos/util/PGPHelper;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v10, v9, v12}, Lorg/bouncycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 396
    .local v10, "pgpFact":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/openpgp/PGPCompressedData;

    .line 397
    .local v12, "cData":Lorg/bouncycastle/openpgp/PGPCompressedData;
    new-instance v13, Lorg/bouncycastle/openpgp/PGPObjectFactory;

    invoke-virtual {v12}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object v14

    sget-object v15, Lorg/jpos/util/PGPHelper;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    move-object v10, v13

    .line 398
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/openpgp/PGPLiteralData;

    .line 399
    .local v13, "ld":Lorg/bouncycastle/openpgp/PGPLiteralData;
    invoke-virtual {v13}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 400
    .local v14, "unc":Ljava/io/InputStream;
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 403
    .local v15, "out":Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v16

    move/from16 v17, v16

    .local v17, "ch":I
    if-ltz v16, :cond_2

    .line 404
    move-object/from16 v16, v0

    move/from16 v0, v17

    .end local v17    # "ch":I
    .local v0, "ch":I
    .local v16, "in":Ljava/io/InputStream;
    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, v16

    goto :goto_2

    .line 406
    .end local v16    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    .restart local v17    # "ch":I
    :cond_2
    move-object/from16 v16, v0

    move/from16 v0, v17

    .end local v17    # "ch":I
    .local v0, "ch":I
    .restart local v16    # "in":Ljava/io/InputStream;
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 407
    .local v17, "returnBytes":[B
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 408
    return-object v17

    .line 390
    .end local v9    # "clear":Ljava/io/InputStream;
    .end local v10    # "pgpFact":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    .end local v12    # "cData":Lorg/bouncycastle/openpgp/PGPCompressedData;
    .end local v13    # "ld":Lorg/bouncycastle/openpgp/PGPLiteralData;
    .end local v14    # "unc":Ljava/io/InputStream;
    .end local v15    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v17    # "returnBytes":[B
    .local v0, "in":Ljava/io/InputStream;
    :cond_3
    move-object/from16 v16, v0

    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v16    # "in":Ljava/io/InputStream;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v9, "secret key for message not found."

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decrypt([BLjava/lang/String;[C)[B
    .locals 1
    .param p0, "encrypted"    # [B
    .param p1, "keyIn"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lorg/jpos/util/PGPHelper;->decrypt([BLjava/io/InputStream;[C)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs encrypt([BLjava/io/InputStream;Ljava/lang/String;ZZ[Ljava/lang/String;)[B
    .locals 17
    .param p0, "clearData"    # [B
    .param p1, "keyRing"    # Ljava/io/InputStream;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "withIntegrityCheck"    # Z
    .param p4, "armor"    # Z
    .param p5, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 277
    move-object/from16 v0, p0

    if-nez p2, :cond_0

    .line 278
    const-string v1, "_CONSOLE"

    .end local p2    # "fileName":Ljava/lang/String;
    .local v1, "fileName":Ljava/lang/String;
    goto :goto_0

    .line 277
    .end local v1    # "fileName":Ljava/lang/String;
    .restart local p2    # "fileName":Ljava/lang/String;
    :cond_0
    move-object/from16 v1, p2

    .line 280
    .end local p2    # "fileName":Ljava/lang/String;
    .restart local v1    # "fileName":Ljava/lang/String;
    :goto_0
    move-object/from16 v9, p1

    move-object/from16 v10, p5

    invoke-static {v9, v10}, Lorg/jpos/util/PGPHelper;->readPublicKeys(Ljava/io/InputStream;[Ljava/lang/String;)[Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v11

    .line 281
    .local v11, "encKeys":[Lorg/bouncycastle/openpgp/PGPPublicKey;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v12, v2

    .line 282
    .local v12, "encOut":Ljava/io/ByteArrayOutputStream;
    nop

    .line 283
    .local v2, "out":Ljava/io/OutputStream;
    if-eqz p4, :cond_1

    .line 284
    new-instance v3, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v3, v2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    move-object v13, v2

    goto :goto_1

    .line 283
    :cond_1
    move-object v13, v2

    .line 286
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v13, "out":Ljava/io/OutputStream;
    :goto_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v14, v2

    .line 288
    .local v14, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;-><init>(I)V

    move-object v15, v2

    .line 290
    .local v15, "comData":Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;
    invoke-virtual {v15, v14}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->open(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v16

    .line 291
    .local v16, "cos":Ljava/io/OutputStream;
    new-instance v2, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;-><init>()V

    .line 292
    .local v2, "lData":Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;
    const/16 v4, 0x62

    array-length v3, v0

    int-to-long v6, v3

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    move-object/from16 v3, v16

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->open(Ljava/io/OutputStream;CLjava/lang/String;JLjava/util/Date;)Ljava/io/OutputStream;

    move-result-object v3

    .line 297
    .local v3, "pOut":Ljava/io/OutputStream;
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 299
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->close()V

    .line 300
    invoke-virtual {v15}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->close()V

    .line 301
    new-instance v4, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;-><init>(I)V

    .line 303
    .local v4, "dataEncryptor":Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;
    move/from16 v5, p3

    invoke-virtual {v4, v5}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->setWithIntegrityPacket(Z)Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;

    .line 304
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;

    .line 306
    new-instance v6, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;

    invoke-direct {v6, v4}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;)V

    .line 307
    .local v6, "cPk":Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;
    array-length v7, v11

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v0, v11, v8

    .line 308
    .local v0, "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    move-object/from16 p2, v1

    .end local v1    # "fileName":Ljava/lang/String;
    .restart local p2    # "fileName":Ljava/lang/String;
    new-instance v1, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;

    invoke-direct {v1, v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    invoke-virtual {v6, v1}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->addMethod(Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;)V

    .line 307
    .end local v0    # "pk":Lorg/bouncycastle/openpgp/PGPPublicKey;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto :goto_2

    .line 310
    .end local p2    # "fileName":Ljava/lang/String;
    .restart local v1    # "fileName":Ljava/lang/String;
    :cond_2
    move-object/from16 p2, v1

    .end local v1    # "fileName":Ljava/lang/String;
    .restart local p2    # "fileName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 311
    .local v0, "bytes":[B
    array-length v1, v0

    int-to-long v7, v1

    invoke-virtual {v6, v13, v7, v8}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->open(Ljava/io/OutputStream;J)Ljava/io/OutputStream;

    move-result-object v1

    .line 312
    .local v1, "cOut":Ljava/io/OutputStream;
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 313
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 314
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 315
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method public static varargs encrypt([BLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)[B
    .locals 6
    .param p0, "clearData"    # [B
    .param p1, "keyRing"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "withIntegrityCheck"    # Z
    .param p4, "armor"    # Z
    .param p5, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 345
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/jpos/util/PGPHelper;->encrypt([BLjava/io/InputStream;Ljava/lang/String;ZZ[Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static findSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;J[C)Lorg/bouncycastle/openpgp/PGPPrivateKey;
    .locals 3
    .param p0, "pgpSec"    # Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;
    .param p1, "keyID"    # J
    .param p3, "pass"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 475
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/openpgp/PGPSecretKeyRingCollection;->getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v0

    .line 477
    .local v0, "pgpSecKey":Lorg/bouncycastle/openpgp/PGPSecretKey;
    if-nez v0, :cond_0

    .line 478
    const/4 v1, 0x0

    return-object v1

    .line 480
    :cond_0
    new-instance v1, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;

    new-instance v2, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {v2}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    .line 482
    invoke-virtual {v1, p3}, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v1

    .line 484
    .local v1, "decryptor":Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v2

    return-object v2
.end method

.method public static getLicensee()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 234
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lorg/jpos/util/PGPHelper;->getLicenseeStream()Ljava/io/InputStream;

    move-result-object v1

    .line 235
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    .line 236
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 237
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/io/PrintStream;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 238
    .local v3, "p":Ljava/io/PrintStream;
    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 239
    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 240
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    .end local v3    # "p":Ljava/io/PrintStream;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_3

    .line 236
    :catchall_0
    move-exception v3

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "br":Ljava/io/BufferedReader;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_1
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 234
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_3
    move-exception v2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "is":Ljava/io/InputStream;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 244
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_4
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v3

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 245
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLicenseeHash()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 248
    invoke-static {}, Lorg/jpos/util/PGPHelper;->getLicensee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/PGPHelper;->hash(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLicenseeStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 228
    const-string v0, "LICENSEE"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "lf":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "LICENSEE.asc"

    if-eqz v0, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "l":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2000

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    const-class v3, Lorg/jpos/q2/Q2;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method private static hash(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 488
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 489
    .local v0, "md":Ljava/security/MessageDigest;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method private static readPublicKey(Ljava/io/InputStream;Ljava/lang/String;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 99
    invoke-static {p0}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;

    sget-object v1, Lorg/jpos/util/PGPHelper;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 103
    .local v0, "pubRings":Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings()Ljava/util/Iterator;

    move-result-object v1

    .line 104
    .local v1, "rIt":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    .line 107
    .local v2, "pgpPub":Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    :try_start_0
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 112
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v3

    .line 113
    .local v3, "kIt":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 114
    .local v4, "isId":Z
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/openpgp/PGPPublicKey;

    .line 117
    .local v5, "pgpKey":Lorg/bouncycastle/openpgp/PGPPublicKey;
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v6

    .line 118
    .local v6, "iter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 119
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 120
    .local v7, "uid":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 121
    const/4 v4, 0x1

    .line 122
    goto :goto_3

    .line 124
    .end local v7    # "uid":Ljava/lang/String;
    :cond_0
    goto :goto_2

    .line 125
    :cond_1
    :goto_3
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isEncryptionKey()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    const/16 v7, 0x14

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    .line 128
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v8

    .line 125
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 129
    return-object v5

    .line 131
    .end local v5    # "pgpKey":Lorg/bouncycastle/openpgp/PGPPublicKey;
    .end local v6    # "iter":Ljava/util/Iterator;
    :cond_2
    goto :goto_1

    .line 132
    .end local v2    # "pgpPub":Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    .end local v3    # "kIt":Ljava/util/Iterator;
    .end local v4    # "isId":Z
    :cond_3
    goto :goto_0

    .line 109
    .restart local v2    # "pgpPub":Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    :catch_0
    move-exception v3

    .line 110
    .local v3, "ignored":Ljava/lang/Exception;
    goto :goto_0

    .line 133
    .end local v2    # "pgpPub":Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    .end local v3    # "ignored":Ljava/lang/Exception;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t find encryption key in key ring."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x59t
        -0x57t
        0x23t
        0x24t
        -0x17t
        0x3bt
        0x28t
        -0x18t
        -0x5dt
        -0x7et
        -0x60t
        0x51t
        -0x1ct
        0x32t
        0x78t
        -0x12t
        -0xbt
        -0x63t
        -0x75t
        0x45t
    .end array-data
.end method

.method private static readPublicKeys(Ljava/io/InputStream;[Ljava/lang/String;)[Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 14
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 431
    invoke-static {p0}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/openpgp/PGPPublicKey;>;"
    new-instance v1, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;

    sget-object v2, Lorg/jpos/util/PGPHelper;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 435
    .local v1, "pubRings":Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings()Ljava/util/Iterator;

    move-result-object v2

    .line 436
    .local v2, "rIt":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 437
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    .line 439
    .local v3, "pgpPub":Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    :try_start_0
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    nop

    .line 445
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v4

    .line 446
    .local v4, "kIt":Ljava/util/Iterator;
    const/4 v5, 0x0

    .line 447
    .local v5, "isId":Z
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 448
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/openpgp/PGPPublicKey;

    .line 450
    .local v6, "pgpKey":Lorg/bouncycastle/openpgp/PGPPublicKey;
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v7

    .line 451
    .local v7, "iter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 452
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 454
    .local v8, "uid":Ljava/lang/String;
    array-length v9, p1

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_1

    aget-object v11, p1, v10

    .line 455
    .local v11, "id":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_0

    .line 456
    const/4 v5, 0x1

    .line 454
    .end local v11    # "id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 459
    .end local v8    # "uid":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 460
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isEncryptionKey()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 461
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    const/4 v5, 0x0

    .line 464
    .end local v6    # "pgpKey":Lorg/bouncycastle/openpgp/PGPPublicKey;
    .end local v7    # "iter":Ljava/util/Iterator;
    :cond_3
    goto :goto_1

    .line 465
    .end local v3    # "pgpPub":Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    .end local v4    # "kIt":Ljava/util/Iterator;
    .end local v5    # "isId":Z
    :cond_4
    goto :goto_0

    .line 441
    .restart local v3    # "pgpPub":Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    :catch_0
    move-exception v4

    .line 442
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    goto :goto_0

    .line 466
    .end local v3    # "pgpPub":Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 469
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/bouncycastle/openpgp/PGPPublicKey;

    return-object v3

    .line 467
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t find encryption key in key ring."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static verifySignature(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/PGPPublicKey;)Z
    .locals 12
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "pk"    # Lorg/bouncycastle/openpgp/PGPPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "verify":Z
    const/4 v1, 0x0

    .line 57
    .local v1, "newl":Z
    new-instance v2, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 58
    .local v2, "ain":Lorg/bouncycastle/bcpg/ArmoredInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->read()I

    move-result v4

    move v5, v4

    .local v5, "ch":I
    const/16 v6, 0xa

    if-ltz v4, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->isClearText()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 63
    const/4 v1, 0x0

    .line 65
    :cond_0
    if-ne v5, v6, :cond_1

    .line 66
    const/4 v1, 0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    int-to-byte v4, v5

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 71
    :cond_2
    new-instance v4, Lorg/bouncycastle/openpgp/PGPObjectFactory;

    sget-object v7, Lorg/jpos/util/PGPHelper;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v4, v2, v7}, Lorg/bouncycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 72
    .local v4, "pgpf":Lorg/bouncycastle/openpgp/PGPObjectFactory;
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v7

    .line 73
    .local v7, "o":Ljava/lang/Object;
    instance-of v8, v7, Lorg/bouncycastle/openpgp/PGPSignatureList;

    if-eqz v8, :cond_6

    .line 74
    move-object v8, v7

    check-cast v8, Lorg/bouncycastle/openpgp/PGPSignatureList;

    .line 75
    .local v8, "list":Lorg/bouncycastle/openpgp/PGPSignatureList;
    invoke-virtual {v8}, Lorg/bouncycastle/openpgp/PGPSignatureList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 76
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v9

    .line 77
    .local v9, "sig":Lorg/bouncycastle/openpgp/PGPSignature;
    new-instance v10, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v10}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v11, "BC"

    invoke-virtual {v10, v11}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 78
    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->read()I

    move-result v10

    move v5, v10

    if-ltz v10, :cond_5

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->isClearText()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 79
    if-eqz v1, :cond_3

    .line 80
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    const/4 v1, 0x0

    .line 83
    :cond_3
    if-ne v5, v6, :cond_4

    .line 84
    const/4 v1, 0x1

    .line 85
    goto :goto_1

    .line 87
    :cond_4
    int-to-byte v10, v5

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 89
    :cond_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v9, v6}, Lorg/bouncycastle/openpgp/PGPSignature;->update([B)V

    .line 90
    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPSignature;->verify()Z

    move-result v0

    .line 93
    .end local v8    # "list":Lorg/bouncycastle/openpgp/PGPSignatureList;
    .end local v9    # "sig":Lorg/bouncycastle/openpgp/PGPSignature;
    :cond_6
    return v0
.end method
