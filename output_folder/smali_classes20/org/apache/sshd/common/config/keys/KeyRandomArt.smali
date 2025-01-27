.class public Lorg/apache/sshd/common/config/keys/KeyRandomArt;
.super Ljava/lang/Object;
.source "KeyRandomArt.java"

# interfaces
.implements Lorg/apache/sshd/common/AlgorithmNameProvider;
.implements Lorg/apache/sshd/common/keyprovider/KeySizeIndicator;


# static fields
.field public static final AUGMENTATION_STRING:Ljava/lang/String; = " .o+=*BOX@%&#/^SE"

.field public static final FLDBASE:I = 0x8

.field public static final FLDSIZE_X:I = 0x11

.field public static final FLDSIZE_Y:I = 0x9


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final field:[[C

.field private final keySize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 16
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keySize"    # I
    .param p3, "digest"    # [B

    .line 86
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[C

    iput-object v3, v0, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->field:[[C

    .line 87
    const-string v3, "No algorithm provided"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->algorithm:Ljava/lang/String;

    .line 88
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-lez v1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    int-to-long v7, v1

    const-string v9, "Invalid key size: %d"

    invoke-static {v6, v9, v7, v8}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 89
    iput v1, v0, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->keySize:I

    .line 90
    const-string v6, "No key digest provided"

    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    const/16 v6, 0x8

    .line 93
    .local v6, "x":I
    const/4 v7, 0x4

    .line 94
    .local v7, "y":I
    const-string v8, " .o+=*BOX@%&#/^SE"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    .line 95
    .local v8, "len":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v10, v2

    const/4 v11, 0x4

    const/16 v12, 0x8

    if-ge v9, v10, :cond_5

    .line 97
    aget-byte v10, v2, v9

    and-int/lit16 v10, v10, 0xff

    .line 98
    .local v10, "input":I
    const/4 v13, 0x0

    .local v13, "b":I
    :goto_2
    if-ge v13, v11, :cond_4

    .line 100
    and-int/lit8 v14, v10, 0x1

    const/4 v15, -0x1

    if-eqz v14, :cond_1

    move v14, v5

    goto :goto_3

    :cond_1
    move v14, v15

    :goto_3
    add-int/2addr v6, v14

    .line 101
    and-int/lit8 v14, v10, 0x2

    if-eqz v14, :cond_2

    move v15, v5

    :cond_2
    add-int/2addr v7, v15

    .line 104
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 105
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 106
    const/16 v14, 0x10

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 107
    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 110
    iget-object v14, v0, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->field:[[C

    aget-object v14, v14, v6

    aget-char v15, v14, v7

    add-int/lit8 v3, v8, -0x2

    if-ge v15, v3, :cond_3

    .line 111
    add-int/lit8 v15, v15, 0x1

    int-to-char v3, v15

    aput-char v3, v14, v7

    .line 113
    :cond_3
    shr-int/lit8 v10, v10, 0x2

    .line 98
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_2

    .line 95
    .end local v10    # "input":I
    .end local v13    # "b":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 118
    .end local v9    # "i":I
    :cond_5
    iget-object v3, v0, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->field:[[C

    aget-object v5, v3, v12

    add-int/lit8 v9, v8, -0x1

    int-to-char v9, v9

    aput-char v9, v5, v11

    .line 119
    aget-object v3, v3, v6

    int-to-char v5, v8

    aput-char v5, v3, v7

    .line 120
    return-void

    :array_0
    .array-data 4
        0x11
        0x9
    .end array-data
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-static {}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getDefaultFingerPrintFactory()Lorg/apache/sshd/common/digest/DigestFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;-><init>(Ljava/security/PublicKey;Lorg/apache/sshd/common/Factory;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Lorg/apache/sshd/common/Factory;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    .local p2, "f":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    const-string v0, "No digest factory"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/Factory;

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/Digest;

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;-><init>(Ljava/security/PublicKey;Lorg/apache/sshd/common/digest/Digest;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Lorg/apache/sshd/common/digest/Digest;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "d"    # Lorg/apache/sshd/common/digest/Digest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    const-string v0, "No key provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeySize(Ljava/security/Key;)I

    move-result v1

    .line 78
    const-string v2, "No key digest"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/digest/Digest;

    invoke-static {v2, p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getRawFingerprint(Lorg/apache/sshd/common/digest/Digest;Ljava/security/PublicKey;)[B

    move-result-object v2

    .line 76
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;-><init>(Ljava/lang/String;I[B)V

    .line 79
    return-void
.end method

.method public static combine(Ljava/lang/Appendable;CLjava/util/Collection;)Ljava/lang/Appendable;
    .locals 10
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;C",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/config/keys/KeyRandomArt;",
            ">;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    .local p2, "arts":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/config/keys/KeyRandomArt;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    return-object p0

    .line 292
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v0, "allLines":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 294
    .local v1, "numLines":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/config/keys/KeyRandomArt;

    .line 295
    .local v3, "a":Lorg/apache/sshd/common/config/keys/KeyRandomArt;
    invoke-virtual {v3}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5, v4}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "lines":[Ljava/lang/String;
    if-gtz v1, :cond_1

    .line 298
    array-length v1, v4

    goto :goto_1

    .line 300
    :cond_1
    array-length v6, v4

    if-ne v1, v6, :cond_4

    .line 305
    :goto_1
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 306
    aget-object v7, v4, v6

    .line 307
    .local v7, "l":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_2

    .line 308
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 309
    aput-object v7, v4, v6

    .line 305
    .end local v7    # "l":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 313
    .end local v6    # "index":I
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v3    # "a":Lorg/apache/sshd/common/config/keys/KeyRandomArt;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    goto :goto_0

    .line 301
    .restart local v3    # "a":Lorg/apache/sshd/common/config/keys/KeyRandomArt;
    .restart local v4    # "lines":[Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mismatched lines count: expected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", actual="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    .end local v3    # "a":Lorg/apache/sshd/common/config/keys/KeyRandomArt;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_3
    if-ge v2, v1, :cond_8

    .line 317
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 318
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 319
    .local v5, "lines":[Ljava/lang/String;
    aget-object v6, v5, v2

    .line 320
    .local v6, "l":Ljava/lang/String;
    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 321
    if-lez v3, :cond_6

    if-eqz p1, :cond_6

    .line 322
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 317
    .end local v5    # "lines":[Ljava/lang/String;
    .end local v6    # "l":Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 325
    .end local v3    # "index":I
    :cond_7
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 328
    .end local v2    # "row":I
    :cond_8
    return-object p0
.end method

.method public static combine(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Appendable;CLorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Ljava/lang/Appendable;
    .locals 1
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "separator"    # C
    .param p3, "provider"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "TA;C",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    .local p1, "sb":Ljava/lang/Appendable;, "TA;"
    invoke-static {p0, p3}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->generate(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->combine(Ljava/lang/Appendable;CLjava/util/Collection;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static combine(CLjava/util/Collection;)Ljava/lang/String;
    .locals 2
    .param p0, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/config/keys/KeyRandomArt;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 195
    .local p1, "arts":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/config/keys/KeyRandomArt;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, ""

    return-object v0

    .line 200
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x15

    mul-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->combine(Ljava/lang/Appendable;CLjava/util/Collection;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static combine(Lorg/apache/sshd/common/session/SessionContext;CLorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Ljava/lang/String;
    .locals 2
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p1, "separator"    # C
    .param p2, "provider"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0, p1, p2}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->combine(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Appendable;CLorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Ljava/util/Collection;
    .locals 6
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p1, "provider"    # Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/common/config/keys/KeyRandomArt;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;

    move-result-object v1

    .line 261
    .local v1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 262
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/KeyPair;>;"
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 266
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 268
    .local v2, "arts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/config/keys/KeyRandomArt;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyPair;

    .line 269
    .local v3, "kp":Ljava/security/KeyPair;
    new-instance v4, Lorg/apache/sshd/common/config/keys/KeyRandomArt;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;-><init>(Ljava/security/PublicKey;)V

    .line 270
    .local v4, "a":Lorg/apache/sshd/common/config/keys/KeyRandomArt;
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v3    # "kp":Ljava/security/KeyPair;
    .end local v4    # "a":Lorg/apache/sshd/common/config/keys/KeyRandomArt;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 273
    return-object v2

    .line 263
    .end local v2    # "arts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/config/keys/KeyRandomArt;>;"
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public append(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    .local p1, "sb":Ljava/lang/Appendable;, "TA;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->getKeySize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "+--[%4s %4d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "s":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "index":I
    :goto_0
    const/16 v3, 0x2d

    const/16 v4, 0x11

    if-gt v1, v4, :cond_0

    .line 149
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "index":I
    :cond_0
    const/16 v1, 0x2b

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 152
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 155
    const-string v6, " .o+=*BOX@%&#/^SE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    .line 156
    .local v7, "len":I
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    const/16 v8, 0x9

    if-ge v2, v8, :cond_2

    .line 157
    const/16 v8, 0x7c

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 158
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_2
    if-ge v9, v4, :cond_1

    .line 159
    iget-object v10, p0, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->field:[[C

    aget-object v10, v10, v9

    aget-char v10, v10, v2

    .line 160
    .local v10, "ch":C
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-interface {p1, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 158
    .end local v10    # "ch":C
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 162
    .end local v9    # "x":I
    :cond_1
    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 163
    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    .end local v2    # "y":I
    :cond_2
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 168
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_3
    if-ge v2, v4, :cond_3

    .line 169
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 172
    .end local v2    # "index":I
    :cond_3
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 173
    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 174
    return-object p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->keySize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xfc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->append(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
