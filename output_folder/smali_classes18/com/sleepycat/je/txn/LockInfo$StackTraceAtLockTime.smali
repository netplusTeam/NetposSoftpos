.class Lcom/sleepycat/je/txn/LockInfo$StackTraceAtLockTime;
.super Ljava/lang/Exception;
.source "LockInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/txn/LockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackTraceAtLockTime"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/txn/LockInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/txn/LockInfo$1;

    .line 38
    invoke-direct {p0}, Lcom/sleepycat/je/txn/LockInfo$StackTraceAtLockTime;-><init>()V

    return-void
.end method
