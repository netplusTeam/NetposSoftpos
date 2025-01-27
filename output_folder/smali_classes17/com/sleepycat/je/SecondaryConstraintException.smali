.class public abstract Lcom/sleepycat/je/SecondaryConstraintException;
.super Lcom/sleepycat/je/SecondaryReferenceException;
.source "SecondaryConstraintException.java"


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

    .line 49
    invoke-direct/range {p0 .. p11}, Lcom/sleepycat/je/SecondaryReferenceException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/SecondaryReferenceException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/SecondaryReferenceException;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/SecondaryReferenceException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/SecondaryReferenceException;)V

    .line 60
    return-void
.end method
