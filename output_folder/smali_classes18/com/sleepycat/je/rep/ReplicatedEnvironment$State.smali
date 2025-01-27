.class public final enum Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
.super Ljava/lang/Enum;
.source "ReplicatedEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/ReplicatedEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

.field public static final enum DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

.field public static final enum MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

.field public static final enum REPLICA:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

.field public static final enum UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1113
    new-instance v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    const-string v1, "DETACHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 1122
    new-instance v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 1131
    new-instance v3, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    const-string v5, "MASTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 1141
    new-instance v5, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    const-string v7, "REPLICA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->REPLICA:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 1106
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->$VALUES:[Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1106
    const-class v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .locals 1

    .line 1106
    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->$VALUES:[Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    return-object v0
.end method


# virtual methods
.method public final isActive()Z
    .locals 1

    .line 1178
    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->REPLICA:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isDetached()Z
    .locals 1

    .line 1162
    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMaster()Z
    .locals 1

    .line 1147
    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReplica()Z
    .locals 1

    .line 1154
    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->REPLICA:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnknown()Z
    .locals 1

    .line 1170
    sget-object v0, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
