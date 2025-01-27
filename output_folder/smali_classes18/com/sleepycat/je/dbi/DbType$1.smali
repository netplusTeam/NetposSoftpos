.class final enum Lcom/sleepycat/je/dbi/DbType$1;
.super Lcom/sleepycat/je/dbi/DbType;
.source "DbType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DbType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "internalName"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/dbi/DbType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sleepycat/je/dbi/DbType$1;)V

    return-void
.end method


# virtual methods
.method public createDeletedLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/tree/LN;
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 36
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public createUpdatedLN(Lcom/sleepycat/je/dbi/EnvironmentImpl;[B)Lcom/sleepycat/je/tree/LN;
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "newData"    # [B

    .line 44
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public mayCreateDeletedLN()Z
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public mayCreateUpdatedLN()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method
