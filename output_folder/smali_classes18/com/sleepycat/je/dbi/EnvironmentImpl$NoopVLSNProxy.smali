.class Lcom/sleepycat/je/dbi/EnvironmentImpl$NoopVLSNProxy;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/sleepycat/je/recovery/VLSNRecoveryProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/EnvironmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoopVLSNProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/dbi/EnvironmentImpl;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0

    .line 3539
    iput-object p1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$NoopVLSNProxy;->this$0:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "x1"    # Lcom/sleepycat/je/dbi/EnvironmentImpl$1;

    .line 3539
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl$NoopVLSNProxy;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    return-void
.end method


# virtual methods
.method public trackMapping(JLcom/sleepycat/je/log/LogEntryHeader;Lcom/sleepycat/je/log/entry/LogEntry;)V
    .locals 0
    .param p1, "lsn"    # J
    .param p3, "currentEntryHeader"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p4, "targetLogEntry"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 3546
    return-void
.end method
