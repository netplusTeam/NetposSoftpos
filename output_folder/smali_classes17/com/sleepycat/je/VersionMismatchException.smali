.class public Lcom/sleepycat/je/VersionMismatchException;
.super Lcom/sleepycat/je/EnvironmentFailureException;
.source "VersionMismatchException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "message"    # Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->VERSION_MISMATCH:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/VersionMismatchException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/VersionMismatchException;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentFailureException;)V

    .line 49
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/sleepycat/je/VersionMismatchException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/VersionMismatchException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/VersionMismatchException;)V

    return-object v0
.end method
