.class public Lorg/jpos/bsh/BSHFilter;
.super Ljava/lang/Object;
.source "BSHFilter.java"

# interfaces
.implements Lorg/jpos/iso/RawIncomingFilter;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field cfg:Lorg/jpos/core/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 6
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 54
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/bsh/BSHFilter;->filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;[B[BLorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;[B[BLorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 8
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "header"    # [B
    .param p4, "image"    # [B
    .param p5, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 60
    const-string v0, "message"

    iget-object v1, p0, Lorg/jpos/bsh/BSHFilter;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "source"

    invoke-interface {v1, v2}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "source":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 63
    .local v4, "aSource":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lbsh/Interpreter;

    invoke-direct {v5}, Lbsh/Interpreter;-><init>()V

    .line 64
    .local v5, "bsh":Lbsh/Interpreter;
    const-string v6, "channel"

    invoke-virtual {v5, v6, p1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v5, v0, p2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    if-eqz p3, :cond_0

    .line 67
    const-string v6, "header"

    invoke-virtual {v5, v6, p3}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_0
    if-eqz p4, :cond_1

    .line 69
    const-string v6, "image"

    invoke-virtual {v5, v6, p4}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    :cond_1
    const-string v6, "evt"

    invoke-virtual {v5, v6, p5}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v6, "cfg"

    iget-object v7, p0, Lorg/jpos/bsh/BSHFilter;->cfg:Lorg/jpos/core/Configuration;

    invoke-virtual {v5, v6, v7}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v5, v4}, Lbsh/Interpreter;->source(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 73
    .local v6, "r":Ljava/lang/Object;
    instance-of v7, v6, Lorg/jpos/iso/ISOMsg;

    if-eqz v7, :cond_2

    .line 74
    move-object v7, v6

    check-cast v7, Lorg/jpos/iso/ISOMsg;

    move-object p2, v7

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v5, v0}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jpos/iso/ISOMsg;
    :try_end_0
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v7

    .line 84
    .end local v5    # "bsh":Lbsh/Interpreter;
    .end local v6    # "r":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 80
    :catch_0
    move-exception v5

    .line 81
    .local v5, "e":Ljava/lang/Exception;
    instance-of v6, v5, Lorg/jpos/iso/ISOFilter$VetoException;

    if-nez v6, :cond_3

    .line 82
    invoke-virtual {p5, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_2

    .line 81
    :cond_3
    move-object v0, v5

    check-cast v0, Lorg/jpos/iso/ISOFilter$VetoException;

    throw v0

    .line 77
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 78
    .local v5, "e":Lbsh/TargetError;
    invoke-virtual {v5}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Lorg/jpos/iso/ISOFilter$VetoException;

    if-nez v6, :cond_4

    .end local v5    # "e":Lbsh/TargetError;
    goto :goto_1

    .line 61
    .end local v4    # "aSource":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .restart local v4    # "aSource":Ljava/lang/String;
    .restart local v5    # "e":Lbsh/TargetError;
    :cond_4
    invoke-virtual {v5}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOFilter$VetoException;

    throw v0

    .line 86
    .end local v4    # "aSource":Ljava/lang/String;
    .end local v5    # "e":Lbsh/TargetError;
    :cond_5
    return-object p2
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lorg/jpos/bsh/BSHFilter;->cfg:Lorg/jpos/core/Configuration;

    .line 51
    return-void
.end method
