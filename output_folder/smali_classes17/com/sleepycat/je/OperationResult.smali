.class public Lcom/sleepycat/je/OperationResult;
.super Ljava/lang/Object;
.source "OperationResult.java"


# instance fields
.field private final expirationTime:J

.field private final update:Z


# direct methods
.method constructor <init>(JZ)V
    .locals 0
    .param p1, "expirationTime"    # J
    .param p3, "update"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/sleepycat/je/OperationResult;->expirationTime:J

    .line 39
    iput-boolean p3, p0, Lcom/sleepycat/je/OperationResult;->update:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/sleepycat/je/OperationResult;->expirationTime:J

    return-wide v0
.end method

.method public isUpdate()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/sleepycat/je/OperationResult;->update:Z

    return v0
.end method
