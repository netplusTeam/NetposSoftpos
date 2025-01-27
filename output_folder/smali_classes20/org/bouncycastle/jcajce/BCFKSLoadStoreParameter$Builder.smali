.class public Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
.super Ljava/lang/Object;
.source "BCFKSLoadStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private certs:[Ljava/security/cert/X509Certificate;

.field private encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

.field private final in:Ljava/io/InputStream;

.field private macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

.field private final out:Ljava/io/OutputStream;

.field private final protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field private final sigKey:Ljava/security/Key;

.field private storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

.field private validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    .line 260
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    .line 261
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 262
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 263
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 264
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 365
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    .line 366
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    .line 367
    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 368
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/PublicKey;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    .line 103
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    .line 104
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 105
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 106
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 107
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 167
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    .line 168
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    .line 169
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 170
    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    .line 173
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    .line 174
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 175
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 176
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 177
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 252
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    .line 253
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    .line 254
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 255
    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    .line 256
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[C)V
    .locals 1

    .line 257
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;-><init>(Ljava/io/InputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    .line 5
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    .line 6
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 7
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 8
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 9
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 41
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    .line 43
    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 44
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/PrivateKey;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    .line 47
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    .line 48
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 49
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 50
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 51
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 97
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    .line 98
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    .line 99
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 100
    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1

    .line 2
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic access$300(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object p0
.end method

.method static synthetic access$400(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/crypto/util/PBKDFConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    return-object p0
.end method

.method static synthetic access$500(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    return-object p0
.end method

.method static synthetic access$600(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    return-object p0
.end method

.method static synthetic access$700(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    return-object p0
.end method

.method static synthetic access$800(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/security/Key;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    return-object p0
.end method

.method static synthetic access$900(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;-><init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$1;)V

    return-object v0
.end method

.method public withCertificates([Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .locals 3

    .line 1
    array-length v0, p1

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    .line 2
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iput-object v1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public withStoreEncryptionAlgorithm(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    return-object p0
.end method

.method public withStoreMacAlgorithm(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    return-object p0
.end method

.method public withStorePBKDFConfig(Lorg/bouncycastle/crypto/util/PBKDFConfig;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    return-object p0
.end method

.method public withStoreSignatureAlgorithm(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    return-object p0
.end method
