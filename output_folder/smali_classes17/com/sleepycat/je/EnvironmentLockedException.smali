.class public Lcom/sleepycat/je/EnvironmentLockedException;
.super Lcom/sleepycat/je/EnvironmentFailureException;
.source "EnvironmentLockedException.java"


# static fields
.field private static final serialVersionUID:J = 0x2586db54L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "message"    # Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->ENV_LOCKED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentLockedException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/EnvironmentLockedException;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentFailureException;)V

    .line 47
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/sleepycat/je/EnvironmentLockedException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/EnvironmentLockedException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentLockedException;)V

    return-object v0
.end method
