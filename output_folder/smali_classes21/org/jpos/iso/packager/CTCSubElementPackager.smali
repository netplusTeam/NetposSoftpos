.class public Lorg/jpos/iso/packager/CTCSubElementPackager;
.super Lorg/jpos/iso/packager/ISOBaseValidatingPackager;
.source "CTCSubElementPackager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected emitBitMap()Z
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 7
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v0

    .line 50
    .local v0, "tab":Ljava/util/Map;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jpos/iso/packager/CTCSubElementPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOMsg;

    .line 53
    .local v3, "f":Lorg/jpos/iso/ISOMsg;
    if-eqz v3, :cond_0

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/jpos/iso/ISOMsg;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/jpos/iso/packager/CTCSubElementPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v6, v6, v2

    invoke-virtual {v6, v3}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .end local v3    # "f":Lorg/jpos/iso/ISOMsg;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 59
    .end local v0    # "tab":Ljava/util/Map;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/iso/packager/CTCSubElementPackager;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 6
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 66
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    const/4 v1, 0x0

    .line 67
    .local v1, "consumed":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_2

    .line 68
    iget-object v3, p0, Lorg/jpos/iso/packager/CTCSubElementPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v3

    .line 69
    .local v3, "c":Lorg/jpos/iso/ISOComponent;
    iget-object v4, p0, Lorg/jpos/iso/packager/CTCSubElementPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3, p2, v1}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v4

    add-int/2addr v1, v4

    .line 70
    iget-object v4, p0, Lorg/jpos/iso/packager/CTCSubElementPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v4, :cond_1

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<unpack fld=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" packager=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jpos/iso/packager/CTCSubElementPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v5, v5, v2

    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v3}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/jpos/iso/ISOMsg;

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v3}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 77
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  <value>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 78
    invoke-virtual {v3}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</value>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 80
    :goto_1
    const-string v4, "</unpack>"

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 82
    :cond_1
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 67
    .end local v3    # "c":Lorg/jpos/iso/ISOComponent;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 84
    .end local v2    # "i":I
    :cond_2
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 85
    return v1
.end method

.method public validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "validate"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 99
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v1

    .line 100
    .local v1, "tab":Ljava/util/Map;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jpos/iso/packager/CTCSubElementPackager;->fldVld:[Lorg/jpos/iso/ISOValidator;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOMsg;

    .line 102
    .local v3, "f":Lorg/jpos/iso/ISOMsg;
    if-eqz v3, :cond_0

    .line 103
    iget-object v4, p0, Lorg/jpos/iso/packager/CTCSubElementPackager;->fldVld:[Lorg/jpos/iso/ISOValidator;

    aget-object v4, v4, v2

    invoke-interface {v4, v3}, Lorg/jpos/iso/ISOValidator;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_0
    .catch Lorg/jpos/iso/validator/ISOVException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v3    # "f":Lorg/jpos/iso/ISOMsg;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "i":I
    :cond_1
    nop

    .line 114
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 105
    return-object p1

    .line 114
    .end local v1    # "tab":Ljava/util/Map;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "ex":Lorg/jpos/iso/validator/ISOVException;
    :try_start_1
    invoke-virtual {v1}, Lorg/jpos/iso/validator/ISOVException;->treated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    invoke-virtual {v1}, Lorg/jpos/iso/validator/ISOVException;->getErrComponent()Lorg/jpos/iso/ISOComponent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jpos/iso/validator/ISOVException;->setTreated(Z)V

    .line 111
    :cond_2
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 112
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v1    # "ex":Lorg/jpos/iso/validator/ISOVException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :goto_1
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 115
    throw v1
.end method
