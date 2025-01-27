.class public Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
.super Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;
.source "LocalUtilizationTracker.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 38
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/BaseUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 39
    return-void
.end method


# virtual methods
.method public countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;I)V
    .locals 7
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I

    .line 56
    nop

    .line 57
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsolete(JLcom/sleepycat/je/log/LogEntryType;IZZ)V

    .line 60
    return-void
.end method

.method public countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V
    .locals 7
    .param p1, "lsn"    # J
    .param p3, "type"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "size"    # I

    .line 72
    nop

    .line 73
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsolete(JLcom/sleepycat/je/log/LogEntryType;IZZ)V

    .line 76
    return-void
.end method
