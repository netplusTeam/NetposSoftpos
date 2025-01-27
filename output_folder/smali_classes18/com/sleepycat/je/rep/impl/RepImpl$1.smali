.class synthetic Lcom/sleepycat/je/rep/impl/RepImpl$1;
.super Ljava/lang/Object;
.source "RepImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sleepycat$je$log$entry$RestoreRequired$FailureType:[I

.field static final synthetic $SwitchMap$com$sleepycat$je$rep$ReplicatedEnvironment$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2349
    invoke-static {}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->values()[Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepImpl$1;->$SwitchMap$com$sleepycat$je$log$entry$RestoreRequired$FailureType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->NETWORK_RESTORE:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1082
    :goto_0
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->values()[Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepImpl$1;->$SwitchMap$com$sleepycat$je$rep$ReplicatedEnvironment$State:[I

    :try_start_1
    sget-object v2, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->MASTER:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepImpl$1;->$SwitchMap$com$sleepycat$je$rep$ReplicatedEnvironment$State:[I

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->REPLICA:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepImpl$1;->$SwitchMap$com$sleepycat$je$rep$ReplicatedEnvironment$State:[I

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->UNKNOWN:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepImpl$1;->$SwitchMap$com$sleepycat$je$rep$ReplicatedEnvironment$State:[I

    sget-object v1, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
