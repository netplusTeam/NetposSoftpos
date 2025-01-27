.class public Lorg/jpos/iso/IVA_ALPHANUMNOBLANK;
.super Lorg/jpos/iso/IVA_ALPHANUM;
.source "IVA_ALPHANUMNOBLANK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/jpos/iso/IVA_ALPHANUM;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "minLen"    # I
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/IVA_ALPHANUM;-><init>(IILjava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "maxLen"    # I
    .param p2, "Description"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/IVA_ALPHANUM;-><init>(ILjava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "Description"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lorg/jpos/iso/IVA_ALPHANUM;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "minLen"    # I
    .param p3, "maxLen"    # I
    .param p4, "Description"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p2, p3, p4}, Lorg/jpos/iso/IVA_ALPHANUMNOBLANK;-><init>(IILjava/lang/String;)V

    .line 63
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_ALPHANUMNOBLANK;->breakOnError:Z

    .line 64
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p2, p3}, Lorg/jpos/iso/IVA_ALPHANUMNOBLANK;-><init>(ILjava/lang/String;)V

    .line 58
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_ALPHANUMNOBLANK;->breakOnError:Z

    .line 59
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "Description"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p2}, Lorg/jpos/iso/IVA_ALPHANUMNOBLANK;-><init>(Ljava/lang/String;)V

    .line 53
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_ALPHANUMNOBLANK;->breakOnError:Z

    .line 54
    return-void
.end method


# virtual methods
.method public validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;
    .locals 5
    .param p1, "f"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 70
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/ISOField;

    .line 73
    .local v0, "c":Lorg/jpos/iso/ISOField;
    :try_start_0
    invoke-super {p0, v0}, Lorg/jpos/iso/IVA_ALPHANUM;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOField;

    move-object v0, v1

    .line 75
    invoke-virtual {v0}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    new-instance v1, Lorg/jpos/iso/ISOVError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Value Error. It can not be blank-filled. (Current value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    invoke-virtual {v0}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/jpos/iso/IVA_ALPHANUMNOBLANK;->getRejCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/ISOVError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v1, "e":Lorg/jpos/iso/ISOVError;
    instance-of v2, v0, Lorg/jpos/iso/ISOVField;

    if-eqz v2, :cond_0

    .line 79
    move-object v2, v0

    check-cast v2, Lorg/jpos/iso/ISOVField;

    invoke-virtual {v2, v1}, Lorg/jpos/iso/ISOVField;->addISOVError(Lorg/jpos/iso/ISOVError;)Z

    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Lorg/jpos/iso/ISOVField;

    invoke-direct {v2, v0, v1}, Lorg/jpos/iso/ISOVField;-><init>(Lorg/jpos/iso/ISOField;Lorg/jpos/iso/ISOVError;)V

    move-object v0, v2

    .line 82
    :goto_0
    iget-boolean v2, p0, Lorg/jpos/iso/IVA_ALPHANUMNOBLANK;->breakOnError:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    new-instance v2, Lorg/jpos/iso/validator/ISOVException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jpos/iso/ISOField;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/jpos/iso/validator/ISOVException;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    .end local v0    # "c":Lorg/jpos/iso/ISOField;
    .end local p1    # "f":Lorg/jpos/iso/ISOComponent;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "e":Lorg/jpos/iso/ISOVError;
    .restart local v0    # "c":Lorg/jpos/iso/ISOField;
    .restart local p1    # "f":Lorg/jpos/iso/ISOComponent;
    :cond_2
    :goto_1
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "ex":Ljava/lang/Exception;
    instance-of v2, v1, Lorg/jpos/iso/validator/ISOVException;

    if-nez v2, :cond_3

    .line 89
    return-object v0

    .line 88
    :cond_3
    move-object v2, v1

    check-cast v2, Lorg/jpos/iso/validator/ISOVException;

    throw v2
.end method
