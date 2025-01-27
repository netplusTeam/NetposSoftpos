.class public Lorg/jpos/iso/IVA_NUMNOZERO;
.super Lorg/jpos/iso/IVA_NUM;
.source "IVA_NUMNOZERO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/jpos/iso/IVA_NUM;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "minLen"    # I
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/IVA_NUM;-><init>(IILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0
    .param p1, "minLen"    # I
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;
    .param p4, "radix"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jpos/iso/IVA_NUM;-><init>(IILjava/lang/String;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "maxLen"    # I
    .param p2, "Description"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/IVA_NUM;-><init>(ILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "minLen"    # I
    .param p2, "Description"    # Ljava/lang/String;
    .param p3, "radix"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/IVA_NUM;-><init>(ILjava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "Description"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lorg/jpos/iso/IVA_NUM;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "Description"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/IVA_NUM;-><init>(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "minLen"    # I
    .param p3, "maxLen"    # I
    .param p4, "Description"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p2, p3, p4}, Lorg/jpos/iso/IVA_NUMNOZERO;-><init>(IILjava/lang/String;)V

    .line 84
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUMNOZERO;->breakOnError:Z

    .line 85
    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;I)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "minLen"    # I
    .param p3, "maxLen"    # I
    .param p4, "Description"    # Ljava/lang/String;
    .param p5, "radix"    # I

    .line 88
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jpos/iso/IVA_NUMNOZERO;-><init>(IILjava/lang/String;I)V

    .line 89
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUMNOZERO;->breakOnError:Z

    .line 90
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p2, p3}, Lorg/jpos/iso/IVA_NUMNOZERO;-><init>(ILjava/lang/String;)V

    .line 74
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUMNOZERO;->breakOnError:Z

    .line 75
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;I)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;
    .param p4, "radix"    # I

    .line 78
    invoke-direct {p0, p2, p3, p4}, Lorg/jpos/iso/IVA_NUMNOZERO;-><init>(ILjava/lang/String;I)V

    .line 79
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUMNOZERO;->breakOnError:Z

    .line 80
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "Description"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p2}, Lorg/jpos/iso/IVA_NUMNOZERO;-><init>(Ljava/lang/String;)V

    .line 64
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUMNOZERO;->breakOnError:Z

    .line 65
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "Description"    # Ljava/lang/String;
    .param p3, "radix"    # I

    .line 68
    invoke-direct {p0, p2, p3}, Lorg/jpos/iso/IVA_NUMNOZERO;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUMNOZERO;->breakOnError:Z

    .line 70
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

    .line 97
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/ISOField;

    .line 100
    .local v0, "c":Lorg/jpos/iso/ISOField;
    :try_start_0
    invoke-super {p0, v0}, Lorg/jpos/iso/IVA_NUM;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOField;

    move-object v0, v1

    .line 102
    invoke-virtual {v0}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->isZero(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    new-instance v1, Lorg/jpos/iso/ISOVError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Value Error. It can not be zero-filled. (Current value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
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

    .line 106
    invoke-virtual {p0, v3}, Lorg/jpos/iso/IVA_NUMNOZERO;->getRejCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/ISOVError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v1, "e":Lorg/jpos/iso/ISOVError;
    instance-of v2, v0, Lorg/jpos/iso/ISOVField;

    if-eqz v2, :cond_0

    .line 108
    move-object v2, v0

    check-cast v2, Lorg/jpos/iso/ISOVField;

    invoke-virtual {v2, v1}, Lorg/jpos/iso/ISOVField;->addISOVError(Lorg/jpos/iso/ISOVError;)Z

    goto :goto_0

    .line 110
    :cond_0
    new-instance v2, Lorg/jpos/iso/ISOVField;

    invoke-direct {v2, v0, v1}, Lorg/jpos/iso/ISOVField;-><init>(Lorg/jpos/iso/ISOField;Lorg/jpos/iso/ISOVError;)V

    move-object v0, v2

    .line 111
    :goto_0
    iget-boolean v2, p0, Lorg/jpos/iso/IVA_NUMNOZERO;->breakOnError:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 112
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

    .line 114
    .end local v1    # "e":Lorg/jpos/iso/ISOVError;
    .restart local v0    # "c":Lorg/jpos/iso/ISOField;
    .restart local p1    # "f":Lorg/jpos/iso/ISOComponent;
    :cond_2
    :goto_1
    return-object v0

    .line 116
    :catch_0
    move-exception v1

    .line 119
    .local v1, "ex":Ljava/lang/Exception;
    instance-of v2, v1, Lorg/jpos/iso/validator/ISOVException;

    if-nez v2, :cond_3

    .line 120
    return-object v0

    .line 119
    :cond_3
    move-object v2, v1

    check-cast v2, Lorg/jpos/iso/validator/ISOVException;

    throw v2
.end method
