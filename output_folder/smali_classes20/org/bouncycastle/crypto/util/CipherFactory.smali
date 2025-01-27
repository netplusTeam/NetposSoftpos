.class public Lorg/bouncycastle/crypto/util/CipherFactory;
.super Ljava/lang/Object;
.source "CipherFactory.java"


# static fields
.field private static final rc2Ekb:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/util/CipherFactory;->rc2Ekb:[S

    return-void

    :array_0
    .array-data 2
        0x5ds
        0xbes
        0x9bs
        0x8bs
        0x11s
        0x99s
        0x6es
        0x4ds
        0x59s
        0xf3s
        0x85s
        0xa6s
        0x3fs
        0xb7s
        0x83s
        0xc5s
        0xe4s
        0x73s
        0x6bs
        0x3as
        0x68s
        0x5as
        0xc0s
        0x47s
        0xa0s
        0x64s
        0x34s
        0xcs
        0xf1s
        0xd0s
        0x52s
        0xa5s
        0xb9s
        0x1es
        0x96s
        0x43s
        0x41s
        0xd8s
        0xd4s
        0x2cs
        0xdbs
        0xf8s
        0x7s
        0x77s
        0x2as
        0xcas
        0xebs
        0xefs
        0x10s
        0x1cs
        0x16s
        0xds
        0x38s
        0x72s
        0x2fs
        0x89s
        0xc1s
        0xf9s
        0x80s
        0xc4s
        0x6ds
        0xaes
        0x30s
        0x3ds
        0xces
        0x20s
        0x63s
        0xfes
        0xe6s
        0x1as
        0xc7s
        0xb8s
        0x50s
        0xe8s
        0x24s
        0x17s
        0xfcs
        0x25s
        0x6fs
        0xbbs
        0x6as
        0xa3s
        0x44s
        0x53s
        0xd9s
        0xa2s
        0x1s
        0xabs
        0xbcs
        0xb6s
        0x1fs
        0x98s
        0xees
        0x9as
        0xa7s
        0x2ds
        0x4fs
        0x9es
        0x8es
        0xacs
        0xe0s
        0xc6s
        0x49s
        0x46s
        0x29s
        0xf4s
        0x94s
        0x8as
        0xafs
        0xe1s
        0x5bs
        0xc3s
        0xb3s
        0x7bs
        0x57s
        0xd1s
        0x7cs
        0x9cs
        0xeds
        0x87s
        0x40s
        0x8cs
        0xe2s
        0xcbs
        0x93s
        0x14s
        0xc9s
        0x61s
        0x2es
        0xe5s
        0xccs
        0xf6s
        0x5es
        0xa8s
        0x5cs
        0xd6s
        0x75s
        0x8ds
        0x62s
        0x95s
        0x58s
        0x69s
        0x76s
        0xa1s
        0x4as
        0xb5s
        0x55s
        0x9s
        0x78s
        0x33s
        0x82s
        0xd7s
        0xdds
        0x79s
        0xf5s
        0x1bs
        0xbs
        0xdes
        0x26s
        0x21s
        0x28s
        0x74s
        0x4s
        0x97s
        0x56s
        0xdfs
        0x3cs
        0xf0s
        0x37s
        0x39s
        0xdcs
        0xffs
        0x6s
        0xa4s
        0xeas
        0x42s
        0x8s
        0xdas
        0xb4s
        0x71s
        0xb0s
        0xcfs
        0x12s
        0x7as
        0x4es
        0xfas
        0x6cs
        0x1ds
        0x84s
        0x0s
        0xc8s
        0x7fs
        0x91s
        0x45s
        0xaas
        0x2bs
        0xc2s
        0xb1s
        0x8fs
        0xd5s
        0xbas
        0xf2s
        0xads
        0x19s
        0xb2s
        0x67s
        0x36s
        0xf7s
        0xfs
        0xas
        0x92s
        0x7ds
        0xe3s
        0x9ds
        0xe9s
        0x90s
        0x3es
        0x23s
        0x27s
        0x66s
        0x13s
        0xecs
        0x81s
        0x15s
        0xbds
        0x22s
        0xbfs
        0x9fs
        0x7es
        0xa9s
        0x51s
        0x4bs
        0x4cs
        0xfbs
        0x2s
        0xd3s
        0x70s
        0x86s
        0x31s
        0xe7s
        0x3bs
        0x5s
        0x3s
        0x54s
        0x60s
        0x48s
        0x65s
        0x18s
        0xd2s
        0xcds
        0x5fs
        0x32s
        0x88s
        0xes
        0x35s
        0xfds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 2
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 3
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-instance p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_1

    .line 11
    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_1

    .line 15
    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    new-instance p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_1

    .line 19
    :cond_3
    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cast5CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    new-instance p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lorg/bouncycastle/crypto/engines/CAST5Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/CAST5Engine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_1

    .line 25
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot recognise cipher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_5
    :goto_0
    new-instance p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 49
    :goto_1
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-object v0
.end method

.method public static createContentCipher(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rc4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance p2, Lorg/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    .line 7
    invoke-interface {p2, p0, p1}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object p2

    .line 13
    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/CipherFactory;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object v1

    .line 14
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-interface {p2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 16
    instance-of v2, p2, Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v2, :cond_5

    .line 18
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/bouncycastle/crypto/util/AlgorithmIdentifierFactory;->IDEA_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    sget-object v2, Lorg/bouncycastle/crypto/util/AlgorithmIdentifierFactory;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    invoke-static {p2}, Lorg/bouncycastle/asn1/misc/CAST5CBCParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/misc/CAST5CBCParameters;

    move-result-object p2

    .line 36
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/misc/CAST5CBCParameters;->getIV()[B

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, p0, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto/16 :goto_2

    .line 38
    :cond_2
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    invoke-static {p2}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    move-result-object p2

    .line 42
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/RC2Parameters;

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    sget-object v3, Lorg/bouncycastle/crypto/util/CipherFactory;->rc2Ekb:[S

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getRC2ParameterVersion()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aget-short v3, v3, v4

    invoke-direct {v2, p1, v3}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->getIV()[B

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, p0, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 46
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot match parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_4
    :goto_0
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 48
    invoke-static {p2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 49
    invoke-virtual {v1, p0, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 71
    :cond_5
    sget-object p2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lorg/bouncycastle/crypto/util/AlgorithmIdentifierFactory;->IDEA_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lorg/bouncycastle/crypto/util/AlgorithmIdentifierFactory;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    .line 79
    :cond_6
    invoke-virtual {v1, p0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    .line 80
    :cond_7
    :goto_1
    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, p0, p2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_2
    return-object v1
.end method

.method public static createOutputStream(Ljava/io/OutputStream;Ljava/lang/Object;)Lorg/bouncycastle/crypto/io/CipherOutputStream;
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/bouncycastle/crypto/io/CipherOutputStream;

    check-cast p1, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V

    return-object v0

    .line 5
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lorg/bouncycastle/crypto/io/CipherOutputStream;

    check-cast p1, Lorg/bouncycastle/crypto/StreamCipher;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/StreamCipher;)V

    return-object v0

    .line 9
    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lorg/bouncycastle/crypto/io/CipherOutputStream;

    check-cast p1, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V

    return-object v0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown cipher object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
