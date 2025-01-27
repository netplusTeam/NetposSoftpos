.class public Lcom/sleepycat/je/config/DurationConfigParam;
.super Lcom/sleepycat/je/config/ConfigParam;
.source "DurationConfigParam.java"


# static fields
.field private static final DEBUG_NAME:Ljava/lang/String;


# instance fields
.field private maxMillis:I

.field private maxString:Ljava/lang/String;

.field private minMillis:I

.field private minString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/sleepycat/je/config/DurationConfigParam;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/config/DurationConfigParam;->DEBUG_NAME:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "minVal"    # Ljava/lang/String;
    .param p3, "maxVal"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "mutable"    # Z
    .param p6, "forReplication"    # Z

    .line 39
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 40
    if-eqz p2, :cond_0

    .line 41
    iput-object p2, p0, Lcom/sleepycat/je/config/DurationConfigParam;->minString:Ljava/lang/String;

    .line 42
    invoke-static {p2}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/config/DurationConfigParam;->minMillis:I

    .line 44
    :cond_0
    if-eqz p3, :cond_1

    .line 45
    iput-object p3, p0, Lcom/sleepycat/je/config/DurationConfigParam;->maxString:Ljava/lang/String;

    .line 46
    invoke-static {p3}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/config/DurationConfigParam;->maxMillis:I

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public validateValue(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 57
    const-string v0, " doesn\'t validate, "

    const-string v1, ": param "

    :try_start_0
    invoke-static {p1}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .local v2, "millis":I
    nop

    .line 68
    iget-object v3, p0, Lcom/sleepycat/je/config/DurationConfigParam;->minString:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 69
    iget v3, p0, Lcom/sleepycat/je/config/DurationConfigParam;->minMillis:I

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sleepycat/je/config/DurationConfigParam;->DEBUG_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/je/config/DurationConfigParam;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is less than min of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/config/DurationConfigParam;->minString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/config/DurationConfigParam;->maxString:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 80
    iget v3, p0, Lcom/sleepycat/je/config/DurationConfigParam;->maxMillis:I

    if-gt v2, v3, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sleepycat/je/config/DurationConfigParam;->DEBUG_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/je/config/DurationConfigParam;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is greater than max of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/config/DurationConfigParam;->maxString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_3
    :goto_1
    return-void

    .line 58
    .end local v2    # "millis":I
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sleepycat/je/config/DurationConfigParam;->DEBUG_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/je/config/DurationConfigParam;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fails validation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
