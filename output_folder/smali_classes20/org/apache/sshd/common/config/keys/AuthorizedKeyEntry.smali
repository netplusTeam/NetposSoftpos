.class public Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
.super Lorg/apache/sshd/common/config/keys/PublicKeyEntry;
.source "AuthorizedKeyEntry.java"


# static fields
.field public static final BOOLEAN_OPTION_NEGATION_INDICATOR:C = '!'

.field private static final serialVersionUID:J = -0x7d011655390bcf44L


# instance fields
.field private comment:Ljava/lang/String;

.field private loginOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;-><init>()V

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->loginOptions:Ljava/util/Map;

    .line 70
    return-void
.end method

.method public static addLoginOption(Ljava/util/Map;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 9
    .param p1, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    .local p0, "optsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "p":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 447
    return-object v2

    .line 450
    :cond_0
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 451
    .local v1, "pos":I
    const/4 v3, 0x0

    if-gez v1, :cond_1

    move-object v4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "name":Ljava/lang/String;
    :goto_0
    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "value":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->stripQuotes(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 454
    if-nez v2, :cond_4

    .line 455
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x21

    if-eq v5, v6, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 458
    :cond_4
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    .local v3, "entry":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 460
    .local v5, "prev":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 461
    if-ltz v1, :cond_5

    .line 464
    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 462
    :cond_5
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad format (boolean option ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") re-specified): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 467
    :cond_6
    :goto_2
    return-object v3
.end method

.method public static parseAuthorizedKeyEntry(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->parseAuthorizedKeyEntry(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseAuthorizedKeyEntry(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "resolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 286
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_0

    goto/16 :goto_2

    .line 291
    :cond_0
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 292
    .local v4, "startPos":I
    if-lez v4, :cond_7

    .line 296
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 297
    .local v3, "endPos":I
    if-gt v3, v4, :cond_1

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 301
    :cond_1
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "keyType":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->getKeyDataEntryResolver(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    move-result-object v6

    .line 303
    .local v6, "decoder":Ljava/lang/Object;
    if-nez v6, :cond_2

    .line 304
    invoke-static {v5}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getPublicKeyEntryDecoder(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v6

    .line 309
    :cond_2
    const/4 v7, 0x1

    if-nez v6, :cond_4

    .line 310
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->resolveEntryComponents(Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v2

    .line 311
    .local v2, "comps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->parseAuthorizedKeyEntry(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    move-result-object v8

    .line 312
    .local v8, "entry":Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    if-eqz v8, :cond_3

    move v1, v7

    :cond_3
    const-string v7, "Bad format (no key data after login options): %s"

    invoke-static {v1, v7, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 313
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->parseLoginOptions(Ljava/lang/String;)Ljava/util/NavigableMap;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->setLoginOptions(Ljava/util/Map;)V

    .line 314
    .end local v2    # "comps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 315
    .end local v8    # "entry":Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    if-ge v3, v8, :cond_5

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v0

    .line 316
    .local v1, "encData":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    if-ge v3, v8, :cond_6

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "comment":Ljava/lang/String;
    :cond_6
    new-instance v7, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    invoke-direct {v7}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;-><init>()V

    invoke-static {v7, v1, p1}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->parsePublicKeyEntry(Lorg/apache/sshd/common/config/keys/PublicKeyEntry;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;)Lorg/apache/sshd/common/config/keys/PublicKeyEntry;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    .line 318
    .restart local v8    # "entry":Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    invoke-virtual {v8, v2}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->setComment(Ljava/lang/String;)V

    .line 321
    .end local v1    # "encData":Ljava/lang/String;
    .end local v2    # "comment":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 293
    .end local v3    # "endPos":I
    .end local v5    # "keyType":Ljava/lang/String;
    .end local v6    # "decoder":Ljava/lang/Object;
    .end local v8    # "entry":Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad format (no key data delimiter): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    .end local v4    # "startPos":I
    :cond_8
    :goto_2
    return-object v2
.end method

.method public static parseLoginOptions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .locals 11
    .param p0, "options"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 387
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v1

    .line 389
    .local v1, "len":I
    if-gtz v1, :cond_0

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptyNavigableMap()Ljava/util/NavigableMap;

    move-result-object v2

    return-object v2

    .line 393
    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 394
    .local v2, "optsMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 395
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .local v4, "curPos":I
    :goto_0
    if-ge v4, v1, :cond_6

    .line 396
    const/16 v5, 0x2c

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 397
    .local v6, "nextPos":I
    if-ge v6, v4, :cond_1

    .line 398
    goto :goto_3

    .line 402
    :cond_1
    const/16 v7, 0x22

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 403
    .local v8, "quotePos":I
    if-lt v8, v3, :cond_5

    if-ge v8, v6, :cond_5

    .line 404
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 405
    if-le v6, v8, :cond_4

    .line 410
    :goto_1
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v1, :cond_5

    .line 411
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 412
    .local v7, "ch":C
    if-ne v7, v5, :cond_2

    .line 413
    goto :goto_2

    .line 416
    :cond_2
    const/16 v9, 0x20

    if-ne v7, v9, :cond_3

    .end local v7    # "ch":C
    goto :goto_1

    .line 417
    .restart local v7    # "ch":C
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad format (incorrect list format): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 406
    .end local v7    # "ch":C
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad format (imbalanced quoted command): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 422
    :cond_5
    :goto_2
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->addLoginOption(Ljava/util/Map;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 423
    add-int/lit8 v3, v6, 0x1

    .line 424
    move v4, v3

    .line 395
    .end local v6    # "nextPos":I
    .end local v8    # "quotePos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 428
    .end local v4    # "curPos":I
    :cond_6
    :goto_3
    if-ge v3, v1, :cond_7

    .line 429
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->addLoginOption(Ljava/util/Map;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 432
    :cond_7
    return-object v2
.end method

.method public static readAuthorizedKeys(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 6
    .param p0, "rdr"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;>;"
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 241
    :try_start_0
    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->parseAuthorizedKeyEntry(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .local v2, "entry":Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    if-nez v2, :cond_0

    .line 243
    goto :goto_1

    .line 248
    :cond_0
    nop

    .line 250
    if-nez v0, :cond_1

    .line 251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 254
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v2    # "entry":Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Throwable;
    :goto_2
    new-instance v3, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to parse key entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 247
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    if-nez v0, :cond_3

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 260
    :cond_3
    return-object v0
.end method

.method public static readAuthorizedKeys(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/io/InputStreamReader;

    .line 210
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/NoCloseInputStream;->resolveInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 209
    .local v0, "rdr":Ljava/io/Reader;
    nop

    .line 211
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->readAuthorizedKeys(Ljava/io/Reader;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 211
    return-object v1

    .line 209
    :catchall_0
    move-exception v1

    .end local v0    # "rdr":Ljava/io/Reader;
    .end local p0    # "in":Ljava/io/InputStream;
    .end local p1    # "okToClose":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    .restart local v0    # "rdr":Ljava/io/Reader;
    .restart local p0    # "in":Ljava/io/InputStream;
    .restart local p1    # "okToClose":Z
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static readAuthorizedKeys(Ljava/io/Reader;Z)Ljava/util/List;
    .locals 4
    .param p0, "rdr"    # Ljava/io/Reader;
    .param p1, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/io/BufferedReader;

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/NoCloseReader;->resolveReader(Ljava/io/Reader;Z)Ljava/io/Reader;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 226
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->readAuthorizedKeys(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 226
    return-object v1

    .line 225
    :catchall_0
    move-exception v1

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local p0    # "rdr":Ljava/io/Reader;
    .end local p1    # "okToClose":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local p0    # "rdr":Ljava/io/Reader;
    .restart local p1    # "okToClose":Z
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static readAuthorizedKeys(Ljava/net/URL;)Ljava/util/List;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 178
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->readAuthorizedKeys(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 178
    :cond_0
    return-object v1

    .line 177
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "url":Ljava/net/URL;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static varargs readAuthorizedKeys(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/util/List;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 195
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->readAuthorizedKeys(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 195
    :cond_0
    return-object v1

    .line 194
    :catchall_0
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "path":Ljava/nio/file/Path;
    .end local p1    # "options":[Ljava/nio/file/OpenOption;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "path":Ljava/nio/file/Path;
    .restart local p1    # "options":[Ljava/nio/file/OpenOption;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static resolveEntryComponents(Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 7
    .param p0, "entryLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    const/4 v2, 0x0

    .local v2, "lastPos":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 340
    const/16 v3, 0x20

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 341
    .local v3, "startPos":I
    if-lt v3, v2, :cond_2

    .line 345
    const/16 v4, 0x22

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 347
    .local v4, "quotePos":I
    if-le v4, v3, :cond_1

    .line 348
    add-int/lit8 v2, v4, 0x1

    .line 349
    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "loginOptions":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, "remainder":Ljava/lang/String;
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v1, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 342
    .end local v1    # "loginOptions":Ljava/lang/String;
    .end local v4    # "quotePos":I
    .end local v5    # "remainder":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad format (no key data delimiter): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    .end local v2    # "lastPos":I
    .end local v3    # "startPos":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad format (no key data contents): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_4
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public appendPublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Appendable;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;
    .locals 8
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "sb"    # Ljava/lang/Appendable;
    .param p3, "fallbackResolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->getLoginOptions()Ljava/util/Map;

    move-result-object v0

    .line 116
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    const/16 v2, 0x20

    if-nez v1, :cond_3

    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "index":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 120
    .local v4, "oe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 121
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 122
    .local v6, "value":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 123
    const/16 v7, 0x2c

    invoke-interface {p2, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 125
    :cond_0
    invoke-interface {p2, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 128
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 129
    const/16 v7, 0x3d

    invoke-interface {p2, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 131
    :cond_1
    nop

    .end local v4    # "oe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 132
    goto :goto_0

    .line 134
    :cond_2
    if-lez v1, :cond_3

    .line 135
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 139
    .end local v1    # "index":I
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->appendPublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Appendable;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;

    move-result-object v1

    .line 140
    .local v1, "key":Ljava/security/PublicKey;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "kc":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 142
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 145
    :cond_4
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 155
    invoke-super {p0, p1}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->loginOptions:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 150
    invoke-super {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->hashCode()I

    move-result v0

    return v0
.end method

.method public resolvePublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "fallbackResolver"    # Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->getLoginOptions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->resolvePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Map;Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->comment:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setLoginOptions(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->loginOptions:Ljava/util/Map;

    goto :goto_0

    .line 88
    :cond_0
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->loginOptions:Ljava/util/Map;

    .line 90
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 160
    invoke-super {p0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntry;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->getComment()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "kc":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->getLoginOptions()Ljava/util/Map;

    move-result-object v2

    .line 163
    .local v2, "ko":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    const-string v5, ""

    const-string v6, " "

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    return-object v3
.end method
