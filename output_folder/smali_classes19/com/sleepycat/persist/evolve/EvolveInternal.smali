.class public Lcom/sleepycat/persist/evolve/EvolveInternal;
.super Ljava/lang/Object;
.source "EvolveInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newEvent()Lcom/sleepycat/persist/evolve/EvolveEvent;
    .locals 1

    .line 32
    new-instance v0, Lcom/sleepycat/persist/evolve/EvolveEvent;

    invoke-direct {v0}, Lcom/sleepycat/persist/evolve/EvolveEvent;-><init>()V

    return-object v0
.end method

.method public static updateEvent(Lcom/sleepycat/persist/evolve/EvolveEvent;Ljava/lang/String;II)V
    .locals 1
    .param p0, "event"    # Lcom/sleepycat/persist/evolve/EvolveEvent;
    .param p1, "entityClassName"    # Ljava/lang/String;
    .param p2, "nRead"    # I
    .param p3, "nConverted"    # I

    .line 47
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/evolve/EvolveEvent;->update(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sleepycat/persist/evolve/EvolveEvent;->getStats()Lcom/sleepycat/persist/evolve/EvolveStats;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sleepycat/persist/evolve/EvolveStats;->add(II)V

    .line 49
    return-void
.end method
