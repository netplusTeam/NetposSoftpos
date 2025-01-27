.class public Lorg/jpos/iso/ISOFieldValidator;
.super Ljava/lang/Object;
.source "ISOFieldValidator.java"

# interfaces
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/iso/ISOValidator;


# instance fields
.field protected breakOnError:Z

.field protected cfg:Lorg/jpos/core/Configuration;

.field protected description:Ljava/lang/String;

.field protected fieldId:I

.field protected maxLen:I

.field protected minLen:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/ISOFieldValidator;->minLen:I

    const v1, 0xf423f

    iput v1, p0, Lorg/jpos/iso/ISOFieldValidator;->maxLen:I

    .line 180
    iput-boolean v0, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lorg/jpos/iso/ISOFieldValidator;->description:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "minLen"    # I
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/ISOFieldValidator;->minLen:I

    const v1, 0xf423f

    iput v1, p0, Lorg/jpos/iso/ISOFieldValidator;->maxLen:I

    .line 180
    iput-boolean v0, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    .line 52
    iput-object p3, p0, Lorg/jpos/iso/ISOFieldValidator;->description:Ljava/lang/String;

    .line 53
    iput p1, p0, Lorg/jpos/iso/ISOFieldValidator;->minLen:I

    iput p2, p0, Lorg/jpos/iso/ISOFieldValidator;->maxLen:I

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "maxLen"    # I
    .param p2, "Description"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/ISOFieldValidator;->minLen:I

    const v1, 0xf423f

    iput v1, p0, Lorg/jpos/iso/ISOFieldValidator;->maxLen:I

    .line 180
    iput-boolean v0, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    .line 46
    iput-object p2, p0, Lorg/jpos/iso/ISOFieldValidator;->description:Ljava/lang/String;

    .line 47
    iput v0, p0, Lorg/jpos/iso/ISOFieldValidator;->minLen:I

    .line 48
    iput p1, p0, Lorg/jpos/iso/ISOFieldValidator;->maxLen:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "Description"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/ISOFieldValidator;->minLen:I

    const v1, 0xf423f

    iput v1, p0, Lorg/jpos/iso/ISOFieldValidator;->maxLen:I

    .line 180
    iput-boolean v0, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    .line 42
    iput-object p1, p0, Lorg/jpos/iso/ISOFieldValidator;->description:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "breakOnError"    # Z

    .line 77
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldValidator;-><init>()V

    .line 78
    iput-boolean p1, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    .line 79
    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "minLen"    # I
    .param p3, "maxLen"    # I
    .param p4, "Description"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p2, p3, p4}, Lorg/jpos/iso/ISOFieldValidator;-><init>(IILjava/lang/String;)V

    .line 58
    iput-boolean p1, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    .line 59
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "maxLen"    # I
    .param p3, "Description"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p2, p3}, Lorg/jpos/iso/ISOFieldValidator;-><init>(ILjava/lang/String;)V

    .line 63
    iput-boolean p1, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    .line 64
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "breakOnError"    # Z
    .param p2, "Description"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p2}, Lorg/jpos/iso/ISOFieldValidator;-><init>(Ljava/lang/String;)V

    .line 68
    iput-boolean p1, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    .line 69
    return-void
.end method


# virtual methods
.method public breakOnError()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/jpos/iso/ISOFieldValidator;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldId()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/jpos/iso/ISOFieldValidator;->fieldId:I

    return v0
.end method

.method public getRejCode(I)Ljava/lang/String;
    .locals 1
    .param p1, "ErrType"    # I

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBreakOnError(Z)V
    .locals 0
    .param p1, "breakOnErr"    # Z

    .line 103
    iput-boolean p1, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    .line 104
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lorg/jpos/iso/ISOFieldValidator;->cfg:Lorg/jpos/core/Configuration;

    .line 89
    const-string v0, "min-len"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/ISOFieldValidator;->minLen:I

    .line 90
    const-string v0, "max-len"

    const v2, 0xf423f

    invoke-interface {p1, v0, v2}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/ISOFieldValidator;->maxLen:I

    .line 91
    const-string v0, "break-on-error"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    .line 92
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lorg/jpos/iso/ISOFieldValidator;->description:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setFieldId(I)V
    .locals 0
    .param p1, "f"    # I

    .line 119
    iput p1, p0, Lorg/jpos/iso/ISOFieldValidator;->fieldId:I

    .line 120
    return-void
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLen"    # I

    .line 95
    iput p1, p0, Lorg/jpos/iso/ISOFieldValidator;->maxLen:I

    .line 96
    return-void
.end method

.method public setMinLength(I)V
    .locals 0
    .param p1, "minLen"    # I

    .line 99
    iput p1, p0, Lorg/jpos/iso/ISOFieldValidator;->minLen:I

    .line 100
    return-void
.end method

.method public validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;
    .locals 7
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 151
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/ISOField;

    .line 152
    .local v0, "f":Lorg/jpos/iso/ISOField;
    invoke-virtual {v0}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, "v":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 154
    .local v2, "l":I
    instance-of v3, v1, [B

    if-eqz v3, :cond_0

    .line 155
    move-object v3, v1

    check-cast v3, [B

    check-cast v3, [B

    array-length v2, v3

    goto :goto_0

    .line 156
    :cond_0
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 157
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 158
    :cond_1
    :goto_0
    iget v3, p0, Lorg/jpos/iso/ISOFieldValidator;->minLen:I

    if-lt v2, v3, :cond_2

    iget v3, p0, Lorg/jpos/iso/ISOFieldValidator;->maxLen:I

    if-le v2, v3, :cond_4

    .line 159
    :cond_2
    new-instance v3, Lorg/jpos/iso/ISOVError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Length Error. Length must be in ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jpos/iso/ISOFieldValidator;->minLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jpos/iso/ISOFieldValidator;->maxLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. (Current len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 162
    invoke-virtual {p0, v5}, Lorg/jpos/iso/ISOFieldValidator;->getRejCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jpos/iso/ISOVError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v3, "e":Lorg/jpos/iso/ISOVError;
    instance-of v4, v0, Lorg/jpos/iso/ISOVField;

    if-eqz v4, :cond_3

    .line 164
    move-object v4, v0

    check-cast v4, Lorg/jpos/iso/ISOVField;

    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOVField;->addISOVError(Lorg/jpos/iso/ISOVError;)Z

    goto :goto_1

    .line 166
    :cond_3
    new-instance v4, Lorg/jpos/iso/ISOVField;

    invoke-direct {v4, v0, v3}, Lorg/jpos/iso/ISOVField;-><init>(Lorg/jpos/iso/ISOField;Lorg/jpos/iso/ISOVError;)V

    move-object v0, v4

    .line 167
    :goto_1
    iget-boolean v4, p0, Lorg/jpos/iso/ISOFieldValidator;->breakOnError:Z

    if-nez v4, :cond_5

    .line 170
    .end local v3    # "e":Lorg/jpos/iso/ISOVError;
    :cond_4
    return-object v0

    .line 168
    .restart local v3    # "e":Lorg/jpos/iso/ISOVError;
    :cond_5
    new-instance v4, Lorg/jpos/iso/validator/ISOVException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jpos/iso/ISOField;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/jpos/iso/validator/ISOVException;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    throw v4
.end method
