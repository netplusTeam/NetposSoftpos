.class public Lorg/jpos/iso/ServiceCode;
.super Ljava/lang/Object;
.source "ServiceCode.java"


# instance fields
.field private final value:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "^\\d{3}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    .line 46
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid service code."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNoRestrictions()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x31

    if-eq v0, v1, :cond_1

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isATMOnly()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCashOnly()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoodsAndServicesOnly()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isICC()Z
    .locals 3

    .line 57
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    const/16 v2, 0x32

    if-eq v0, v2, :cond_0

    const/16 v2, 0x36

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isInternational()Z
    .locals 3

    .line 61
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    const/16 v2, 0x31

    if-eq v0, v2, :cond_0

    const/16 v2, 0x32

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isIssuerAuthorization()Z
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x1

    aget-char v0, v0, v1

    const/16 v2, 0x32

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNational()Z
    .locals 3

    .line 65
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    const/16 v2, 0x35

    if-eq v0, v2, :cond_0

    const/16 v2, 0x36

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isNormalAuthorization()Z
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x1

    aget-char v0, v0, v1

    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPINRequired()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x33

    if-eq v0, v1, :cond_1

    const/16 v1, 0x35

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPrivate()Z
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    const/16 v2, 0x37

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isTest()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    const/16 v2, 0x39

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public mustPromptForPINIfPEDPresent()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/jpos/iso/ServiceCode;->value:[C

    const/4 v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x36

    if-eq v0, v1, :cond_1

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
