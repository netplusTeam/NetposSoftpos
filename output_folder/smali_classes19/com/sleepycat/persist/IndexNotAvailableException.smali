.class public Lcom/sleepycat/persist/IndexNotAvailableException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "IndexNotAvailableException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/OperationFailureException;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 74
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/sleepycat/persist/IndexNotAvailableException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/persist/IndexNotAvailableException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    return-object v0
.end method
