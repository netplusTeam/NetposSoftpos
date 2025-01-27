.class public Lcom/sleepycat/je/rep/MasterReplicaTransitionException;
.super Lcom/sleepycat/je/rep/RestartRequiredException;
.source "MasterReplicaTransitionException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 42
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->MASTER_TO_REPLICA_TRANSITION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Exception;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/MasterReplicaTransitionException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/MasterReplicaTransitionException;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/RestartRequiredException;)V

    .line 55
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/sleepycat/je/rep/MasterReplicaTransitionException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/MasterReplicaTransitionException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/MasterReplicaTransitionException;)V

    return-object v0
.end method
