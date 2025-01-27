.class public final enum Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
.super Ljava/lang/Enum;
.source "Durability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/Durability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReplicaAckPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/Durability$ReplicaAckPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

.field public static final enum ALL:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

.field public static final enum NONE:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

.field public static final enum SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 164
    new-instance v0, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->ALL:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 172
    new-instance v1, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->NONE:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 183
    new-instance v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    const-string v5, "SIMPLE_MAJORITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 156
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->$VALUES:[Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 156
    const-class v0, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    .locals 1

    .line 156
    sget-object v0, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->$VALUES:[Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-virtual {v0}, [Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    return-object v0
.end method


# virtual methods
.method public minAckNodes(I)I
    .locals 2
    .param p1, "groupSize"    # I

    .line 195
    sget-object v0, Lcom/sleepycat/je/Durability$1;->$SwitchMap$com$sleepycat$je$Durability$ReplicaAckPolicy:[I

    invoke-virtual {p0}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ack policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 201
    :pswitch_0
    div-int/lit8 v0, p1, 0x2

    add-int/2addr v0, v1

    return v0

    .line 199
    :pswitch_1
    return v1

    .line 197
    :pswitch_2
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
