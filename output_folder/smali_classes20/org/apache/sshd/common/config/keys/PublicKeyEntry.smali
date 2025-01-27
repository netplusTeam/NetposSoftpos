.class public Lorg/apache/sshd/common/config/keys/PublicKeyEntry;
.super Ljava/lang/Object;
.source "PublicKeyEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/sshd/common/keyprovider/KeyTypeIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/config/keys/PublicKeyEntry$LazyDefaultKeysFolderHolder;
    }
.end annotation


# static fields
.field public static final COMMENT_CHAR:C = '#'

.field private static final KEY_DATA_RESOLVERS:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;",
            ">;"
        }
    .end annotation
.end field

.field public static final STD_KEYFILE_FOLDER_NAME:Ljava/lang/String; = ".ssh"

.field private static final serialVersionUID:J = -0x82022abc460ec48L


# instance fields
.field private keyData:[B

.field private keyDataResolver:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

.field private keyType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->KEY_DATA_RESOLVERS:Ljava/util/NavigableMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;->DEFAULT:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->keyDataResolver:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    .line 77
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "keyData"    # [B

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;->DEFAULT:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->keyDataResolver:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    .line 80
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->keyType:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->keyData:[B

    .line 82
    return-void
.end method

.method public static appendPublicKeyEntry(Ljava/lang/Appendable;Ljava/security/PublicKey;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/security/PublicKey;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->appendPublicKeyEntry(Ljava/lang/Appendable;Ljava/security/PublicKey;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static appendPublicKeyEntry(Ljava/lang/Appendable;Ljava/security/PublicKey;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Ljava/lang/Appendable;
    .locals 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "encoder"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/security/PublicKey;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    if-nez p1, :cond_0

    .line 474
    return-object p0

    .line 478
    :cond_0
    nop

    .line 479
    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getPublicKeyEntryDecoder(Ljava/security/Key;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v0

    .line 480
    .local v0, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<Ljava/security/PublicKey;*>;"
    if-eqz v0, :cond_2

    .line 484
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x7f

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 485
    .local v1, "s":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {v0, v1, p1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->encodePublicKey(Ljava/io/OutputStream;Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "keyType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 487
    .local v3, "bytes":[B
    if-nez p2, :cond_1

    .line 488
    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->resolveKeyDataEntryResolver(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    move-result-object v4

    move-object p2, v4

    .line 491
    :cond_1
    invoke-interface {p2, v3}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;->encodeEntryKeyData([B)Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, "encData":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v5

    const/16 v6, 0x20

    invoke-interface {v5, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    nop

    .end local v2    # "keyType":Ljava/lang/String;
    .end local v3    # "bytes":[B
    .end local v4    # "encData":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 495
    .end local v1    # "s":Ljava/io/ByteArrayOutputStream;
    return-object p0

    .line 484
    .restart local v1    # "s":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<Ljava/security/PublicKey;*>;"
    .end local v1    # "s":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "sb":Ljava/lang/Appendable;, "TA;"
    .end local p1    # "key":Ljava/security/PublicKey;
    .end local p2    # "encoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 493
    .restart local v0    # "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<Ljava/security/PublicKey;*>;"
    .restart local v1    # "s":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "sb":Ljava/lang/Appendable;, "TA;"
    .restart local p1    # "key":Ljava/security/PublicKey;
    .restart local p2    # "encoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    .line 481
    .end local v1    # "s":Ljava/io/ByteArrayOutputStream;
    :cond_2
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot retrieve decoder for key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDefaultKeysFolderPath()Ljava/nio/file/Path;
    .locals 1

    .line 513
    invoke-static {}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry$LazyDefaultKeysFolderHolder;->access$000()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyDataEntryResolver(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    .locals 2
    .param p0, "keyType"    # Ljava/lang/String;

    .line 267
    const-string v0, "No key type provided"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 269
    sget-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->KEY_DATA_RESOLVERS:Ljava/util/NavigableMap;

    monitor-enter v0

    .line 270
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    monitor-exit v0

    return-object v1

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRegisteredKeyDataEntryResolvers()Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;",
            ">;"
        }
    .end annotation

    .line 314
    sget-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->KEY_DATA_RESOLVERS:Ljava/util/NavigableMap;

    monitor-enter v0

    .line 315
    :try_start_0
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 319
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 320
    .local v1, "decoders":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;>;"
    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->putAll(Ljava/util/Map;)V

    .line 321
    monitor-exit v0

    .line 323
    return-object v1

    .line 321
    .end local v1    # "decoders":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static parsePublicKeyEntry(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntry;
    .locals 2
    .param p0, "encData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->parsePublicKeyEntry(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Lorg/apache/sshd/common/config/keys/PublicKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parsePublicKeyEntry(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Lorg/apache/sshd/common/config/keys/PublicKeyEntry;
    .locals 2
    .param p0, "encData"    # Ljava/lang/String;
    .param p1, "decoder"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 350
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const/4 v1, 0x0

    return-object v1

    .line 354
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;

    invoke-direct {v1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;-><init>()V

    invoke-static {v1, v0, p1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->parsePublicKeyEntry(Lorg/apache/sshd/common/config/keys/PublicKeyEntry;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Lorg/apache/sshd/common/config/keys/PublicKeyEntry;

    move-result-object v1

    return-object v1
.end method

.method public static parsePublicKeyEntry(Lorg/apache/sshd/common/config/keys/PublicKeyEntry;Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntry;
    .locals 1
    .param p1, "encData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntry;",
            ">(TE;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 369
    .local p0, "entry":Lorg/apache/sshd/common/config/keys/PublicKeyEntry;, "TE;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->parsePublicKeyEntry(Lorg/apache/sshd/common/config/keys/PublicKeyEntry;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Lorg/apache/sshd/common/config/keys/PublicKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parsePublicKeyEntry(Lorg/apache/sshd/common/config/keys/PublicKeyEntry;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Lorg/apache/sshd/common/config/keys/PublicKeyEntry;
    .locals 9
    .param p1, "encData"    # Ljava/lang/String;
    .param p2, "decoder"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntry;",
            ">(TE;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 386
    .local p0, "entry":Lorg/apache/sshd/common/config/keys/PublicKeyEntry;, "TE;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 392
    .local v2, "startPos":I
    if-lez v2, :cond_4

    .line 396
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 397
    .local v1, "endPos":I
    if-gt v1, v2, :cond_1

    .line 398
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 401
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "keyType":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 403
    invoke-static {v3}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->resolveKeyDataEntryResolver(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    move-result-object p2

    .line 405
    :cond_2
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "b64Data":Ljava/lang/String;
    invoke-interface {p2, v4}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;->decodeEntryKeyData(Ljava/lang/String;)[B

    move-result-object v5

    .line 407
    .local v5, "keyData":[B
    invoke-static {v5}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v6

    if-nez v6, :cond_3

    .line 411
    invoke-virtual {p0, v3}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->setKeyType(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->setKeyDataResolver(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)V

    .line 413
    invoke-virtual {p0, v5}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->setKeyData([B)V

    .line 414
    return-object p0

    .line 408
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad format (no BASE64 key data): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 393
    .end local v1    # "endPos":I
    .end local v3    # "keyType":Ljava/lang/String;
    .end local v4    # "b64Data":Ljava/lang/String;
    .end local v5    # "keyData":[B
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad format (no key data delimiter): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    .end local v2    # "startPos":I
    :cond_5
    :goto_0
    return-object p0
.end method

.method public static registerKeyDataEntryResolver(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)V
    .locals 2
    .param p0, "keyType"    # Ljava/lang/String;
    .param p1, "resolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    .line 252
    const-string v0, "No key type provided"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    const-string v0, "No resolver provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->KEY_DATA_RESOLVERS:Ljava/util/NavigableMap;

    monitor-enter v0

    .line 256
    :try_start_0
    invoke-interface {v0, p0, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resolveKeyDataEntryResolver(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    .locals 2
    .param p0, "keyType"    # Ljava/lang/String;

    .line 296
    const-string v0, "No key type provided"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 298
    invoke-static {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyDataEntryResolver(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    move-result-object v0

    .line 299
    .local v0, "resolver":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    if-eqz v0, :cond_0

    .line 300
    return-object v0

    .line 303
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;->DEFAULT:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    return-object v1
.end method

.method public static resolvePublicKeyEntries(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/util/List;
    .locals 6
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "fallbackResolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntry;",
            ">;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 224
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/config/keys/PublicKeyEntry;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 225
    .local v0, "numEntries":I
    if-gtz v0, :cond_0

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 229
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;

    .line 231
    .local v3, "e":Lorg/apache/sshd/common/config/keys/PublicKeyEntry;
    instance-of v4, v3, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    .line 232
    invoke-virtual {v4}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->getLoginOptions()Ljava/util/Map;

    move-result-object v4

    goto :goto_1

    .line 233
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    :goto_1
    nop

    .line 234
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, p0, v4, p2}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->resolvePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Map;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;

    move-result-object v5

    .line 235
    .local v5, "k":Ljava/security/PublicKey;
    if-eqz v5, :cond_2

    .line 236
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v3    # "e":Lorg/apache/sshd/common/config/keys/PublicKeyEntry;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "k":Ljava/security/PublicKey;
    :cond_2
    goto :goto_0

    .line 240
    :cond_3
    return-object v1
.end method

.method public static toString(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 424
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->toString(Ljava/security/PublicKey;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/security/PublicKey;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "encoder"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 440
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->appendPublicKeyEntry(Ljava/lang/Appendable;Ljava/security/PublicKey;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to encode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static unregisterKeyDataEntryResolver(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    .locals 2
    .param p0, "keyType"    # Ljava/lang/String;

    .line 281
    const-string v0, "No key type provided"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 283
    sget-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->KEY_DATA_RESOLVERS:Ljava/util/NavigableMap;

    monitor-enter v0

    .line 284
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    monitor-exit v0

    return-object v1

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public appendPublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Appendable;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "sb"    # Ljava/lang/Appendable;
    .param p3, "fallbackResolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->resolvePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Map;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;

    move-result-object v0

    .line 164
    .local v0, "key":Ljava/security/PublicKey;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->resolvePublicKeyEntryDataResolver()Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->appendPublicKeyEntry(Ljava/lang/Appendable;Ljava/security/PublicKey;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Ljava/lang/Appendable;

    .line 167
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 190
    return v0

    .line 192
    :cond_0
    if-ne p0, p1, :cond_1

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 196
    return v0

    .line 198
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->isEquivalent(Lorg/apache/sshd/common/config/keys/PublicKeyEntry;)Z

    move-result v0

    return v0
.end method

.method public getKeyData()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->keyData:[B

    return-object v0
.end method

.method public getKeyDataResolver()Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->keyDataResolver:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 172
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyData()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected isEquivalent(Lorg/apache/sshd/common/config/keys/PublicKeyEntry;)Z
    .locals 3
    .param p1, "e"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntry;

    .line 180
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 181
    return v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyData()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyData()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0
.end method

.method public resolvePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Map;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p3, "fallbackResolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;",
            ")",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 136
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyType()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "kt":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getPublicKeyEntryDecoder(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v1

    .line 138
    .local v1, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    if-nez v1, :cond_0

    .line 139
    move-object v1, p3

    .line 141
    :cond_0
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyData()[B

    move-result-object v2

    invoke-interface {v1, p1, v0, v2, p2}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;->resolve(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[BLjava/util/Map;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2

    .line 142
    :cond_1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No decoder available for key type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resolvePublicKeyEntryDataResolver()Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyDataResolver()Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    move-result-object v0

    .line 117
    .local v0, "resolver":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;->DEFAULT:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public setKeyData([B)V
    .locals 0
    .param p1, "value"    # [B

    .line 98
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->keyData:[B

    .line 99
    return-void
.end method

.method public setKeyDataResolver(Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)V
    .locals 0
    .param p1, "keyDataResolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    .line 106
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->keyDataResolver:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    .line 107
    return-void
.end method

.method public setKeyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->keyType:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 203
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->resolvePublicKeyEntryDataResolver()Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    move-result-object v0

    .line 204
    .local v0, "resolver":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyData()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;->encodeEntryKeyData([B)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "encData":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "<no-key>"

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
