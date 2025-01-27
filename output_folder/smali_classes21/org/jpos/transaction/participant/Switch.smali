.class public Lorg/jpos/transaction/participant/Switch;
.super Ljava/lang/Object;
.source "Switch.java"

# interfaces
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/transaction/GroupSelector;


# instance fields
.field private cfg:Lorg/jpos/core/Configuration;

.field private txnNameEntry:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prepare(JLjava/io/Serializable;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 45
    const/16 v0, 0xc1

    return v0
.end method

.method public select(JLjava/io/Serializable;)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # J
    .param p3, "ser"    # Ljava/io/Serializable;

    .line 33
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 34
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    iget-object v1, p0, Lorg/jpos/transaction/participant/Switch;->txnNameEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jpos/transaction/Context;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 36
    .local v2, "groups":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 37
    iget-object v3, p0, Lorg/jpos/transaction/participant/Switch;->cfg:Lorg/jpos/core/Configuration;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    :cond_0
    if-nez v2, :cond_1

    .line 39
    iget-object v3, p0, Lorg/jpos/transaction/participant/Switch;->cfg:Lorg/jpos/core/Configuration;

    const-string v4, "unknown"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SWITCH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jpos/transaction/Context;->log(Ljava/lang/Object;)V

    .line 42
    return-object v2
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 48
    iput-object p1, p0, Lorg/jpos/transaction/participant/Switch;->cfg:Lorg/jpos/core/Configuration;

    .line 49
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->TXNNAME:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "txnname"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/participant/Switch;->txnNameEntry:Ljava/lang/String;

    .line 50
    return-void
.end method
