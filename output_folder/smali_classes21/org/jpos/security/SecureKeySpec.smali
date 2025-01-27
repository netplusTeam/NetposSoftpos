.class public Lorg/jpos/security/SecureKeySpec;
.super Ljava/lang/Object;
.source "SecureKeySpec.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jpos/util/Loggeable;


# static fields
.field private static final serialVersionUID:J = -0x2ba648ad429e8171L


# instance fields
.field protected algorithm:Lorg/jpos/security/Algorithm;

.field protected exportability:Lorg/jpos/security/Exportability;

.field protected keyBlockMAC:[B

.field protected keyBlockVersion:C

.field protected keyBytes:[B

.field protected keyCheckValue:[B

.field protected keyLength:I

.field protected keyName:Ljava/lang/String;

.field protected keyType:Ljava/lang/String;

.field protected keyUsage:Lorg/jpos/security/KeyUsage;

.field protected keyVersion:Ljava/lang/String;

.field protected modeOfUse:Lorg/jpos/security/ModeOfUse;

.field protected final optionalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected reserved:Ljava/lang/String;

.field protected scheme:Lorg/jpos/security/KeyScheme;

.field protected variant:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/SecureKeySpec;->keyBytes:[B

    .line 133
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/security/SecureKeySpec;->optionalHeaders:Ljava/util/Map;

    .line 149
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "inner":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<secure-key-spec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lorg/jpos/security/SecureKeySpec;->scheme:Lorg/jpos/security/KeyScheme;

    const-string v3, "\""

    if-eqz v2, :cond_0

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " scheme=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/jpos/security/SecureKeySpec;->scheme:Lorg/jpos/security/KeyScheme;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 448
    :cond_0
    iget-object v2, p0, Lorg/jpos/security/SecureKeySpec;->keyName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " name=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/jpos/security/SecureKeySpec;->keyName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 451
    :cond_1
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getKeyLength()I

    move-result v2

    if-lez v2, :cond_2

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<length>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getKeyLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</length>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getKeyType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<type>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getKeyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</type>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<variant>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getVariant()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</variant>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    :cond_3
    invoke-virtual {p0, v0}, Lorg/jpos/security/SecureKeySpec;->formKeyHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "keyblok":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<header>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</header>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 468
    :cond_4
    iget-object v3, p0, Lorg/jpos/security/SecureKeySpec;->optionalHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<optional-header>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "inner2":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/security/SecureKeySpec;->optionalHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 472
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<entry id=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" value=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 473
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</optional-header>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    .end local v1    # "inner2":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getKeyBytes()[B

    move-result-object v1

    if-eqz v1, :cond_7

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<data>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getKeyBytes()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</data>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 479
    :cond_7
    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getKeyBlockMAC()[B

    move-result-object v1

    if-eqz v1, :cond_8

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<mac>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getKeyBlockMAC()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</mac>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    :cond_8
    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getKeyCheckValue()[B

    move-result-object v1

    if-eqz v1, :cond_9

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<check-value>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/security/SecureKeySpec;->getKeyCheckValue()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</check-value>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 485
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</secure-key-spec>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method protected formKeyHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "indent"    # Ljava/lang/String;

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "inner":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    nop

    .line 492
    :try_start_1
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 490
    .local v3, "p":Ljava/io/PrintStream;
    nop

    .line 494
    :try_start_2
    iget-char v4, p0, Lorg/jpos/security/SecureKeySpec;->keyBlockVersion:C

    if-eqz v4, :cond_0

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<version>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-char v5, p0, Lorg/jpos/security/SecureKeySpec;->keyBlockVersion:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</version>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 497
    :cond_0
    iget-object v4, p0, Lorg/jpos/security/SecureKeySpec;->keyUsage:Lorg/jpos/security/KeyUsage;

    if-eqz v4, :cond_1

    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<key-usage>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jpos/security/SecureKeySpec;->keyUsage:Lorg/jpos/security/KeyUsage;

    invoke-virtual {v5}, Lorg/jpos/security/KeyUsage;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</key-usage>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 500
    :cond_1
    iget-object v4, p0, Lorg/jpos/security/SecureKeySpec;->algorithm:Lorg/jpos/security/Algorithm;

    if-eqz v4, :cond_2

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<algorithm>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jpos/security/SecureKeySpec;->algorithm:Lorg/jpos/security/Algorithm;

    invoke-virtual {v5}, Lorg/jpos/security/Algorithm;->getCode()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</algorithm>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 503
    :cond_2
    iget-object v4, p0, Lorg/jpos/security/SecureKeySpec;->modeOfUse:Lorg/jpos/security/ModeOfUse;

    if-eqz v4, :cond_3

    .line 504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<mode-of-use>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jpos/security/SecureKeySpec;->modeOfUse:Lorg/jpos/security/ModeOfUse;

    invoke-virtual {v5}, Lorg/jpos/security/ModeOfUse;->getCode()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</mode-of-use>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    :cond_3
    iget-object v4, p0, Lorg/jpos/security/SecureKeySpec;->keyVersion:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<key-version>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jpos/security/SecureKeySpec;->keyVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</key-version>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 509
    :cond_4
    iget-object v4, p0, Lorg/jpos/security/SecureKeySpec;->exportability:Lorg/jpos/security/Exportability;

    if-eqz v4, :cond_5

    .line 510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<exportability>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jpos/security/SecureKeySpec;->exportability:Lorg/jpos/security/Exportability;

    invoke-virtual {v5}, Lorg/jpos/security/Exportability;->getCode()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</exportability>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 512
    :cond_5
    iget-object v4, p0, Lorg/jpos/security/SecureKeySpec;->reserved:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<reserved>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jpos/security/SecureKeySpec;->reserved:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</reserved>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    :cond_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, "ret":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_7

    .line 517
    nop

    .line 520
    :try_start_3
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 517
    return-object v1

    .line 519
    :cond_7
    nop

    .line 520
    :try_start_5
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 519
    return-object v4

    .line 490
    .end local v4    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .end local v0    # "inner":Ljava/lang/String;
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "p":Ljava/io/PrintStream;
    .end local p1    # "indent":Ljava/lang/String;
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 520
    .restart local v0    # "inner":Ljava/lang/String;
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "p":Ljava/io/PrintStream;
    .restart local p1    # "indent":Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    :try_start_9
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "inner":Ljava/lang/String;
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "indent":Ljava/lang/String;
    :goto_0
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 490
    .end local v3    # "p":Ljava/io/PrintStream;
    .restart local v0    # "inner":Ljava/lang/String;
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "indent":Ljava/lang/String;
    :catchall_3
    move-exception v3

    .end local v0    # "inner":Ljava/lang/String;
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "indent":Ljava/lang/String;
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 520
    .restart local v0    # "inner":Ljava/lang/String;
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "indent":Ljava/lang/String;
    :catchall_4
    move-exception v4

    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v5

    :try_start_c
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "inner":Ljava/lang/String;
    .end local p1    # "indent":Ljava/lang/String;
    :goto_1
    throw v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "inner":Ljava/lang/String;
    .restart local p1    # "indent":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 522
    .local v2, "ex":Ljava/io/IOException;
    return-object v1
.end method

.method public getAlgorithm()Lorg/jpos/security/Algorithm;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->algorithm:Lorg/jpos/security/Algorithm;

    return-object v0
.end method

.method public getExportability()Lorg/jpos/security/Exportability;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->exportability:Lorg/jpos/security/Exportability;

    return-object v0
.end method

.method public getKeyBlockMAC()[B
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->keyBlockMAC:[B

    return-object v0
.end method

.method public getKeyBlockVersion()C
    .locals 1

    .line 252
    iget-char v0, p0, Lorg/jpos/security/SecureKeySpec;->keyBlockVersion:C

    return v0
.end method

.method public getKeyBytes()[B
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->keyBytes:[B

    return-object v0
.end method

.method public getKeyCheckValue()[B
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->keyCheckValue:[B

    return-object v0
.end method

.method public getKeyLength()I
    .locals 1

    .line 192
    iget v0, p0, Lorg/jpos/security/SecureKeySpec;->keyLength:I

    return v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyUsage()Lorg/jpos/security/KeyUsage;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->keyUsage:Lorg/jpos/security/KeyUsage;

    return-object v0
.end method

.method public getKeyVersion()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->keyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getModeOfUse()Lorg/jpos/security/ModeOfUse;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->modeOfUse:Lorg/jpos/security/ModeOfUse;

    return-object v0
.end method

.method public getOptionalHeaders()Ljava/util/Map;
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

    .line 352
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->optionalHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Lorg/jpos/security/KeyScheme;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/jpos/security/SecureKeySpec;->scheme:Lorg/jpos/security/KeyScheme;

    return-object v0
.end method

.method public getVariant()I
    .locals 1

    .line 242
    iget v0, p0, Lorg/jpos/security/SecureKeySpec;->variant:I

    return v0
.end method

.method public setAlgorithm(Lorg/jpos/security/Algorithm;)V
    .locals 0
    .param p1, "algorithm"    # Lorg/jpos/security/Algorithm;

    .line 283
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->algorithm:Lorg/jpos/security/Algorithm;

    .line 284
    return-void
.end method

.method public setExportability(Lorg/jpos/security/Exportability;)V
    .locals 0
    .param p1, "exportability"    # Lorg/jpos/security/Exportability;

    .line 324
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->exportability:Lorg/jpos/security/Exportability;

    .line 325
    return-void
.end method

.method public setKeyBlockMAC([B)V
    .locals 0
    .param p1, "keyBlockMAC"    # [B

    .line 373
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->keyBlockMAC:[B

    .line 374
    return-void
.end method

.method public setKeyBlockVersion(C)V
    .locals 0
    .param p1, "keyBlockVersion"    # C

    .line 256
    iput-char p1, p0, Lorg/jpos/security/SecureKeySpec;->keyBlockVersion:C

    .line 257
    return-void
.end method

.method public setKeyBytes([B)V
    .locals 0
    .param p1, "keyBytes"    # [B

    .line 382
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->keyBytes:[B

    .line 383
    return-void
.end method

.method public setKeyCheckValue([B)V
    .locals 0
    .param p1, "keyCheckValue"    # [B

    .line 402
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->keyCheckValue:[B

    .line 403
    return-void
.end method

.method public setKeyLength(I)V
    .locals 0
    .param p1, "keyLength"    # I

    .line 180
    iput p1, p0, Lorg/jpos/security/SecureKeySpec;->keyLength:I

    .line 181
    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .line 430
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->keyName:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setKeyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyType"    # Ljava/lang/String;

    .line 208
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->keyType:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setKeyUsage(Lorg/jpos/security/KeyUsage;)V
    .locals 0
    .param p1, "keyUsage"    # Lorg/jpos/security/KeyUsage;

    .line 269
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->keyUsage:Lorg/jpos/security/KeyUsage;

    .line 270
    return-void
.end method

.method public setKeyVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyVersion"    # Ljava/lang/String;

    .line 310
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->keyVersion:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setModeOfUse(Lorg/jpos/security/ModeOfUse;)V
    .locals 0
    .param p1, "modeOfUse"    # Lorg/jpos/security/ModeOfUse;

    .line 296
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->modeOfUse:Lorg/jpos/security/ModeOfUse;

    .line 297
    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserved"    # Ljava/lang/String;

    .line 339
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->reserved:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setScheme(Lorg/jpos/security/KeyScheme;)V
    .locals 0
    .param p1, "scheme"    # Lorg/jpos/security/KeyScheme;

    .line 158
    iput-object p1, p0, Lorg/jpos/security/SecureKeySpec;->scheme:Lorg/jpos/security/KeyScheme;

    .line 159
    return-void
.end method

.method public setVariant(I)V
    .locals 0
    .param p1, "variant"    # I

    .line 233
    iput p1, p0, Lorg/jpos/security/SecureKeySpec;->variant:I

    .line 234
    return-void
.end method
