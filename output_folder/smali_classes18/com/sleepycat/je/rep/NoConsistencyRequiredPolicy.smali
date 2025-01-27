.class public Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;
.super Ljava/lang/Object;
.source "NoConsistencyRequiredPolicy.java"

# interfaces
.implements Lcom/sleepycat/je/ReplicaConsistencyPolicy;


# static fields
.field public static final NAME:Ljava/lang/String; = "NoConsistencyRequiredPolicy"

.field public static final NO_CONSISTENCY:Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;->NO_CONSISTENCY:Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public ensureConsistency(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p1, "repInstance"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 68
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 86
    return v0

    .line 88
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 89
    return v1

    .line 91
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    if-nez v2, :cond_2

    .line 92
    return v1

    .line 94
    :cond_2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "NoConsistencyRequiredPolicy"

    return-object v0
.end method

.method public getTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 75
    const/16 v0, 0x1f

    .line 76
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 77
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    .line 78
    return v1
.end method
