.class public Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;
.super Ljava/lang/Object;
.source "JCEHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/security/jceadapter/JCEHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MacEngineKey"
.end annotation


# instance fields
.field private final macAlgorithm:Ljava/lang/String;

.field private final macKey:Ljava/security/Key;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/security/Key;)V
    .locals 0
    .param p1, "macAlgorithm"    # Ljava/lang/String;
    .param p2, "macKey"    # Ljava/security/Key;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->macAlgorithm:Ljava/lang/String;

    .line 404
    iput-object p2, p0, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->macKey:Ljava/security/Key;

    .line 405
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 426
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 427
    return v0

    .line 429
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 430
    return v1

    .line 432
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 433
    return v1

    .line 435
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;

    .line 436
    .local v2, "other":Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;
    iget-object v3, p0, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->macAlgorithm:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 437
    iget-object v3, v2, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->macAlgorithm:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 438
    return v1

    .line 439
    :cond_3
    iget-object v4, v2, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 440
    return v1

    .line 441
    :cond_4
    iget-object v3, p0, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->macKey:Ljava/security/Key;

    iget-object v4, v2, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->macKey:Ljava/security/Key;

    if-eq v3, v4, :cond_5

    .line 443
    return v1

    .line 445
    :cond_5
    return v0
.end method

.method public getMacAlgorithm()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->macAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getMacKey()Ljava/security/Key;
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->macKey:Ljava/security/Key;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 417
    const/16 v0, 0x1f

    .line 418
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 419
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/jpos/security/jceadapter/JCEHandler$MacEngineKey;->macAlgorithm:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 421
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method
