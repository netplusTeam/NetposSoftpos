.class public Lorg/jpos/iso/packager/CTCSubFieldPackager;
.super Lorg/jpos/iso/packager/ISOBaseValidatingPackager;
.source "CTCSubFieldPackager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method protected emitBitMap()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v0

    .line 49
    .local v0, "tab":Ljava/util/Map;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jpos/iso/packager/CTCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOField;

    .line 52
    .local v3, "f":Lorg/jpos/iso/ISOField;
    if-eqz v3, :cond_0

    .line 53
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/jpos/iso/packager/CTCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v5, v5, v2

    invoke-virtual {v5, v3}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .end local v3    # "f":Lorg/jpos/iso/ISOField;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 58
    .end local v0    # "tab":Ljava/util/Map;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jpos/iso/packager/CTCSubFieldPackager;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

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

    .line 64
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 65
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    const/4 v1, 0x0

    .line 66
    .local v1, "consumed":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 67
    iget-object v3, p0, Lorg/jpos/iso/packager/CTCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v3

    .line 68
    .local v3, "c":Lorg/jpos/iso/ISOComponent;
    iget-object v4, p0, Lorg/jpos/iso/packager/CTCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3, p2, v1}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v4

    add-int/2addr v1, v4

    .line 69
    iget-object v4, p0, Lorg/jpos/iso/packager/CTCSubFieldPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v4, :cond_0

    .line 70
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

    iget-object v5, p0, Lorg/jpos/iso/packager/CTCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v5, v5, v2

    .line 72
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

    .line 70
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  <value>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 74
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

    .line 73
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 76
    const-string v4, "</unpack>"

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 66
    .end local v3    # "c":Lorg/jpos/iso/ISOComponent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_1
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 81
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

    .line 93
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "validate"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 95
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v1

    .line 96
    .local v1, "tab":Ljava/util/Map;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jpos/iso/packager/CTCSubFieldPackager;->fldVld:[Lorg/jpos/iso/ISOValidator;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOField;

    .line 98
    .local v3, "f":Lorg/jpos/iso/ISOField;
    if-eqz v3, :cond_0

    .line 99
    iget-object v4, p0, Lorg/jpos/iso/packager/CTCSubFieldPackager;->fldVld:[Lorg/jpos/iso/ISOValidator;

    aget-object v4, v4, v2

    invoke-interface {v4, v3}, Lorg/jpos/iso/ISOValidator;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_0
    .catch Lorg/jpos/iso/validator/ISOVException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v3    # "f":Lorg/jpos/iso/ISOField;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    :cond_1
    nop

    .line 110
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 101
    return-object p1

    .line 110
    .end local v1    # "tab":Ljava/util/Map;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "ex":Lorg/jpos/iso/validator/ISOVException;
    :try_start_1
    invoke-virtual {v1}, Lorg/jpos/iso/validator/ISOVException;->treated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    invoke-virtual {v1}, Lorg/jpos/iso/validator/ISOVException;->getErrComponent()Lorg/jpos/iso/ISOComponent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 105
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jpos/iso/validator/ISOVException;->setTreated(Z)V

    .line 107
    :cond_2
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 108
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v1    # "ex":Lorg/jpos/iso/validator/ISOVException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :goto_1
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 111
    throw v1
.end method
