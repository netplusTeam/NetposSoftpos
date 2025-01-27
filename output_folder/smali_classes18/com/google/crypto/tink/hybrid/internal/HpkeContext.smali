.class final Lcom/google/crypto/tink/hybrid/internal/HpkeContext;
.super Ljava/lang/Object;
.source "HpkeContext.java"


# static fields
.field private static final EMPTY_IKM:[B


# instance fields
.field private final aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

.field private final baseNonce:[B

.field private final encapsulatedKey:[B

.field private final key:[B

.field private final maxSequenceNumber:Ljava/math/BigInteger;

.field private sequenceNumber:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->EMPTY_IKM:[B

    return-void
.end method

.method private constructor <init>([B[B[BLjava/math/BigInteger;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;)V
    .locals 1
    .param p1, "encapsulatedKey"    # [B
    .param p2, "key"    # [B
    .param p3, "baseNonce"    # [B
    .param p4, "maxSequenceNumber"    # Ljava/math/BigInteger;
    .param p5, "aead"    # Lcom/google/crypto/tink/hybrid/internal/HpkeAead;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encapsulatedKey",
            "key",
            "baseNonce",
            "maxSequenceNumber",
            "aead"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->encapsulatedKey:[B

    .line 52
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->key:[B

    .line 53
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->baseNonce:[B

    .line 54
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->sequenceNumber:Ljava/math/BigInteger;

    .line 55
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->maxSequenceNumber:Ljava/math/BigInteger;

    .line 56
    iput-object p5, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    .line 57
    return-void
.end method

.method private computeNonce()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->baseNonce:[B

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->sequenceNumber:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    .line 142
    invoke-interface {v2}, Lcom/google/crypto/tink/hybrid/internal/HpkeAead;->getNonceLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->toBigEndianBytesOfFixedLength(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Bytes;->xor([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized computeNonceAndIncrementSequenceNumber()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->computeNonce()[B

    move-result-object v0

    .line 149
    .local v0, "nonce":[B
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->incrementSequenceNumber()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-object v0

    .line 147
    .end local v0    # "nonce":[B
    .end local p0    # "this":Lcom/google/crypto/tink/hybrid/internal/HpkeContext;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static createContext([B[BLcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)Lcom/google/crypto/tink/hybrid/internal/HpkeContext;
    .locals 21
    .param p0, "encapsulatedKey"    # [B
    .param p1, "sharedSecret"    # [B
    .param p2, "kem"    # Lcom/google/crypto/tink/hybrid/internal/HpkeKem;
    .param p3, "kdf"    # Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;
    .param p4, "aead"    # Lcom/google/crypto/tink/hybrid/internal/HpkeAead;
    .param p5, "info"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encapsulatedKey",
            "sharedSecret",
            "kem",
            "kdf",
            "aead",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    move-object/from16 v6, p3

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeKem;->getKemId()[B

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;->getKdfId()[B

    move-result-object v1

    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/hybrid/internal/HpkeAead;->getAeadId()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->hpkeSuiteId([B[B[B)[B

    move-result-object v7

    .line 69
    .local v7, "suiteId":[B
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->EMPTY_SALT:[B

    sget-object v1, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->EMPTY_IKM:[B

    const-string/jumbo v2, "psk_id_hash"

    invoke-interface {v6, v0, v1, v2, v7}, Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;->labeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v8

    .line 70
    .local v8, "pskIdHash":[B
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->EMPTY_SALT:[B

    const-string v2, "info_hash"

    move-object/from16 v9, p5

    invoke-interface {v6, v0, v9, v2, v7}, Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;->labeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v10

    .line 71
    .local v10, "infoHash":[B
    const/4 v0, 0x3

    new-array v0, v0, [[B

    sget-object v2, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->BASE_MODE:[B

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v8, v0, v2

    const/4 v2, 0x2

    aput-object v10, v0, v2

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v11

    .line 72
    .local v11, "keyScheduleContext":[B
    const-string/jumbo v0, "secret"

    move-object/from16 v12, p1

    invoke-interface {v6, v12, v1, v0, v7}, Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;->labeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v13

    .line 74
    .local v13, "secret":[B
    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/hybrid/internal/HpkeAead;->getKeyLength()I

    move-result v5

    const-string v3, "key"

    move-object/from16 v0, p3

    move-object v1, v13

    move-object v2, v11

    move-object v4, v7

    invoke-interface/range {v0 .. v5}, Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;->labeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v20

    .line 75
    .local v20, "key":[B
    nop

    .line 76
    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/hybrid/internal/HpkeAead;->getNonceLength()I

    move-result v5

    const-string v3, "base_nonce"

    invoke-interface/range {v0 .. v5}, Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;->labeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v0

    .line 77
    .local v0, "baseNonce":[B
    invoke-interface/range {p4 .. p4}, Lcom/google/crypto/tink/hybrid/internal/HpkeAead;->getNonceLength()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->maxSequenceNumber(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 79
    .local v1, "maxSeqNo":Ljava/math/BigInteger;
    new-instance v2, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;

    move-object v14, v2

    move-object/from16 v15, p0

    move-object/from16 v16, v20

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, p4

    invoke-direct/range {v14 .. v19}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;-><init>([B[B[BLjava/math/BigInteger;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;)V

    return-object v2
.end method

.method static createRecipientContext([BLcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)Lcom/google/crypto/tink/hybrid/internal/HpkeContext;
    .locals 7
    .param p0, "encapsulatedKey"    # [B
    .param p1, "recipientPrivateKey"    # Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;
    .param p2, "kem"    # Lcom/google/crypto/tink/hybrid/internal/HpkeKem;
    .param p3, "kdf"    # Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;
    .param p4, "aead"    # Lcom/google/crypto/tink/hybrid/internal/HpkeAead;
    .param p5, "info"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encapsulatedKey",
            "recipientPrivateKey",
            "kem",
            "kdf",
            "aead",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 121
    invoke-interface {p2, p0, p1}, Lcom/google/crypto/tink/hybrid/internal/HpkeKem;->decapsulate([BLcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;)[B

    move-result-object v6

    .line 122
    .local v6, "sharedSecret":[B
    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->createContext([B[BLcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)Lcom/google/crypto/tink/hybrid/internal/HpkeContext;

    move-result-object v0

    return-object v0
.end method

.method static createSenderContext(Lcom/google/crypto/tink/proto/HpkePublicKey;Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)Lcom/google/crypto/tink/hybrid/internal/HpkeContext;
    .locals 9
    .param p0, "recipientPublicKey"    # Lcom/google/crypto/tink/proto/HpkePublicKey;
    .param p1, "kem"    # Lcom/google/crypto/tink/hybrid/internal/HpkeKem;
    .param p2, "kdf"    # Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;
    .param p3, "aead"    # Lcom/google/crypto/tink/hybrid/internal/HpkeAead;
    .param p4, "info"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "recipientPublicKey",
            "kem",
            "kdf",
            "aead",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 95
    nop

    .line 96
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkePublicKey;->getPublicKey()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeKem;->encapsulate([B)Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;

    move-result-object v0

    .line 97
    .local v0, "encapOutput":Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;->getEncapsulatedKey()[B

    move-result-object v7

    .line 98
    .local v7, "encapsulatedKey":[B
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;->getSharedSecret()[B

    move-result-object v8

    .line 99
    .local v8, "sharedSecret":[B
    move-object v1, v7

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->createContext([B[BLcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)Lcom/google/crypto/tink/hybrid/internal/HpkeContext;

    move-result-object v1

    return-object v1
.end method

.method private incrementSequenceNumber()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->sequenceNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->maxSequenceNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->sequenceNumber:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->sequenceNumber:Ljava/math/BigInteger;

    .line 135
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "message limit reached"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static maxSequenceNumber(I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "nonceLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonceLength"
        }
    .end annotation

    .line 126
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    mul-int/lit8 v1, p0, 0x8

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getBaseNonce()[B
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->baseNonce:[B

    return-object v0
.end method

.method getEncapsulatedKey()[B
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->encapsulatedKey:[B

    return-object v0
.end method

.method getKey()[B
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->key:[B

    return-object v0
.end method

.method open([B[B)[B
    .locals 3
    .param p1, "ciphertext"    # [B
    .param p2, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->computeNonceAndIncrementSequenceNumber()[B

    move-result-object v0

    .line 184
    .local v0, "nonce":[B
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->key:[B

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeAead;->open([B[B[B[B)[B

    move-result-object v1

    return-object v1
.end method

.method seal([B[B)[B
    .locals 3
    .param p1, "plaintext"    # [B
    .param p2, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->computeNonceAndIncrementSequenceNumber()[B

    move-result-object v0

    .line 173
    .local v0, "nonce":[B
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->key:[B

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeAead;->seal([B[B[B[B)[B

    move-result-object v1

    return-object v1
.end method
