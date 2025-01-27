.class public final enum Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
.super Ljava/lang/Enum;
.source "LeaveGroupEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeaveReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

.field public static final enum ABNORMAL_TERMINATION:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

.field public static final enum MASTER_SHUTDOWN_GROUP:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

.field public static final enum NORMAL_SHUTDOWN:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    const-string v1, "NORMAL_SHUTDOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->NORMAL_SHUTDOWN:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    .line 43
    new-instance v1, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    const-string v3, "ABNORMAL_TERMINATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->ABNORMAL_TERMINATION:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    .line 48
    new-instance v3, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    const-string v5, "MASTER_SHUTDOWN_GROUP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->MASTER_SHUTDOWN_GROUP:Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    .line 33
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->$VALUES:[Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;
    .locals 1

    .line 33
    sget-object v0, Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->$VALUES:[Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent$LeaveReason;

    return-object v0
.end method
