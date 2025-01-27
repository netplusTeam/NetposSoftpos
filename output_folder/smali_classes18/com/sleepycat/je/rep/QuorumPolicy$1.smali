.class synthetic Lcom/sleepycat/je/rep/QuorumPolicy$1;
.super Ljava/lang/Object;
.source "QuorumPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/QuorumPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sleepycat$je$rep$QuorumPolicy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    invoke-static {}, Lcom/sleepycat/je/rep/QuorumPolicy;->values()[Lcom/sleepycat/je/rep/QuorumPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sleepycat/je/rep/QuorumPolicy$1;->$SwitchMap$com$sleepycat$je$rep$QuorumPolicy:[I

    :try_start_0
    sget-object v1, Lcom/sleepycat/je/rep/QuorumPolicy;->ALL:Lcom/sleepycat/je/rep/QuorumPolicy;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/QuorumPolicy;->ordinal()I

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
    sget-object v0, Lcom/sleepycat/je/rep/QuorumPolicy$1;->$SwitchMap$com$sleepycat$je$rep$QuorumPolicy:[I

    sget-object v1, Lcom/sleepycat/je/rep/QuorumPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/rep/QuorumPolicy;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/QuorumPolicy;->ordinal()I

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
