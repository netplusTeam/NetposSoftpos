.class final enum Lcom/sleepycat/je/dbi/DbType$4;
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

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/dbi/DbType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sleepycat/je/dbi/DbType$1;)V

    return-void
.end method


# virtual methods
.method public getLogType(Z)Lcom/sleepycat/je/log/LogEntryType;
    .locals 1
    .param p1, "isTransactional"    # Z

    .line 97
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_RESERVED_FILE_LN:Lcom/sleepycat/je/log/LogEntryType;

    return-object v0
.end method
