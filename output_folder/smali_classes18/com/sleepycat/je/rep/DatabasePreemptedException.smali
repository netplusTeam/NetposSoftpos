.class public Lcom/sleepycat/je/rep/DatabasePreemptedException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "DatabasePreemptedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final dbHandle:Lcom/sleepycat/je/Database;

.field private final dbName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/DatabasePreemptedException;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/DatabasePreemptedException;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 89
    iget-object v0, p2, Lcom/sleepycat/je/rep/DatabasePreemptedException;->dbName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/je/rep/DatabasePreemptedException;->dbName:Ljava/lang/String;

    .line 90
    iget-object v0, p2, Lcom/sleepycat/je/rep/DatabasePreemptedException;->dbHandle:Lcom/sleepycat/je/Database;

    iput-object v0, p0, Lcom/sleepycat/je/rep/DatabasePreemptedException;->dbHandle:Lcom/sleepycat/je/Database;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "dbHandle"    # Lcom/sleepycat/je/Database;

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v0}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    iput-object p2, p0, Lcom/sleepycat/je/rep/DatabasePreemptedException;->dbName:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/sleepycat/je/rep/DatabasePreemptedException;->dbHandle:Lcom/sleepycat/je/Database;

    .line 80
    return-void
.end method


# virtual methods
.method public getDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/rep/DatabasePreemptedException;->dbHandle:Lcom/sleepycat/je/Database;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sleepycat/je/rep/DatabasePreemptedException;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/sleepycat/je/rep/DatabasePreemptedException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/DatabasePreemptedException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/DatabasePreemptedException;)V

    return-object v0
.end method
