.class public Lcom/sleepycat/je/config/ConfigParam;
.super Ljava/lang/Object;
.source "ConfigParam.java"


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private forReplication:Z

.field private isMultiValueParam:Z

.field private mutable:Z

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "configDefault"    # Ljava/lang/String;
    .param p3, "mutable"    # Z
    .param p4, "forReplication"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/config/ConfigParam;->name:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_0
    const-string v0, ".#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, "mvFlagIdx":I
    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 53
    iput-object p1, p0, Lcom/sleepycat/je/config/ConfigParam;->name:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Lcom/sleepycat/je/config/ConfigParam;->isMultiValueParam:Z

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/config/ConfigParam;->name:Ljava/lang/String;

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/config/ConfigParam;->isMultiValueParam:Z

    .line 61
    .end local v0    # "mvFlagIdx":I
    :goto_0
    iput-object p2, p0, Lcom/sleepycat/je/config/ConfigParam;->defaultValue:Ljava/lang/String;

    .line 62
    iput-boolean p3, p0, Lcom/sleepycat/je/config/ConfigParam;->mutable:Z

    .line 63
    iput-boolean p4, p0, Lcom/sleepycat/je/config/ConfigParam;->forReplication:Z

    .line 66
    iget-object v0, p0, Lcom/sleepycat/je/config/ConfigParam;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/config/ConfigParam;->validateName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/config/ConfigParam;->validateValue(Ljava/lang/String;)V

    .line 70
    invoke-static {p0}, Lcom/sleepycat/je/config/EnvironmentParams;->addSupportedParam(Lcom/sleepycat/je/config/ConfigParam;)V

    .line 71
    return-void
.end method

.method public static multiValueParamName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "paramName"    # Ljava/lang/String;

    .line 78
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 79
    .local v0, "mvParamIdx":I
    if-gez v0, :cond_0

    .line 80
    const/4 v1, 0x0

    return-object v1

    .line 82
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static mvParamIndex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "paramName"    # Ljava/lang/String;

    .line 91
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 92
    .local v0, "mvParamIdx":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private validateName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 129
    return-void

    .line 126
    :cond_0
    nop

    .line 127
    const-string v0, "A configuration parameter name can\'t be null or 0 length"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getDefault()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sleepycat/je/config/ConfigParam;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sleepycat/je/config/ConfigParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isForReplication()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/sleepycat/je/config/ConfigParam;->forReplication:Z

    return v0
.end method

.method public isMultiValueParam()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/sleepycat/je/config/ConfigParam;->isMultiValueParam:Z

    return v0
.end method

.method public isMutable()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/sleepycat/je/config/ConfigParam;->mutable:Z

    return v0
.end method

.method public setForReplication(Z)V
    .locals 0
    .param p1, "forReplication"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/sleepycat/je/config/ConfigParam;->forReplication:Z

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/sleepycat/je/config/ConfigParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public validateValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 141
    return-void
.end method
