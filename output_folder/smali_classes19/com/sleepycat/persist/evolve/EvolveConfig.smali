.class public Lcom/sleepycat/persist/evolve/EvolveConfig;
.super Ljava/lang/Object;
.source "EvolveConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private classesToEvolve:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private evolveListener:Lcom/sleepycat/persist/evolve/EvolveListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/evolve/EvolveConfig;->classesToEvolve:Ljava/util/Set;

    .line 39
    return-void
.end method


# virtual methods
.method public addClassToEvolve(Ljava/lang/String;)Lcom/sleepycat/persist/evolve/EvolveConfig;
    .locals 1
    .param p1, "entityClass"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/EvolveConfig;->classesToEvolve:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    return-object p0
.end method

.method public clone()Lcom/sleepycat/persist/evolve/EvolveConfig;
    .locals 2

    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/evolve/EvolveConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "cannotHappen":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/sleepycat/persist/evolve/EvolveConfig;->clone()Lcom/sleepycat/persist/evolve/EvolveConfig;

    move-result-object v0

    return-object v0
.end method

.method public cloneConfig()Lcom/sleepycat/persist/evolve/EvolveConfig;
    .locals 2

    .line 51
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/evolve/EvolveConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "cannotHappen":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getClassesToEvolve()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/EvolveConfig;->classesToEvolve:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEvolveListener()Lcom/sleepycat/persist/evolve/EvolveListener;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/EvolveConfig;->evolveListener:Lcom/sleepycat/persist/evolve/EvolveListener;

    return-object v0
.end method

.method public setEvolveListener(Lcom/sleepycat/persist/evolve/EvolveListener;)Lcom/sleepycat/persist/evolve/EvolveConfig;
    .locals 0
    .param p1, "listener"    # Lcom/sleepycat/persist/evolve/EvolveListener;

    .line 99
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/evolve/EvolveConfig;->setEvolveListenerVoid(Lcom/sleepycat/persist/evolve/EvolveListener;)V

    .line 100
    return-object p0
.end method

.method public setEvolveListenerVoid(Lcom/sleepycat/persist/evolve/EvolveListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sleepycat/persist/evolve/EvolveListener;

    .line 112
    iput-object p1, p0, Lcom/sleepycat/persist/evolve/EvolveConfig;->evolveListener:Lcom/sleepycat/persist/evolve/EvolveListener;

    .line 113
    return-void
.end method
