.class public Lorg/jpos/iso/packager/ISOBaseValidatingPackager;
.super Lorg/jpos/iso/ISOBasePackager;
.source "ISOBaseValidatingPackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOValidator;


# instance fields
.field protected fldVld:[Lorg/jpos/iso/ISOValidator;

.field protected msgVld:[Lorg/jpos/iso/ISOBaseValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public setFieldValidator([Lorg/jpos/iso/ISOValidator;)V
    .locals 0
    .param p1, "fvlds"    # [Lorg/jpos/iso/ISOValidator;

    .line 90
    iput-object p1, p0, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;->fldVld:[Lorg/jpos/iso/ISOValidator;

    .line 91
    return-void
.end method

.method public setMsgValidator([Lorg/jpos/iso/ISOBaseValidator;)V
    .locals 0
    .param p1, "msgVlds"    # [Lorg/jpos/iso/ISOBaseValidator;

    .line 95
    iput-object p1, p0, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;->msgVld:[Lorg/jpos/iso/ISOBaseValidator;

    .line 96
    return-void
.end method

.method public validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;
    .locals 10
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "validate"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 49
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v1

    .line 51
    .local v1, "fields":Ljava/util/Map;
    iget-object v2, p0, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;->fldVld:[Lorg/jpos/iso/ISOValidator;

    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "Component Validation Error."

    if-ge v5, v3, :cond_2

    :try_start_1
    aget-object v7, v2, v5

    .line 52
    .local v7, "aFldVld":Lorg/jpos/iso/ISOValidator;
    if-eqz v7, :cond_1

    move-object v8, v7

    check-cast v8, Lorg/jpos/iso/ISOFieldValidator;

    invoke-virtual {v8}, Lorg/jpos/iso/ISOFieldValidator;->getFieldId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jpos/iso/ISOComponent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    .local v9, "c":Lorg/jpos/iso/ISOComponent;
    if-eqz v8, :cond_1

    .line 54
    :try_start_2
    invoke-interface {v7, v9}, Lorg/jpos/iso/ISOValidator;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_2
    .catch Lorg/jpos/iso/validator/ISOVException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    goto :goto_1

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Lorg/jpos/iso/validator/ISOVException;
    :try_start_3
    invoke-virtual {v2}, Lorg/jpos/iso/validator/ISOVException;->treated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    invoke-virtual {v2}, Lorg/jpos/iso/validator/ISOVException;->getErrComponent()Lorg/jpos/iso/ISOComponent;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 58
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/jpos/iso/validator/ISOVException;->setTreated(Z)V

    .line 60
    :cond_0
    invoke-virtual {v0, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 61
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    .end local v2    # "e":Lorg/jpos/iso/validator/ISOVException;
    .end local v7    # "aFldVld":Lorg/jpos/iso/ISOValidator;
    .end local v9    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    :cond_2
    :try_start_4
    iget-object v2, p0, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;->msgVld:[Lorg/jpos/iso/ISOBaseValidator;

    if-eqz v2, :cond_4

    .line 68
    array-length v3, v2

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 69
    .local v5, "aMsgVld":Lorg/jpos/iso/ISOBaseValidator;
    if-eqz v5, :cond_3

    .line 70
    invoke-virtual {v5, p1}, Lorg/jpos/iso/ISOBaseValidator;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v7
    :try_end_4
    .catch Lorg/jpos/iso/validator/ISOVException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object p1, v7

    .line 68
    .end local v5    # "aMsgVld":Lorg/jpos/iso/ISOBaseValidator;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 77
    :cond_4
    nop

    .line 78
    nop

    .line 81
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 78
    return-object p1

    .line 74
    :catch_1
    move-exception v2

    .line 75
    .local v2, "ex":Lorg/jpos/iso/validator/ISOVException;
    :try_start_5
    invoke-virtual {v0, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 76
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 81
    .end local v1    # "fields":Ljava/util/Map;
    .end local v2    # "ex":Lorg/jpos/iso/validator/ISOVException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 82
    throw v1
.end method
