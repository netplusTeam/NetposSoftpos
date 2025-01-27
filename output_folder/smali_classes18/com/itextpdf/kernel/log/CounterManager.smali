.class public Lcom/itextpdf/kernel/log/CounterManager;
.super Ljava/lang/Object;
.source "CounterManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static instance:Lcom/itextpdf/kernel/log/CounterManager;


# instance fields
.field private factories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/log/ICounterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/itextpdf/kernel/log/CounterManager;

    invoke-direct {v0}, Lcom/itextpdf/kernel/log/CounterManager;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/log/CounterManager;->instance:Lcom/itextpdf/kernel/log/CounterManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/log/CounterManager;->factories:Ljava/util/Set;

    .line 79
    return-void
.end method

.method public static getInstance()Lcom/itextpdf/kernel/log/CounterManager;
    .locals 1

    .line 86
    sget-object v0, Lcom/itextpdf/kernel/log/CounterManager;->instance:Lcom/itextpdf/kernel/log/CounterManager;

    return-object v0
.end method


# virtual methods
.method public getCounters(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/log/ICounter;",
            ">;"
        }
    .end annotation

    .line 95
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/kernel/log/ICounter;>;"
    iget-object v1, p0, Lcom/itextpdf/kernel/log/CounterManager;->factories:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/log/ICounterFactory;

    .line 97
    .local v2, "factory":Lcom/itextpdf/kernel/log/ICounterFactory;
    invoke-interface {v2, p1}, Lcom/itextpdf/kernel/log/ICounterFactory;->getCounter(Ljava/lang/Class;)Lcom/itextpdf/kernel/log/ICounter;

    move-result-object v3

    .line 98
    .local v3, "counter":Lcom/itextpdf/kernel/log/ICounter;
    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "factory":Lcom/itextpdf/kernel/log/ICounterFactory;
    .end local v3    # "counter":Lcom/itextpdf/kernel/log/ICounter;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    return-object v0
.end method

.method public register(Lcom/itextpdf/kernel/log/ICounterFactory;)V
    .locals 1
    .param p1, "factory"    # Lcom/itextpdf/kernel/log/ICounterFactory;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/itextpdf/kernel/log/CounterManager;->factories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    return-void
.end method

.method public unregister(Lcom/itextpdf/kernel/log/ICounterFactory;)Z
    .locals 1
    .param p1, "factory"    # Lcom/itextpdf/kernel/log/ICounterFactory;

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/itextpdf/kernel/log/CounterManager;->factories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
