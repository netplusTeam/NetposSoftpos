.class Lcom/sleepycat/je/rep/utilint/RepUtils$TimeConsistencyPolicyFormat;
.super Ljava/lang/Object;
.source "RepUtils.java"

# interfaces
.implements Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/RepUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeConsistencyPolicyFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<",
        "Lcom/sleepycat/je/rep/TimeConsistencyPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/utilint/RepUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/utilint/RepUtils$1;

    .line 130
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/RepUtils$TimeConsistencyPolicyFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic policyToString(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Ljava/lang/String;
    .locals 0

    .line 130
    check-cast p1, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/RepUtils$TimeConsistencyPolicyFormat;->policyToString(Lcom/sleepycat/je/rep/TimeConsistencyPolicy;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public policyToString(Lcom/sleepycat/je/rep/TimeConsistencyPolicy;)Ljava/lang/String;
    .locals 3
    .param p1, "policy"    # Lcom/sleepycat/je/rep/TimeConsistencyPolicy;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 136
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->getPermissibleLag(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 137
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->getTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public bridge synthetic stringToPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/RepUtils$TimeConsistencyPolicyFormat;->stringToPolicy(Ljava/lang/String;)Lcom/sleepycat/je/rep/TimeConsistencyPolicy;

    move-result-object p1

    return-object p1
.end method

.method public stringToPolicy(Ljava/lang/String;)Lcom/sleepycat/je/rep/TimeConsistencyPolicy;
    .locals 13
    .param p1, "string"    # Ljava/lang/String;

    .line 144
    nop

    .line 145
    const-string v0, "TimeConsistencyPolicy"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "args":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, "Incorrect property value syntax: "

    const/16 v3, 0x28

    if-ne v1, v3, :cond_2

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x29

    if-ne v1, v4, :cond_2

    .line 151
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 152
    .local v1, "arg1":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 156
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v3

    .line 157
    .local v3, "lag":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 158
    .local v4, "arg2":I
    if-eq v4, v5, :cond_0

    .line 162
    add-int/lit8 v2, v1, 0x1

    .line 163
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v2

    .line 164
    .local v2, "timeout":I
    new-instance v12, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;

    int-to-long v6, v3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v9, v2

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;-><init>(JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    return-object v12

    .line 159
    .end local v2    # "timeout":I
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    .end local v3    # "lag":I
    .end local v4    # "arg2":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    .end local v1    # "arg1":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
