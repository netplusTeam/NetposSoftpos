.class public Lcom/sleepycat/je/rep/impl/RepImplStatDefinition;
.super Ljava/lang/Object;
.source "RepImplStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "General information about a replication node"

.field public static final GROUP_NAME:Ljava/lang/String; = "ReplicatedEnvironment"

.field public static final HARD_RECOVERY:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final HARD_RECOVERY_INFO:Lcom/sleepycat/je/utilint/StatDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "hardRecoveryIncurred"

    const-string v2, "If true, this node had to truncate committed transactions which differed from the group\'s version of the replication stream from its log in order to come up."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepImplStatDefinition;->HARD_RECOVERY:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 34
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "hardRecoveryInfo"

    const-string v2, "Description of the amount of log truncated  in order to do a hard recovery."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepImplStatDefinition;->HARD_RECOVERY_INFO:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
