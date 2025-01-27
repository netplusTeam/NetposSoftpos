.class Lcom/sleepycat/je/rep/utilint/RepUtils$NoConsistencyRequiredPolicyFormat;
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
    name = "NoConsistencyRequiredPolicyFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat<",
        "Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/utilint/RepUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/utilint/RepUtils$1;

    .line 169
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/RepUtils$NoConsistencyRequiredPolicyFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic policyToString(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Ljava/lang/String;
    .locals 0

    .line 169
    check-cast p1, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/RepUtils$NoConsistencyRequiredPolicyFormat;->policyToString(Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public policyToString(Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;)Ljava/lang/String;
    .locals 1
    .param p1, "policy"    # Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    .line 175
    const-string v0, "NoConsistencyRequiredPolicy"

    return-object v0
.end method

.method public bridge synthetic stringToPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/RepUtils$NoConsistencyRequiredPolicyFormat;->stringToPolicy(Ljava/lang/String;)Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    move-result-object p1

    return-object p1
.end method

.method public stringToPolicy(Ljava/lang/String;)Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;->NO_CONSISTENCY:Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    return-object v0
.end method
