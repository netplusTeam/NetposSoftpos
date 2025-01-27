.class public abstract Lcom/sleepycat/je/rep/RestartRequiredException;
.super Lcom/sleepycat/je/EnvironmentFailureException;
.source "RestartRequiredException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .param p3, "cause"    # Ljava/lang/Exception;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "reason"    # Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .param p3, "msg"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/RestartRequiredException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/RestartRequiredException;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentFailureException;)V

    .line 71
    return-void
.end method


# virtual methods
.method public abstract wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
.end method
