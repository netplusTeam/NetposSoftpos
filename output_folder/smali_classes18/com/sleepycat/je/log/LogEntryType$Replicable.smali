.class final enum Lcom/sleepycat/je/log/LogEntryType$Replicable;
.super Ljava/lang/Enum;
.source "LogEntryType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/LogEntryType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Replicable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/log/LogEntryType$Replicable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/log/LogEntryType$Replicable;

.field public static final enum LOCAL:Lcom/sleepycat/je/log/LogEntryType$Replicable;

.field public static final enum REPLICABLE_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

.field public static final enum REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;


# instance fields
.field private final isMatchable:Z

.field private final isReplicable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 958
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType$Replicable;

    const-string v1, "REPLICABLE_MATCH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sleepycat/je/log/LogEntryType$Replicable;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    .line 959
    new-instance v1, Lcom/sleepycat/je/log/LogEntryType$Replicable;

    const-string v4, "REPLICABLE_NO_MATCH"

    invoke-direct {v1, v4, v3, v3, v2}, Lcom/sleepycat/je/log/LogEntryType$Replicable;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    .line 960
    new-instance v4, Lcom/sleepycat/je/log/LogEntryType$Replicable;

    const-string v5, "LOCAL"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2, v2}, Lcom/sleepycat/je/log/LogEntryType$Replicable;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lcom/sleepycat/je/log/LogEntryType$Replicable;->LOCAL:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    .line 957
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/log/LogEntryType$Replicable;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    sput-object v5, Lcom/sleepycat/je/log/LogEntryType$Replicable;->$VALUES:[Lcom/sleepycat/je/log/LogEntryType$Replicable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "isReplicable"    # Z
    .param p4, "isMatchable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 965
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 966
    iput-boolean p3, p0, Lcom/sleepycat/je/log/LogEntryType$Replicable;->isReplicable:Z

    .line 967
    iput-boolean p4, p0, Lcom/sleepycat/je/log/LogEntryType$Replicable;->isMatchable:Z

    .line 968
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/log/LogEntryType$Replicable;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 957
    const-class v0, Lcom/sleepycat/je/log/LogEntryType$Replicable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/LogEntryType$Replicable;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/log/LogEntryType$Replicable;
    .locals 1

    .line 957
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType$Replicable;->$VALUES:[Lcom/sleepycat/je/log/LogEntryType$Replicable;

    invoke-virtual {v0}, [Lcom/sleepycat/je/log/LogEntryType$Replicable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/log/LogEntryType$Replicable;

    return-object v0
.end method


# virtual methods
.method isMatchable()Z
    .locals 1

    .line 975
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryType$Replicable;->isMatchable:Z

    return v0
.end method

.method isReplicable()Z
    .locals 1

    .line 971
    iget-boolean v0, p0, Lcom/sleepycat/je/log/LogEntryType$Replicable;->isReplicable:Z

    return v0
.end method
