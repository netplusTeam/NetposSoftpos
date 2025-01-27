.class public Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;
.super Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;
.source "ECDSAPEMResourceKeyPairParser.java"


# static fields
.field public static final BEGINNERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BEGIN_MARKER:Ljava/lang/String; = "BEGIN EC PRIVATE KEY"

.field public static final ECDSA_OID:Ljava/lang/String; = "1.2.840.10045.2.1"

.field public static final ENDERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final END_MARKER:Ljava/lang/String; = "END EC PRIVATE KEY"

.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    nop

    .line 58
    const-string v0, "BEGIN EC PRIVATE KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;->BEGINNERS:Ljava/util/List;

    .line 61
    nop

    .line 62
    const-string v0, "END EC PRIVATE KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;->ENDERS:Ljava/util/List;

    .line 69
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 72
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;->BEGINNERS:Ljava/util/List;

    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;->ENDERS:Ljava/util/List;

    const-string v2, "EC"

    const-string v3, "1.2.840.10045.2.1"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/sshd/common/config/keys/loader/pem/AbstractPEMResourceKeyPairParser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 73
    return-void
.end method

.method public static final decodeECPrivateKeySpec(Lorg/apache/sshd/common/util/io/der/DERParser;)Ljava/security/spec/ECPrivateKeySpec;
    .locals 10
    .param p0, "parser"    # Lorg/apache/sshd/common/util/io/der/DERParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v0

    .line 144
    .local v0, "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    if-eqz v0, :cond_8

    .line 149
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 150
    .local v1, "version":Ljava/math/BigInteger;
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 154
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v2

    .line 155
    .local v2, "keyObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    if-eqz v2, :cond_6

    .line 159
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v3

    .line 160
    .local v3, "objType":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    sget-object v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;->OCTET_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    invoke-virtual {v4, v3}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 164
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v4

    .line 165
    .local v4, "paramsObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    if-eqz v4, :cond_4

    .line 172
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->createParser()Lorg/apache/sshd/common/util/io/der/DERParser;

    move-result-object v5

    .line 173
    .local v5, "paramsParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_0
    invoke-virtual {v5}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v6

    .line 174
    .local v6, "namedCurve":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    if-eqz v6, :cond_2

    .line 178
    invoke-virtual {v6}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asOID()Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v7

    .line 179
    .local v6, "curveOID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 181
    .end local v5    # "paramsParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :cond_0
    invoke-static {v6}, Lorg/apache/sshd/common/cipher/ECCurves;->fromOIDValue(Ljava/util/List;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v5

    .line 182
    .local v5, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v5, :cond_1

    .line 186
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getPureValueBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/sshd/common/cipher/ECCurves;->octetStringToInteger([B)Ljava/math/BigInteger;

    move-result-object v7

    .line 187
    .local v7, "s":Ljava/math/BigInteger;
    new-instance v8, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {v5}, Lorg/apache/sshd/common/cipher/ECCurves;->getParameters()Ljava/security/spec/ECParameterSpec;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v8

    .line 183
    .end local v7    # "s":Ljava/math/BigInteger;
    :cond_1
    new-instance v7, Ljava/io/StreamCorruptedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown curve OID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 175
    .local v5, "paramsParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .local v6, "namedCurve":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :cond_2
    :try_start_1
    new-instance v7, Ljava/io/StreamCorruptedException;

    const-string v8, "Missing named curve parameter"

    invoke-direct {v7, v8}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v1    # "version":Ljava/math/BigInteger;
    .end local v2    # "keyObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v3    # "objType":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .end local v4    # "paramsObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v5    # "paramsParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v6    # "namedCurve":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v0    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v1    # "version":Ljava/math/BigInteger;
    .restart local v2    # "keyObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v3    # "objType":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .restart local v4    # "paramsObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v5    # "paramsParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :catchall_0
    move-exception v6

    .end local v0    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v1    # "version":Ljava/math/BigInteger;
    .end local v2    # "keyObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v3    # "objType":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .end local v4    # "paramsObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v5    # "paramsParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    .restart local v0    # "versionObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v1    # "version":Ljava/math/BigInteger;
    .restart local v2    # "keyObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v3    # "objType":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .restart local v4    # "paramsObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v5    # "paramsParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :catchall_1
    move-exception v7

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v5}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v8

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v7

    .line 166
    .end local v5    # "paramsParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :cond_4
    new-instance v5, Ljava/io/StreamCorruptedException;

    const-string v6, "No parameters value"

    invoke-direct {v5, v6}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 161
    .end local v4    # "paramsObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :cond_5
    new-instance v4, Ljava/io/StreamCorruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-matching private key object type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    .end local v3    # "objType":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    :cond_6
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "No private key value"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    .end local v2    # "keyObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    :cond_7
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad version value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    .end local v1    # "version":Ljava/math/BigInteger;
    :cond_8
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "No version"

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decodeECPrivateKeySpec(Ljava/io/InputStream;Z)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/security/spec/ECPublicKeySpec;",
            "Ljava/security/spec/ECPrivateKeySpec;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Lorg/apache/sshd/common/util/io/der/DERParser;

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/NoCloseInputStream;->resolveInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/util/io/der/DERParser;-><init>(Ljava/io/InputStream;)V

    .line 120
    .local v0, "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 121
    .local v1, "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 123
    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    sget-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Type;->SEQUENCE:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->createParser()Lorg/apache/sshd/common/util/io/der/DERParser;

    move-result-object v0

    .line 129
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_1
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;->decodeECPrivateKeySpec(Lorg/apache/sshd/common/util/io/der/DERParser;)Ljava/security/spec/ECPrivateKeySpec;

    move-result-object v2

    .line 130
    .local v2, "prvSpec":Ljava/security/spec/ECPrivateKeySpec;
    invoke-virtual {v2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveParameters(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v3

    .line 131
    .local v3, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v3, :cond_1

    .line 135
    invoke-static {v3, v0}, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;->decodeECPublicKeyValue(Lorg/apache/sshd/common/cipher/ECCurves;Lorg/apache/sshd/common/util/io/der/DERParser;)Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 136
    .local v4, "w":Ljava/security/spec/ECPoint;
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 137
    .local v5, "pubSpec":Ljava/security/spec/ECPublicKeySpec;
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v5, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 137
    :cond_0
    return-object v6

    .line 132
    .end local v4    # "w":Ljava/security/spec/ECPoint;
    .end local v5    # "pubSpec":Ljava/security/spec/ECPublicKeySpec;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/StreamCorruptedException;

    const-string v5, "Unknown curve"

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local v1    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "okToClose":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v2    # "prvSpec":Ljava/security/spec/ECPrivateKeySpec;
    .end local v3    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local v1    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "okToClose":Z
    :catchall_0
    move-exception v2

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local v1    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "okToClose":Z
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local v1    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "okToClose":Z
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3

    .line 124
    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DER: not a sequence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    .end local v1    # "sequence":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :catchall_3
    move-exception v1

    .end local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "okToClose":Z
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 121
    .restart local v0    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "okToClose":Z
    :catchall_4
    move-exception v2

    :try_start_6
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method public static final decodeECPublicKeyValue(Lorg/apache/sshd/common/cipher/ECCurves;Lorg/apache/sshd/common/util/io/der/DERParser;)Ljava/security/spec/ECPoint;
    .locals 7
    .param p0, "curve"    # Lorg/apache/sshd/common/cipher/ECCurves;
    .param p1, "parser"    # Lorg/apache/sshd/common/util/io/der/DERParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v0

    .line 204
    .local v0, "dataObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    if-eqz v0, :cond_4

    .line 208
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->createParser()Lorg/apache/sshd/common/util/io/der/DERParser;

    move-result-object v1

    .line 209
    .local v1, "dataParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->readObject()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v2

    .line 210
    .local v2, "pointData":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    if-eqz v2, :cond_2

    .line 214
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v3

    .line 215
    .local v3, "objType":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    sget-object v4, Lorg/apache/sshd/common/util/io/der/ASN1Type;->BIT_STRING:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    invoke-virtual {v4, v3}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v4

    .line 221
    .local v4, "octets":[B
    invoke-static {v4}, Lorg/apache/sshd/common/cipher/ECCurves;->octetStringToEcPoint([B)Ljava/security/spec/ECPoint;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V

    .line 221
    :cond_0
    return-object v5

    .line 216
    .end local v4    # "octets":[B
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/StreamCorruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-matching public key object type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dataObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v1    # "dataParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .end local p1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    throw v4

    .line 211
    .end local v3    # "objType":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .restart local v0    # "dataObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v1    # "dataParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .restart local p1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :cond_2
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "Missing public key data parameter"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dataObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v1    # "dataParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .end local p1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .end local v2    # "pointData":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v0    # "dataObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v1    # "dataParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .restart local p1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :catchall_0
    move-exception v2

    .end local v0    # "dataObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v1    # "dataParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .end local p0    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .end local p1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    .restart local v0    # "dataObject":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .restart local v1    # "dataParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    .restart local p0    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .restart local p1    # "parser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/io/der/DERParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3

    .line 205
    .end local v1    # "dataParser":Lorg/apache/sshd/common/util/io/der/DERParser;
    :cond_4
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "No public key data bytes"

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public extractKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/io/InputStream;Ljava/util/Map;)Ljava/util/Collection;
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "beginMarker"    # Ljava/lang/String;
    .param p4, "endMarker"    # Ljava/lang/String;
    .param p5, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .param p6, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    .local p7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p6, v0}, Lorg/apache/sshd/common/config/keys/loader/pem/ECDSAPEMResourceKeyPairParser;->decodeECPrivateKeySpec(Ljava/io/InputStream;Z)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 83
    .local v0, "spec":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/spec/ECPublicKeySpec;Ljava/security/spec/ECPrivateKeySpec;>;"
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "EC"

    invoke-static {v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 88
    .local v1, "kf":Ljava/security/KeyFactory;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/spec/KeySpec;

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 89
    .local v2, "pubKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/spec/KeySpec;

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    .line 90
    .local v3, "prvKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v4, Ljava/security/KeyPair;

    invoke-direct {v4, v2, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 91
    .local v4, "kp":Ljava/security/KeyPair;
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 84
    .end local v1    # "kf":Ljava/security/KeyFactory;
    .end local v2    # "pubKey":Ljava/security/interfaces/ECPublicKey;
    .end local v3    # "prvKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v4    # "kp":Ljava/security/KeyPair;
    :cond_0
    new-instance v1, Ljava/security/NoSuchProviderException;

    const-string v2, "ECC not supported"

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
