.class Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;
.super Lcom/sleepycat/je/log/LogEntryType;
.source "LogEntryType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/LogEntryType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserLNLogEntryType"
.end annotation


# direct methods
.method public constructor <init>(BLjava/lang/String;Lcom/sleepycat/je/log/LogEntryType$Txnal;)V
    .locals 10
    .param p1, "typeNum"    # B
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "txnal"    # Lcom/sleepycat/je/log/LogEntryType$Txnal;

    .line 1061
    const-class v0, Lcom/sleepycat/je/tree/LN;

    .line 1062
    invoke-static {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v4

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v8, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_USER:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 1061
    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;Lcom/sleepycat/je/log/LogEntryType$1;)V

    .line 1065
    return-void
.end method

.method private isEquivalentOldType(B)Z
    .locals 1
    .param p1, "typeB"    # B

    .line 1092
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;->isTransactional()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;->LOG_OLD_LN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;->isTransactional()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;->LOG_OLD_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 1094
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1095
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1098
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public compareTypeAndVersion(IIB)Z
    .locals 2
    .param p1, "versionA"    # I
    .param p2, "versionB"    # I
    .param p3, "typeB"    # B

    .line 1072
    const/4 v0, 0x1

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;->getTypeNum()B

    move-result v1

    if-ne v1, p3, :cond_0

    .line 1073
    return v0

    .line 1080
    :cond_0
    if-le p1, p2, :cond_1

    invoke-direct {p0, p3}, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;->isEquivalentOldType(B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1081
    return v0

    .line 1088
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
