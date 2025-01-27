.class public Lcom/sleepycat/je/EnvironmentNotFoundException;
.super Lcom/sleepycat/je/EnvironmentFailureException;
.source "EnvironmentNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "message"    # Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->ENV_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentNotFoundException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/EnvironmentNotFoundException;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentFailureException;)V

    .line 46
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/sleepycat/je/EnvironmentNotFoundException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/EnvironmentNotFoundException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentNotFoundException;)V

    return-object v0
.end method
