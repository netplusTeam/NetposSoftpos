.class public final enum Lcom/sleepycat/je/rep/QuorumPolicy;
.super Ljava/lang/Enum;
.source "QuorumPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/QuorumPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/QuorumPolicy;

.field public static final enum ALL:Lcom/sleepycat/je/rep/QuorumPolicy;

.field public static final enum SIMPLE_MAJORITY:Lcom/sleepycat/je/rep/QuorumPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/sleepycat/je/rep/QuorumPolicy;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/QuorumPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/QuorumPolicy;->ALL:Lcom/sleepycat/je/rep/QuorumPolicy;

    .line 39
    new-instance v1, Lcom/sleepycat/je/rep/QuorumPolicy;

    const-string v3, "SIMPLE_MAJORITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/QuorumPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/QuorumPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/rep/QuorumPolicy;

    .line 29
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sleepycat/je/rep/QuorumPolicy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sleepycat/je/rep/QuorumPolicy;->$VALUES:[Lcom/sleepycat/je/rep/QuorumPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/QuorumPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/sleepycat/je/rep/QuorumPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/QuorumPolicy;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/QuorumPolicy;
    .locals 1

    .line 29
    sget-object v0, Lcom/sleepycat/je/rep/QuorumPolicy;->$VALUES:[Lcom/sleepycat/je/rep/QuorumPolicy;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/QuorumPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/QuorumPolicy;

    return-object v0
.end method


# virtual methods
.method public quorumSize(I)I
    .locals 2
    .param p1, "groupSize"    # I

    .line 51
    sget-object v0, Lcom/sleepycat/je/rep/QuorumPolicy$1;->$SwitchMap$com$sleepycat$je$rep$QuorumPolicy:[I

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/QuorumPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown quorum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 56
    :pswitch_0
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 53
    :pswitch_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
