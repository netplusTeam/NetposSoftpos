.class synthetic Lcom/sleepycat/je/recovery/RecoveryManager$1;
.super Ljava/lang/Object;
.source "RecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/RecoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sleepycat$je$log$entry$DbOperationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2421
    invoke-static {}, Lcom/sleepycat/je/log/entry/DbOperationType;->values()[Lcom/sleepycat/je/log/entry/DbOperationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sleepycat/je/recovery/RecoveryManager$1;->$SwitchMap$com$sleepycat$je$log$entry$DbOperationType:[I

    :try_start_0
    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->REMOVE:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/DbOperationType;->ordinal()I

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
    sget-object v0, Lcom/sleepycat/je/recovery/RecoveryManager$1;->$SwitchMap$com$sleepycat$je$log$entry$DbOperationType:[I

    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/DbOperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sleepycat/je/recovery/RecoveryManager$1;->$SwitchMap$com$sleepycat$je$log$entry$DbOperationType:[I

    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->RENAME:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/DbOperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
