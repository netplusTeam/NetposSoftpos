.class public Lorg/jpos/transaction/participant/HasEntry;
.super Ljava/lang/Object;
.source "HasEntry.java"

# interfaces
.implements Lorg/jpos/transaction/GroupSelector;
.implements Lorg/jpos/core/Configurable;


# static fields
.field public static final NO:Ljava/lang/String; = "no"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final YES:Ljava/lang/String; = "yes"


# instance fields
.field private cfg:Lorg/jpos/core/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 50
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 49
    return-void
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 41
    const/16 v0, 0xc1

    return v0
.end method

.method public select(JLjava/io/Serializable;)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # J
    .param p3, "ser"    # Ljava/io/Serializable;

    .line 44
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 45
    .local v0, "ctx":Lorg/jpos/transaction/Context;
    iget-object v1, p0, Lorg/jpos/transaction/participant/HasEntry;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "name"

    invoke-interface {v1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "yes"

    goto :goto_0

    :cond_0
    const-string v2, "no"

    .line 47
    .local v2, "action":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/jpos/transaction/participant/HasEntry;->cfg:Lorg/jpos/core/Configuration;

    const-string v4, "UNKNOWN"

    invoke-interface {v3, v2, v4}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 52
    iput-object p1, p0, Lorg/jpos/transaction/participant/HasEntry;->cfg:Lorg/jpos/core/Configuration;

    .line 53
    return-void
.end method
