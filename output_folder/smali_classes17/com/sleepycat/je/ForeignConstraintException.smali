.class public Lcom/sleepycat/je/ForeignConstraintException;
.super Lcom/sleepycat/je/SecondaryConstraintException;
.source "ForeignConstraintException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V
    .locals 0
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "secDbName"    # Ljava/lang/String;
    .param p4, "priDbName"    # Ljava/lang/String;
    .param p5, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p7, "priLsn"    # J
    .param p9, "expirationTime"    # J
    .param p11, "extinctionStatus"    # Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    .line 57
    invoke-direct/range {p0 .. p11}, Lcom/sleepycat/je/SecondaryConstraintException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/ForeignConstraintException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/ForeignConstraintException;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/SecondaryConstraintException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/SecondaryReferenceException;)V

    .line 68
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/sleepycat/je/ForeignConstraintException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/ForeignConstraintException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/ForeignConstraintException;)V

    return-object v0
.end method
