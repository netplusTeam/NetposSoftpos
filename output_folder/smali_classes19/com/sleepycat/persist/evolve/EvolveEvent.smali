.class public Lcom/sleepycat/persist/evolve/EvolveEvent;
.super Ljava/lang/Object;
.source "EvolveEvent.java"


# instance fields
.field private entityClassName:Ljava/lang/String;

.field private stats:Lcom/sleepycat/persist/evolve/EvolveStats;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/sleepycat/persist/evolve/EvolveStats;

    invoke-direct {v0}, Lcom/sleepycat/persist/evolve/EvolveStats;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/evolve/EvolveEvent;->stats:Lcom/sleepycat/persist/evolve/EvolveStats;

    .line 30
    return-void
.end method


# virtual methods
.method public getEntityClassName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/EvolveEvent;->entityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getStats()Lcom/sleepycat/persist/evolve/EvolveStats;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/EvolveEvent;->stats:Lcom/sleepycat/persist/evolve/EvolveStats;

    return-object v0
.end method

.method update(Ljava/lang/String;)V
    .locals 0
    .param p1, "entityClassName"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/sleepycat/persist/evolve/EvolveEvent;->entityClassName:Ljava/lang/String;

    .line 34
    return-void
.end method
