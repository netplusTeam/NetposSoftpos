.class public Lcom/sleepycat/je/rep/monitor/MonitorService;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/monitor/MonitorService$MonitorServiceRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "Monitor"

.field public static volatile processGroupChangeHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile processJoinGroupHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile processLeaveGroupHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final formatter:Ljava/util/logging/Formatter;

.field private final logger:Ljava/util/logging/Logger;

.field private final monitor:Lcom/sleepycat/je/rep/monitor/Monitor;

.field private final protocol:Lcom/sleepycat/je/rep/monitor/Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/monitor/Monitor;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V
    .locals 5
    .param p1, "monitor"    # Lcom/sleepycat/je/rep/monitor/Monitor;
    .param p2, "dispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 60
    const-string v0, "Monitor"

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    .line 61
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/MonitorService;->monitor:Lcom/sleepycat/je/rep/monitor/Monitor;

    .line 62
    new-instance v0, Lcom/sleepycat/je/rep/monitor/Protocol;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Monitor;->getGroupName()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Monitor;->getMonitorNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    .line 65
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->getChannelFactory()Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/je/rep/monitor/Protocol;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorService;->protocol:Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorService;->logger:Ljava/util/logging/Logger;

    .line 67
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Monitor;->getMonitorNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorService;->formatter:Ljava/util/logging/Formatter;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/monitor/MonitorService;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/monitor/MonitorService;

    .line 40
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/monitor/MonitorService;)Ljava/util/logging/Formatter;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/monitor/MonitorService;

    .line 40
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorService;->formatter:Ljava/util/logging/Formatter;

    return-object v0
.end method


# virtual methods
.method public getRunnable(Lcom/sleepycat/je/rep/net/DataChannel;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 126
    new-instance v0, Lcom/sleepycat/je/rep/monitor/MonitorService$MonitorServiceRunnable;

    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/MonitorService;->protocol:Lcom/sleepycat/je/rep/monitor/Protocol;

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/je/rep/monitor/MonitorService$MonitorServiceRunnable;-><init>(Lcom/sleepycat/je/rep/monitor/MonitorService;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/monitor/Protocol;)V

    return-object v0
.end method

.method public process(Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 4
    .param p1, "groupChange"    # Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;

    .line 76
    new-instance v0, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;

    new-instance v1, Lcom/sleepycat/je/rep/ReplicationGroup;

    .line 77
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/ReplicationGroup;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    .line 78
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;->getOpType()Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;-><init>(Lcom/sleepycat/je/rep/ReplicationGroup;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V

    .line 81
    .local v0, "event":Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sleepycat/je/rep/monitor/MonitorService;->processGroupChangeHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v2, v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 84
    nop

    .line 85
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/MonitorService;->monitor:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/rep/monitor/Monitor;->notifyGroupChange(Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;)V

    .line 86
    return-object v1

    .line 81
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "event":Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;
    .end local p1    # "groupChange":Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;
    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .restart local v0    # "event":Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;
    .restart local p1    # "groupChange":Lcom/sleepycat/je/rep/monitor/Protocol$GroupChange;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/IllegalStateException;
    return-object v1
.end method

.method public process(Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 5
    .param p1, "joinGroup"    # Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;

    .line 93
    new-instance v0, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;->getMasterName()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;->getJoinTime()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 97
    .local v0, "event":Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sleepycat/je/rep/monitor/MonitorService;->processJoinGroupHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v2, v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 100
    nop

    .line 101
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/MonitorService;->monitor:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/rep/monitor/Monitor;->notifyJoin(Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;)V

    .line 102
    return-object v1

    .line 97
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "event":Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;
    .end local p1    # "joinGroup":Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;
    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .restart local v0    # "event":Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;
    .restart local p1    # "joinGroup":Lcom/sleepycat/je/rep/monitor/Protocol$JoinGroup;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/IllegalStateException;
    return-object v1
.end method

.method public process(Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 9
    .param p1, "leaveGroup"    # Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;

    .line 109
    new-instance v8, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;

    .line 110
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->getMasterName()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->getLeaveReason()Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    move-result-object v3

    .line 113
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->getJoinTime()J

    move-result-wide v4

    .line 114
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;->getLeaveTime()J

    move-result-wide v6

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;JJ)V

    .line 116
    .local v0, "event":Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sleepycat/je/rep/monitor/MonitorService;->processLeaveGroupHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v2, v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 119
    nop

    .line 120
    iget-object v2, p0, Lcom/sleepycat/je/rep/monitor/MonitorService;->monitor:Lcom/sleepycat/je/rep/monitor/Monitor;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/rep/monitor/Monitor;->notifyLeave(Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;)V

    .line 121
    return-object v1

    .line 116
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "event":Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;
    .end local p1    # "leaveGroup":Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;
    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .restart local v0    # "event":Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;
    .restart local p1    # "leaveGroup":Lcom/sleepycat/je/rep/monitor/Protocol$LeaveGroup;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/IllegalStateException;
    return-object v1
.end method
