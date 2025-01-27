.class public Lcom/sleepycat/je/SecondaryIntegrityException;
.super Lcom/sleepycat/je/SecondaryReferenceException;
.source "SecondaryIntegrityException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V
    .locals 13
    .param p1, "secDb"    # Lcom/sleepycat/je/Database;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "secDbName"    # Ljava/lang/String;
    .param p5, "priDbName"    # Ljava/lang/String;
    .param p6, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p7, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p8, "priLsn"    # J
    .param p10, "expirationTime"    # J
    .param p12, "extinctionStatus"    # Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    .line 83
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    invoke-direct/range {v1 .. v12}, Lcom/sleepycat/je/SecondaryReferenceException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    .line 86
    if-eqz v0, :cond_0

    .line 87
    move-object v1, p0

    invoke-virtual {p1, p0}, Lcom/sleepycat/je/Database;->setCorrupted(Lcom/sleepycat/je/SecondaryIntegrityException;)V

    goto :goto_0

    .line 86
    :cond_0
    move-object v1, p0

    .line 89
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/SecondaryIntegrityException;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/SecondaryIntegrityException;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/SecondaryReferenceException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/SecondaryReferenceException;)V

    .line 98
    return-void
.end method


# virtual methods
.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/sleepycat/je/SecondaryIntegrityException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/SecondaryIntegrityException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/SecondaryIntegrityException;)V

    return-object v0
.end method
