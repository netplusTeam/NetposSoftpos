.class public Lorg/jpos/iso/IVA_NUM;
.super Lorg/jpos/iso/ISOFieldValidator;
.source "IVA_NUM.java"


# instance fields
.field protected radix:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldValidator;-><init>()V

    .line 150
    const/16 v0, 0xa

    iput v0, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 38
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "minLen"    # I
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/ISOFieldValidator;-><init>(IILjava/lang/String;)V

    .line 150
    const/16 v0, 0xa

    iput v0, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 70
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 1
    .param p1, "minLen"    # I
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;
    .param p4, "radix"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/ISOFieldValidator;-><init>(IILjava/lang/String;)V

    .line 150
    const/16 v0, 0xa

    iput v0, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 81
    iput p4, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 82
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "maxLen"    # I
    .param p2, "Description"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldValidator;-><init>(ILjava/lang/String;)V

    .line 150
    const/16 v0, 0xa

    iput v0, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "maxLen"    # I
    .param p2, "Description"    # Ljava/lang/String;
    .param p3, "radix"    # I

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldValidator;-><init>(ILjava/lang/String;)V

    .line 150
    const/16 v0, 0xa

    iput v0, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 59
    iput p3, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "Description"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOFieldValidator;-><init>(Ljava/lang/String;)V

    .line 150
    const/16 v0, 0xa

    iput v0, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "Description"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .line 49
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOFieldValidator;-><init>(Ljava/lang/String;)V

    .line 150
    const/16 v0, 0xa

    iput v0, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 50
    iput p2, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 51
    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "minLen"    # I
    .param p3, "maxLen"    # I
    .param p4, "Description"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p2, p3, p4}, Lorg/jpos/iso/IVA_NUM;-><init>(IILjava/lang/String;)V

    .line 106
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUM;->breakOnError:Z

    .line 107
    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;I)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "minLen"    # I
    .param p3, "maxLen"    # I
    .param p4, "Description"    # Ljava/lang/String;
    .param p5, "radix"    # I

    .line 110
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jpos/iso/IVA_NUM;-><init>(IILjava/lang/String;I)V

    .line 111
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUM;->breakOnError:Z

    .line 112
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0, p2, p3}, Lorg/jpos/iso/IVA_NUM;-><init>(ILjava/lang/String;)V

    .line 96
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUM;->breakOnError:Z

    .line 97
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;I)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;
    .param p4, "radix"    # I

    .line 100
    invoke-direct {p0, p2, p3, p4}, Lorg/jpos/iso/IVA_NUM;-><init>(ILjava/lang/String;I)V

    .line 101
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUM;->breakOnError:Z

    .line 102
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "Description"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p2}, Lorg/jpos/iso/IVA_NUM;-><init>(Ljava/lang/String;)V

    .line 86
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUM;->breakOnError:Z

    .line 87
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "Description"    # Ljava/lang/String;
    .param p3, "radix"    # I

    .line 90
    invoke-direct {p0, p2, p3}, Lorg/jpos/iso/IVA_NUM;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-boolean p1, p0, Lorg/jpos/iso/IVA_NUM;->breakOnError:Z

    .line 92
    return-void
.end method


# virtual methods
.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 121
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOFieldValidator;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 122
    const-string v0, "radix"

    const/16 v1, 0xa

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    .line 123
    return-void
.end method

.method public validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;
    .locals 5
    .param p1, "f"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 132
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/ISOField;

    .line 133
    .local v0, "c":Lorg/jpos/iso/ISOField;
    invoke-super {p0, v0}, Lorg/jpos/iso/ISOFieldValidator;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/jpos/iso/ISOField;

    .line 134
    invoke-virtual {v0}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->isNumeric(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    new-instance v1, Lorg/jpos/iso/ISOVError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Value Error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    invoke-virtual {v0}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a numeric value in radix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jpos/iso/IVA_NUM;->radix:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 138
    invoke-virtual {p0, v3}, Lorg/jpos/iso/IVA_NUM;->getRejCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/ISOVError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v1, "e":Lorg/jpos/iso/ISOVError;
    instance-of v2, v0, Lorg/jpos/iso/ISOVField;

    if-eqz v2, :cond_0

    .line 140
    move-object v2, v0

    check-cast v2, Lorg/jpos/iso/ISOVField;

    invoke-virtual {v2, v1}, Lorg/jpos/iso/ISOVField;->addISOVError(Lorg/jpos/iso/ISOVError;)Z

    goto :goto_0

    .line 142
    :cond_0
    new-instance v2, Lorg/jpos/iso/ISOVField;

    invoke-direct {v2, v0, v1}, Lorg/jpos/iso/ISOVField;-><init>(Lorg/jpos/iso/ISOField;Lorg/jpos/iso/ISOVError;)V

    move-object v0, v2

    .line 143
    :goto_0
    iget-boolean v2, p0, Lorg/jpos/iso/IVA_NUM;->breakOnError:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 144
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

    throw v2

    .line 146
    .end local v1    # "e":Lorg/jpos/iso/ISOVError;
    :cond_2
    :goto_1
    return-object v0
.end method
