.class public Lorg/jpos/iso/validator/MSGTEST02;
.super Lorg/jpos/iso/ISOBaseValidator;
.source "MSGTEST02.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/jpos/iso/ISOBaseValidator;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "breakOnError"    # Z

    .line 43
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOBaseValidator;-><init>(Z)V

    .line 44
    return-void
.end method

.method private makeStrFromArray([I)Ljava/lang/String;
    .locals 5
    .param p1, "validFields"    # [I

    .line 47
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "result":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 50
    .local v3, "validField":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .end local v3    # "validField":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;
    .locals 9
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "validate"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 60
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOBaseValidator;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    .line 61
    move-object v1, p1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 62
    .local v1, "msg":Lorg/jpos/iso/ISOMsg;
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput v4, v2, v4

    .line 63
    .local v2, "validFields":[I
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->hasFields([I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "Error on msg. "

    if-nez v5, :cond_2

    .line 64
    :try_start_1
    new-instance v5, Lorg/jpos/iso/ISOVError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fields "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2}, Lorg/jpos/iso/validator/MSGTEST02;->makeStrFromArray([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " must appear in msg."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "002"

    invoke-direct {v5, v7, v8}, Lorg/jpos/iso/ISOVError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v5, "e":Lorg/jpos/iso/ISOVError;
    instance-of v7, v1, Lorg/jpos/iso/ISOVMsg;

    if-eqz v7, :cond_0

    .line 66
    move-object v7, v1

    check-cast v7, Lorg/jpos/iso/ISOVMsg;

    invoke-virtual {v7, v5}, Lorg/jpos/iso/ISOVMsg;->addISOVError(Lorg/jpos/iso/ISOVError;)Z

    goto :goto_0

    .line 68
    :cond_0
    new-instance v7, Lorg/jpos/iso/ISOVMsg;

    invoke-direct {v7, v1, v5}, Lorg/jpos/iso/ISOVMsg;-><init>(Lorg/jpos/iso/ISOMsg;Lorg/jpos/iso/ISOVError;)V

    move-object v1, v7

    .line 69
    :goto_0
    iget-boolean v7, p0, Lorg/jpos/iso/validator/MSGTEST02;->breakOnError:Z

    if-nez v7, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    new-instance v3, Lorg/jpos/iso/validator/ISOVException;

    invoke-direct {v3, v6, v1}, Lorg/jpos/iso/validator/ISOVException;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v3

    .line 73
    .end local v5    # "e":Lorg/jpos/iso/ISOVError;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v4}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 74
    new-instance v3, Lorg/jpos/iso/ISOVError;

    const-string v4, "If field 0 ends with 1 then field 1 must end with 0."

    const-string v5, "003"

    invoke-direct {v3, v4, v5}, Lorg/jpos/iso/ISOVError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v3, "e":Lorg/jpos/iso/ISOVError;
    instance-of v4, v1, Lorg/jpos/iso/ISOVMsg;

    if-eqz v4, :cond_3

    .line 76
    move-object v4, v1

    check-cast v4, Lorg/jpos/iso/ISOVMsg;

    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOVMsg;->addISOVError(Lorg/jpos/iso/ISOVError;)Z

    goto :goto_2

    .line 78
    :cond_3
    new-instance v4, Lorg/jpos/iso/ISOVMsg;

    invoke-direct {v4, v1, v3}, Lorg/jpos/iso/ISOVMsg;-><init>(Lorg/jpos/iso/ISOMsg;Lorg/jpos/iso/ISOVError;)V

    move-object v1, v4

    .line 79
    :goto_2
    iget-boolean v4, p0, Lorg/jpos/iso/validator/MSGTEST02;->breakOnError:Z

    if-nez v4, :cond_4

    goto :goto_3

    .line 80
    :cond_4
    new-instance v4, Lorg/jpos/iso/validator/ISOVException;

    invoke-direct {v4, v6, v1}, Lorg/jpos/iso/validator/ISOVException;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v3    # "e":Lorg/jpos/iso/ISOVError;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_5
    :goto_3
    nop

    .line 84
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 82
    return-object v1

    .line 84
    .end local v1    # "msg":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "validFields":[I
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 85
    throw v1
.end method
