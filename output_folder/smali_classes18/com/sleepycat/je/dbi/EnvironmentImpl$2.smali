.class synthetic Lcom/sleepycat/je/dbi/EnvironmentImpl$2;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/EnvironmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sleepycat$je$log$entry$RestoreRequired$FailureType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3943
    invoke-static {}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->values()[Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$2;->$SwitchMap$com$sleepycat$je$log$entry$RestoreRequired$FailureType:[I

    :try_start_0
    sget-object v1, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->LOG_CHECKSUM:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$2;->$SwitchMap$com$sleepycat$je$log$entry$RestoreRequired$FailureType:[I

    sget-object v1, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->BTREE_CORRUPTION:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
