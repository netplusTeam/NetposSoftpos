.class public Lcom/sleepycat/je/config/ShortConfigParam;
.super Lcom/sleepycat/je/config/ConfigParam;
.source "ShortConfigParam.java"


# static fields
.field private static final DEBUG_NAME:Ljava/lang/String;


# instance fields
.field private max:Ljava/lang/Short;

.field private min:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/sleepycat/je/config/ShortConfigParam;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/config/ShortConfigParam;->DEBUG_NAME:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Short;Ljava/lang/Short;Ljava/lang/Short;ZZ)V
    .locals 1
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "minVal"    # Ljava/lang/Short;
    .param p3, "maxVal"    # Ljava/lang/Short;
    .param p4, "defaultValue"    # Ljava/lang/Short;
    .param p5, "mutable"    # Z
    .param p6, "forReplication"    # Z

    .line 34
    invoke-virtual {p4}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p5, p6}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 36
    iput-object p2, p0, Lcom/sleepycat/je/config/ShortConfigParam;->min:Ljava/lang/Short;

    .line 37
    iput-object p3, p0, Lcom/sleepycat/je/config/ShortConfigParam;->max:Ljava/lang/Short;

    .line 38
    return-void
.end method

.method private validate(Ljava/lang/Short;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Short;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 46
    if-eqz p1, :cond_3

    .line 47
    iget-object v0, p0, Lcom/sleepycat/je/config/ShortConfigParam;->min:Ljava/lang/Short;

    const-string v1, " doesn\'t validate, "

    const-string v2, ": param "

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sleepycat/je/config/ShortConfigParam;->DEBUG_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/config/ShortConfigParam;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than min of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/config/ShortConfigParam;->min:Ljava/lang/Short;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/config/ShortConfigParam;->max:Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sleepycat/je/config/ShortConfigParam;->DEBUG_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/config/ShortConfigParam;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than max of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/config/ShortConfigParam;->max:Ljava/lang/Short;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getMin()Ljava/lang/Short;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sleepycat/je/config/ShortConfigParam;->min:Ljava/lang/Short;

    return-object v0
.end method

.method public validateValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sleepycat/je/config/ShortConfigParam;->validate(Ljava/lang/Short;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    nop

    .line 80
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sleepycat/je/config/ShortConfigParam;->DEBUG_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not valid value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/config/ShortConfigParam;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
