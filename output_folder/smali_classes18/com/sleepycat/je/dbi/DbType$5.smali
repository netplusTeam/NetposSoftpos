.class final enum Lcom/sleepycat/je/dbi/DbType$5;
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

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/dbi/DbType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sleepycat/je/dbi/DbType$1;)V

    return-void
.end method


# virtual methods
.method public getLogType(Z)Lcom/sleepycat/je/log/LogEntryType;
    .locals 1
    .param p1, "isTransactional"    # Z

    .line 104
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_EXTINCT_SCAN_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_EXTINCT_SCAN_LN:Lcom/sleepycat/je/log/LogEntryType;

    :goto_0
    return-object v0
.end method

.method public isMixedReplication()Z
    .locals 1

    .line 110
    const/4 v0, 0x1

    return v0
.end method
