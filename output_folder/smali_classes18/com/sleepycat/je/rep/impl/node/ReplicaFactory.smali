.class public Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;
.super Ljava/lang/Object;
.source "ReplicaFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;
    }
.end annotation


# static fields
.field private static statsInterval:J

.field private static type:Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;->DEFAULT:Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->type:Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->statsInterval:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 24
    sget-wide v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->statsInterval:J

    return-wide v0
.end method

.method public static create(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/rep/impl/node/Replica;
    .locals 2
    .param p0, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p1, "replay"    # Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 42
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$2;->$SwitchMap$com$sleepycat$je$rep$impl$node$ReplicaFactory$ReplicaType:[I

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->type:Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type passed to makeReplica: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->type:Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 52
    :pswitch_0
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$1;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Replay;)V

    return-object v0

    .line 44
    :pswitch_1
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/rep/impl/node/Replica;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Replay;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setReplicaType(Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;)V
    .locals 0
    .param p0, "t"    # Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    .line 34
    sput-object p0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->type:Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    .line 35
    return-void
.end method

.method public static setStatsInterval(J)V
    .locals 0
    .param p0, "interval"    # J

    .line 38
    sput-wide p0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->statsInterval:J

    .line 39
    return-void
.end method
