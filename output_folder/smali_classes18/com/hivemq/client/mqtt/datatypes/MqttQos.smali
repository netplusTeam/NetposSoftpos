.class public final enum Lcom/hivemq/client/mqtt/datatypes/MqttQos;
.super Ljava/lang/Enum;
.source "MqttQos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field public static final enum AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field public static final enum AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field public static final enum EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private static final VALUES:[Lcom/hivemq/client/mqtt/datatypes/MqttQos;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const-string v1, "AT_MOST_ONCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 37
    new-instance v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const-string v3, "AT_LEAST_ONCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 41
    new-instance v3, Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const-string v5, "EXACTLY_ONCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 28
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->$VALUES:[Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 43
    invoke-static {}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->values()[Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->VALUES:[Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromCode(I)Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 2
    .param p0, "code"    # I

    .line 59
    if-ltz p0, :cond_1

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->VALUES:[Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    aget-object v0, v0, p0

    return-object v0

    .line 60
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-object v0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1

    .line 28
    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->$VALUES:[Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/datatypes/MqttQos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->ordinal()I

    move-result v0

    return v0
.end method
