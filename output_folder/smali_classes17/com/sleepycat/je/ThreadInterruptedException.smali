.class public Lcom/sleepycat/je/ThreadInterruptedException;
.super Lcom/sleepycat/je/EnvironmentFailureException;
.source "ThreadInterruptedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "message"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->THREAD_INTERRUPTED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 87
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->THREAD_INTERRUPTED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 69
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->THREAD_INTERRUPTED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/ThreadInterruptedException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/ThreadInterruptedException;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentFailureException;)V

    .line 97
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/sleepycat/je/ThreadInterruptedException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/ThreadInterruptedException;)V

    return-object v0
.end method
