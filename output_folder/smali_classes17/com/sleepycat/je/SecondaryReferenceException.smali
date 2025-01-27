.class public abstract Lcom/sleepycat/je/SecondaryReferenceException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "SecondaryReferenceException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final expirationTime:J

.field private final priDbName:Ljava/lang/String;

.field private final priKey:Lcom/sleepycat/je/DatabaseEntry;

.field private final priLsn:J

.field private final secDbName:Ljava/lang/String;

.field private final secKey:Lcom/sleepycat/je/DatabaseEntry;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "secDbName"    # Ljava/lang/String;
    .param p4, "priDbName"    # Ljava/lang/String;
    .param p5, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p7, "priLsn"    # J
    .param p9, "expirationTime"    # J
    .param p11, "extinctionStatus"    # Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    .line 60
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    iput-object p4, p0, Lcom/sleepycat/je/SecondaryReferenceException;->priDbName:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/sleepycat/je/SecondaryReferenceException;->secDbName:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/sleepycat/je/SecondaryReferenceException;->secKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 64
    iput-object p6, p0, Lcom/sleepycat/je/SecondaryReferenceException;->priKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 65
    iput-wide p7, p0, Lcom/sleepycat/je/SecondaryReferenceException;->priLsn:J

    .line 66
    iput-wide p9, p0, Lcom/sleepycat/je/SecondaryReferenceException;->expirationTime:J

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "secDbName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " priDbName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p9, v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p9, p10}, Lcom/sleepycat/je/dbi/TTL;->formatExpirationTime(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p11, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " priLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-static {p7, p8}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/SecondaryReferenceException;->addErrorMessage(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->getEnvironment()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExposeUserData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "unknown"

    if-eqz p6, :cond_2

    .line 79
    invoke-virtual {p6}, Lcom/sleepycat/je/DatabaseEntry;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " secKey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p5, :cond_3

    .line 81
    invoke-virtual {p5}, Lcom/sleepycat/je/DatabaseEntry;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/SecondaryReferenceException;->addErrorMessage(Ljava/lang/String;)V

    .line 83
    :cond_4
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/SecondaryReferenceException;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/SecondaryReferenceException;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 92
    iget-object v0, p2, Lcom/sleepycat/je/SecondaryReferenceException;->priDbName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->priDbName:Ljava/lang/String;

    .line 93
    iget-object v0, p2, Lcom/sleepycat/je/SecondaryReferenceException;->secDbName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->secDbName:Ljava/lang/String;

    .line 94
    iget-object v0, p2, Lcom/sleepycat/je/SecondaryReferenceException;->secKey:Lcom/sleepycat/je/DatabaseEntry;

    iput-object v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->secKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 95
    iget-object v0, p2, Lcom/sleepycat/je/SecondaryReferenceException;->priKey:Lcom/sleepycat/je/DatabaseEntry;

    iput-object v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->priKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 96
    iget-wide v0, p2, Lcom/sleepycat/je/SecondaryReferenceException;->priLsn:J

    iput-wide v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->priLsn:J

    .line 97
    iget-wide v0, p2, Lcom/sleepycat/je/SecondaryReferenceException;->expirationTime:J

    iput-wide v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->expirationTime:J

    .line 98
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->expirationTime:J

    return-wide v0
.end method

.method public getPrimaryDatabaseName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->priDbName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryKey()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->priKey:Lcom/sleepycat/je/DatabaseEntry;

    return-object v0
.end method

.method public getPrimaryLsn()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->priLsn:J

    return-wide v0
.end method

.method public getSecondaryDatabaseName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->secDbName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryKey()Lcom/sleepycat/je/DatabaseEntry;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryReferenceException;->secKey:Lcom/sleepycat/je/DatabaseEntry;

    return-object v0
.end method
