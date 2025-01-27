.class public Lcom/sleepycat/je/DeleteConstraintException;
.super Lcom/sleepycat/je/SecondaryConstraintException;
.source "DeleteConstraintException.java"


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

    .line 62
    invoke-direct/range {p0 .. p11}, Lcom/sleepycat/je/SecondaryConstraintException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/DeleteConstraintException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/DeleteConstraintException;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/SecondaryConstraintException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/SecondaryReferenceException;)V

    .line 73
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/sleepycat/je/DeleteConstraintException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/DeleteConstraintException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/DeleteConstraintException;)V

    return-object v0
.end method
