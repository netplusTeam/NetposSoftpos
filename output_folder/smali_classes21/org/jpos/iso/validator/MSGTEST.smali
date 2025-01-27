.class public Lorg/jpos/iso/validator/MSGTEST;
.super Lorg/jpos/iso/ISOBaseValidator;
.source "MSGTEST.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/jpos/iso/ISOBaseValidator;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "breakOnError"    # Z

    .line 41
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOBaseValidator;-><init>(Z)V

    .line 42
    return-void
.end method

.method private makeStrFromArray([I)Ljava/lang/String;
    .locals 5
    .param p1, "validFields"    # [I

    .line 45
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "result":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 48
    .local v3, "validField":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .end local v3    # "validField":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;
    .locals 6
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "validate"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 58
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOBaseValidator;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    .line 59
    move-object v1, p1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 60
    .local v1, "msg":Lorg/jpos/iso/ISOMsg;
    const/4 v2, 0x3

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    const/4 v4, 0x7

    aput v4, v3, v2

    const/4 v2, 0x2

    const/16 v4, 0xb

    aput v4, v3, v2

    move-object v2, v3

    .line 61
    .local v2, "validFields":[I
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->hasFields([I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 62
    new-instance v3, Lorg/jpos/iso/ISOVError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fields "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lorg/jpos/iso/validator/MSGTEST;->makeStrFromArray([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must appear in msg."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "001"

    invoke-direct {v3, v4, v5}, Lorg/jpos/iso/ISOVError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v3, "e":Lorg/jpos/iso/ISOVError;
    instance-of v4, v1, Lorg/jpos/iso/ISOVMsg;

    if-eqz v4, :cond_0

    .line 64
    move-object v4, v1

    check-cast v4, Lorg/jpos/iso/ISOVMsg;

    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOVMsg;->addISOVError(Lorg/jpos/iso/ISOVError;)Z

    goto :goto_0

    .line 66
    :cond_0
    new-instance v4, Lorg/jpos/iso/ISOVMsg;

    invoke-direct {v4, v1, v3}, Lorg/jpos/iso/ISOVMsg;-><init>(Lorg/jpos/iso/ISOMsg;Lorg/jpos/iso/ISOVError;)V

    move-object v1, v4

    .line 67
    :goto_0
    iget-boolean v4, p0, Lorg/jpos/iso/validator/MSGTEST;->breakOnError:Z

    if-nez v4, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    new-instance v4, Lorg/jpos/iso/validator/ISOVException;

    const-string v5, "Error on msg. "

    invoke-direct {v4, v5, v1}, Lorg/jpos/iso/validator/ISOVException;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v3    # "e":Lorg/jpos/iso/ISOVError;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_2
    :goto_1
    nop

    .line 72
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 70
    return-object v1

    .line 72
    .end local v1    # "msg":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "validFields":[I
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 73
    throw v1
.end method
