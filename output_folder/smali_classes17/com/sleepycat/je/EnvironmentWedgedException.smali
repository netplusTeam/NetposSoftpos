.class public Lcom/sleepycat/je/EnvironmentWedgedException;
.super Lcom/sleepycat/je/EnvironmentFailureException;
.source "EnvironmentWedgedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "message"    # Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->WEDGED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentWedgedException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/EnvironmentWedgedException;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentFailureException;)V

    .line 69
    return-void
.end method


# virtual methods
.method public bridge synthetic wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/EnvironmentWedgedException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentWedgedException;

    move-result-object p1

    return-object p1
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentWedgedException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/sleepycat/je/EnvironmentWedgedException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/EnvironmentWedgedException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentWedgedException;)V

    return-object v0
.end method
