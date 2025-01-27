.class public Lcom/sleepycat/je/txn/LockInfo;
.super Ljava/lang/Object;
.source "LockInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/txn/LockInfo$StackTraceAtLockTime;
    }
.end annotation


# static fields
.field private static deadlockStackTrace:Z

.field private static traceExceptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            "Lcom/sleepycat/je/txn/LockInfo$StackTraceAtLockTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected lockType:Lcom/sleepycat/je/txn/LockType;

.field protected locker:Lcom/sleepycat/je/txn/Locker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sleepycat/je/txn/LockInfo;->deadlockStackTrace:Z

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/txn/LockInfo;->traceExceptionMap:Ljava/util/Map;

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/txn/LockInfo;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/txn/LockInfo;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget-object v0, p1, Lcom/sleepycat/je/txn/LockInfo;->locker:Lcom/sleepycat/je/txn/Locker;

    iput-object v0, p0, Lcom/sleepycat/je/txn/LockInfo;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 73
    iget-object v0, p1, Lcom/sleepycat/je/txn/LockInfo;->lockType:Lcom/sleepycat/je/txn/LockType;

    iput-object v0, p0, Lcom/sleepycat/je/txn/LockInfo;->lockType:Lcom/sleepycat/je/txn/LockType;

    .line 75
    sget-boolean v0, Lcom/sleepycat/je/txn/LockInfo;->deadlockStackTrace:Z

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/sleepycat/je/txn/LockInfo;->traceExceptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)V
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockInfo;->locker:Lcom/sleepycat/je/txn/Locker;

    .line 59
    iput-object p2, p0, Lcom/sleepycat/je/txn/LockInfo;->lockType:Lcom/sleepycat/je/txn/LockType;

    .line 61
    sget-boolean v0, Lcom/sleepycat/je/txn/LockInfo;->deadlockStackTrace:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/sleepycat/je/txn/LockInfo;->traceExceptionMap:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/je/txn/LockInfo$StackTraceAtLockTime;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sleepycat/je/txn/LockInfo$StackTraceAtLockTime;-><init>(Lcom/sleepycat/je/txn/LockInfo$1;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    return-void
.end method

.method public static getDeadlockStackTrace()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/sleepycat/je/txn/LockInfo;->deadlockStackTrace:Z

    return v0
.end method

.method static setDeadlockStackTrace(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 44
    sput-boolean p0, Lcom/sleepycat/je/txn/LockInfo;->deadlockStackTrace:Z

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/txn/LockInfo;
    .locals 2

    .line 104
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/LockInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/LockInfo;->clone()Lcom/sleepycat/je/txn/LockInfo;

    move-result-object v0

    return-object v0
.end method

.method public dump()V
    .locals 1

    .line 114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method getLockType()Lcom/sleepycat/je/txn/LockType;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockInfo;->lockType:Lcom/sleepycat/je/txn/LockType;

    return-object v0
.end method

.method public getLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockInfo;->locker:Lcom/sleepycat/je/txn/Locker;

    return-object v0
.end method

.method setLockType(Lcom/sleepycat/je/txn/LockType;)V
    .locals 0
    .param p1, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 91
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockInfo;->lockType:Lcom/sleepycat/je/txn/LockType;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<LockInfo locker=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockInfo;->locker:Lcom/sleepycat/je/txn/Locker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "\" type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockInfo;->lockType:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    sget-boolean v1, Lcom/sleepycat/je/txn/LockInfo;->deadlockStackTrace:Z

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/sleepycat/je/txn/LockInfo;->traceExceptionMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    .line 129
    .local v1, "traceException":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 130
    const-string v2, " lock taken at: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .end local v1    # "traceException":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
