.class public Lcom/sleepycat/je/rep/StateChangeEvent;
.super Ljava/lang/Object;
.source "StateChangeEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final eventTime:J

.field private final masterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final state:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 3
    .param p1, "state"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .param p2, "masterNameId"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/StateChangeEvent;->eventTime:J

    .line 52
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->REPLICA:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " masterId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 55
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/StateChangeEvent;->state:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 56
    iput-object p2, p0, Lcom/sleepycat/je/rep/StateChangeEvent;->masterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 57
    return-void
.end method


# virtual methods
.method public getEventTime()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/sleepycat/je/rep/StateChangeEvent;->eventTime:J

    return-wide v0
.end method

.method public getMasterNodeName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/sleepycat/je/rep/StateChangeEvent;->state:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/rep/StateChangeEvent;->state:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->REPLICA:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No current master in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/StateChangeEvent;->state:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/StateChangeEvent;->masterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sleepycat/je/rep/StateChangeEvent;->state:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    return-object v0
.end method
