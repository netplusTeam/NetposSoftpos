.class public Lorg/jpos/security/jceadapter/JCEHandler;
.super Ljava/lang/Object;
.source "JCEHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;
    }
.end annotation


# static fields
.field static final ALG_DES:Ljava/lang/String; = "DES"

.field static final ALG_TRIPLE_DES:Ljava/lang/String; = "DESede"

.field static final DES_MODE_CBC:Ljava/lang/String; = "CBC"

.field static final DES_MODE_ECB:Ljava/lang/String; = "ECB"

.field static final DES_NO_PADDING:Ljava/lang/String; = "NoPadding"

.field static final macEngines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jpos/security/jceadapter/JCEHandler;->macEngines:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "jceProviderClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/jceadapter/JCEHandler;->provider:Ljava/security/Provider;

    .line 76
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    iput-object v0, p0, Lorg/jpos/security/jceadapter/JCEHandler;->provider:Ljava/security/Provider;

    .line 77
    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/security/jceadapter/JCEHandlerException;

    invoke-direct {v1, v0}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>(Ljava/security/Provider;)V
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/jceadapter/JCEHandler;->provider:Ljava/security/Provider;

    .line 89
    iput-object p1, p0, Lorg/jpos/security/jceadapter/JCEHandler;->provider:Ljava/security/Provider;

    .line 90
    return-void
.end method


# virtual methods
.method assignMACEngine(Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;)Ljavax/crypto/Mac;
    .locals 4
    .param p1, "engine"    # Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 358
    sget-object v0, Lorg/jpos/security/jceadapter/JCEHandler;->macEngines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    return-object v0

    .line 362
    :cond_0
    const/4 v1, 0x0

    .line 364
    .local v1, "mac":Ljavax/crypto/Mac;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/security/jceadapter/JCEHandler;->provider:Ljava/security/Provider;

    invoke-static {v2, v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v2

    move-object v1, v2

    .line 365
    invoke-virtual {p1}, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->getMacKey()Ljava/security/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    nop

    .line 371
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-object v1

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Lorg/jpos/security/jceadapter/JCEHandlerException;

    invoke-direct {v2, v0}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 366
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 367
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lorg/jpos/security/jceadapter/JCEHandlerException;

    invoke-direct {v2, v0}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public decryptDESKey(S[BLjava/security/Key;Z)Ljava/security/Key;
    .locals 3
    .param p1, "keyLength"    # S
    .param p2, "encryptedDESKey"    # [B
    .param p3, "encryptingKey"    # Ljava/security/Key;
    .param p4, "checkParity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x2

    invoke-virtual {p0, p2, p3, v0}, Lorg/jpos/security/jceadapter/JCEHandler;->doCryptStuff([BLjava/security/Key;I)[B

    move-result-object v0

    .line 189
    .local v0, "clearKeyBytes":[B
    if-eqz p4, :cond_1

    invoke-static {v0}, Lorg/jpos/security/Util;->isDESParityAdjusted([B)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance v1, Lorg/jpos/security/jceadapter/JCEHandlerException;

    const-string v2, "Parity not adjusted"

    invoke-direct {v1, v2}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v1

    return-object v1
.end method

.method public decryptData([BLjava/security/Key;)[B
    .locals 1
    .param p1, "encryptedData"    # [B
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lorg/jpos/security/jceadapter/JCEHandler;->doCryptStuff([BLjava/security/Key;I)[B

    move-result-object v0

    return-object v0
.end method

.method public decryptDataCBC([BLjava/security/Key;[B)[B
    .locals 6
    .param p1, "encryptedData"    # [B
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 273
    sget-object v4, Lorg/jpos/security/CipherMode;->CBC:Lorg/jpos/security/CipherMode;

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCEHandler;->doCryptStuff([BLjava/security/Key;ILorg/jpos/security/CipherMode;[B)[B

    move-result-object v0

    return-object v0
.end method

.method doCryptStuff([BLjava/security/Key;I)[B
    .locals 6
    .param p1, "data"    # [B
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 286
    sget-object v4, Lorg/jpos/security/CipherMode;->ECB:Lorg/jpos/security/CipherMode;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCEHandler;->doCryptStuff([BLjava/security/Key;ILorg/jpos/security/CipherMode;[B)[B

    move-result-object v0

    return-object v0
.end method

.method doCryptStuff([BLjava/security/Key;ILorg/jpos/security/CipherMode;[B)[B
    .locals 7
    .param p1, "data"    # [B
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "direction"    # I
    .param p4, "cipherMode"    # Lorg/jpos/security/CipherMode;
    .param p5, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 303
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "transformation":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lorg/jpos/security/CipherMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NoPadding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_0
    const/4 v1, 0x0

    .line 309
    .local v1, "aps":Ljava/security/spec/AlgorithmParameterSpec;
    :try_start_0
    iget-object v2, p0, Lorg/jpos/security/jceadapter/JCEHandler;->provider:Ljava/security/Provider;

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 310
    .local v2, "c1":Ljavax/crypto/Cipher;
    sget-object v3, Lorg/jpos/security/CipherMode;->ECB:Lorg/jpos/security/CipherMode;

    if-eq p4, v3, :cond_1

    .line 311
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v1, v3

    .line 312
    :cond_1
    invoke-virtual {v2, p3, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 313
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 314
    .local v3, "result":[B
    sget-object v4, Lorg/jpos/security/CipherMode;->ECB:Lorg/jpos/security/CipherMode;

    if-eq p4, v4, :cond_2

    .line 315
    array-length v4, v3

    add-int/lit8 v4, v4, -0x8

    const/4 v5, 0x0

    array-length v6, p5

    invoke-static {v3, v4, p5, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v2    # "c1":Ljavax/crypto/Cipher;
    :cond_2
    nop

    .line 319
    return-object v3

    .line 316
    .end local v3    # "result":[B
    :catch_0
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/jpos/security/jceadapter/JCEHandlerException;

    invoke-direct {v3, v2}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public encryptDESKey(SLjava/security/Key;Ljava/security/Key;)[B
    .locals 2
    .param p1, "keyLength"    # S
    .param p2, "clearDESKey"    # Ljava/security/Key;
    .param p3, "encryptingKey"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/jceadapter/JCEHandler;->extractDESKeyMaterial(SLjava/security/Key;)[B

    move-result-object v0

    .line 143
    .local v0, "clearKeyBytes":[B
    invoke-static {v0}, Lorg/jpos/security/Util;->adjustDESParity([B)V

    .line 144
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->doCryptStuff([BLjava/security/Key;I)[B

    move-result-object v1

    return-object v1
.end method

.method public encryptData([BLjava/security/Key;)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/jpos/security/jceadapter/JCEHandler;->doCryptStuff([BLjava/security/Key;I)[B

    move-result-object v0

    return-object v0
.end method

.method public encryptDataCBC([BLjava/security/Key;[B)[B
    .locals 6
    .param p1, "data"    # [B
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 260
    sget-object v4, Lorg/jpos/security/CipherMode;->CBC:Lorg/jpos/security/CipherMode;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/jceadapter/JCEHandler;->doCryptStuff([BLjava/security/Key;ILorg/jpos/security/CipherMode;[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected extractDESKeyMaterial(SLjava/security/Key;)[B
    .locals 5
    .param p1, "keyLength"    # S
    .param p2, "clearDESKey"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 158
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "keyAlg":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "keyFormat":Ljava/lang/String;
    const-string v2, "RAW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 163
    const-string v2, "DES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 167
    .local v2, "clearKeyBytes":[B
    invoke-virtual {p0, p1}, Lorg/jpos/security/jceadapter/JCEHandler;->getBytesLength(S)I

    move-result v3

    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->trim([BI)[B

    move-result-object v2

    .line 168
    return-object v2

    .line 164
    .end local v2    # "clearKeyBytes":[B
    :cond_0
    new-instance v2, Lorg/jpos/security/jceadapter/JCEHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported key algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_1
    new-instance v2, Lorg/jpos/security/jceadapter/JCEHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported DES key encoding format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected formDESKey(S[B)Ljava/security/Key;
    .locals 7
    .param p1, "keyLength"    # S
    .param p2, "clearKeyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "key":Ljava/security/Key;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 214
    :sswitch_0
    const/4 v2, 0x0

    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->getBytesLength(S)I

    move-result v3

    const/4 v5, 0x0

    const/16 v1, 0x40

    .line 215
    invoke-virtual {p0, v1}, Lorg/jpos/security/jceadapter/JCEHandler;->getBytesLength(S)I

    move-result v6

    .line 214
    move-object v1, p2

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lorg/jpos/iso/ISOUtil;->concat([BII[BII)[B

    move-result-object p2

    .line 218
    :sswitch_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DESede"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 209
    :sswitch_2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DES"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    .line 211
    nop

    .line 221
    :goto_0
    if-eqz v0, :cond_0

    .line 223
    return-object v0

    .line 222
    :cond_0
    new-instance v1, Lorg/jpos/security/jceadapter/JCEHandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported DES key length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x80 -> :sswitch_0
        0xc0 -> :sswitch_1
    .end sparse-switch
.end method

.method public generateDESKey(S)Ljava/security/Key;
    .locals 4
    .param p1, "keyLength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    .line 104
    .local v0, "generatedClearKey":Ljava/security/Key;
    const/16 v1, 0x40

    if-le p1, v1, :cond_0

    .line 105
    :try_start_0
    const-string v1, "DESede"

    iget-object v2, p0, Lorg/jpos/security/jceadapter/JCEHandler;->provider:Ljava/security/Provider;

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .local v1, "k1":Ljavax/crypto/KeyGenerator;
    goto :goto_0

    .line 107
    .end local v1    # "k1":Ljavax/crypto/KeyGenerator;
    :cond_0
    const-string v1, "DES"

    iget-object v2, p0, Lorg/jpos/security/jceadapter/JCEHandler;->provider:Ljava/security/Provider;

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 109
    .restart local v1    # "k1":Ljavax/crypto/KeyGenerator;
    :goto_0
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object v0, v2

    .line 115
    invoke-virtual {p0, p1, v0}, Lorg/jpos/security/jceadapter/JCEHandler;->extractDESKeyMaterial(SLjava/security/Key;)[B

    move-result-object v2

    .line 116
    .local v2, "clearKeyBytes":[B
    invoke-static {v2}, Lorg/jpos/security/Util;->adjustDESParity([B)V

    .line 117
    invoke-virtual {p0, p1, v2}, Lorg/jpos/security/jceadapter/JCEHandler;->formDESKey(S[B)Ljava/security/Key;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 123
    .end local v1    # "k1":Ljavax/crypto/KeyGenerator;
    .end local v2    # "clearKeyBytes":[B
    nop

    .line 124
    return-object v0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Lorg/jpos/security/jceadapter/JCEHandlerException;

    if-eqz v2, :cond_1

    .line 120
    move-object v2, v1

    check-cast v2, Lorg/jpos/security/jceadapter/JCEHandlerException;

    throw v2

    .line 122
    :cond_1
    new-instance v2, Lorg/jpos/security/jceadapter/JCEHandlerException;

    invoke-direct {v2, v1}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public generateMAC([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "kd"    # Ljava/security/Key;
    .param p3, "macAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 388
    new-instance v0, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;

    invoke-direct {v0, p3, p2}, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-virtual {p0, v0}, Lorg/jpos/security/jceadapter/JCEHandler;->assignMACEngine(Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 389
    .local v0, "mac":Ljavax/crypto/Mac;
    monitor-enter v0

    .line 390
    :try_start_0
    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    .line 391
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBytesLength(S)I
    .locals 4
    .param p1, "keyLength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/jceadapter/JCEHandlerException;
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "bytesLength":I
    sparse-switch p1, :sswitch_data_0

    .line 344
    new-instance v1, Lorg/jpos/security/jceadapter/JCEHandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/security/jceadapter/JCEHandlerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :sswitch_0
    const/16 v0, 0x18

    .line 342
    goto :goto_0

    .line 338
    :sswitch_1
    const/16 v0, 0x10

    .line 339
    goto :goto_0

    .line 335
    :sswitch_2
    const/16 v0, 0x8

    .line 336
    nop

    .line 346
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method
