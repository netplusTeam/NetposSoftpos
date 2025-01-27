.class public final enum Lcom/woleapp/netpos/contactless/model/MqttTopics;
.super Ljava/lang/Enum;
.source "MqttEvent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woleapp/netpos/contactless/model/MqttTopics;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/model/MqttTopics;",
        "",
        "topic",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getTopic",
        "()Ljava/lang/String;",
        "AUTHENTICATION",
        "TERMINAL_CONFIGURATION",
        "TRANSACTIONS",
        "PRINTING_RECEIPT",
        "NIP_PULL",
        "NIP_NEW",
        "NIP_SEARCH",
        "CARD_READER_EVENTS",
        "POWER_EVENTS",
        "BATTERY_EVENTS",
        "SMS_EVENTS",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum AUTHENTICATION:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum BATTERY_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum CARD_READER_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum NIP_NEW:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum NIP_PULL:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum NIP_SEARCH:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum POWER_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum PRINTING_RECEIPT:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum SMS_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum TERMINAL_CONFIGURATION:Lcom/woleapp/netpos/contactless/model/MqttTopics;

.field public static final enum TRANSACTIONS:Lcom/woleapp/netpos/contactless/model/MqttTopics;


# instance fields
.field private final topic:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/woleapp/netpos/contactless/model/MqttTopics;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/woleapp/netpos/contactless/model/MqttTopics;

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->AUTHENTICATION:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->TERMINAL_CONFIGURATION:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->TRANSACTIONS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->PRINTING_RECEIPT:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->NIP_PULL:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->NIP_NEW:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->NIP_SEARCH:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->CARD_READER_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->POWER_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->BATTERY_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/model/MqttTopics;->SMS_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "AUTHENTICATION"

    const/4 v2, 0x0

    const-string v3, "mqtt.pos.authentication.event"

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->AUTHENTICATION:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    .line 27
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "TERMINAL_CONFIGURATION"

    const/4 v2, 0x1

    const-string v3, "mqtt.pos.terminal_config.event"

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->TERMINAL_CONFIGURATION:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    .line 28
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "TRANSACTIONS"

    const/4 v2, 0x2

    const-string v3, "mqtt.pos.transaction.event"

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->TRANSACTIONS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    .line 29
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "PRINTING_RECEIPT"

    const/4 v2, 0x3

    const-string v3, "mqtt.pos.device.event"

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->PRINTING_RECEIPT:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    .line 30
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "NIP_PULL"

    const/4 v2, 0x4

    const-string v4, "mqtt.pos.bank_transfer.event"

    invoke-direct {v0, v1, v2, v4}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->NIP_PULL:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    .line 31
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "NIP_NEW"

    const/4 v2, 0x5

    const-string v4, "mqtt.pos.generate_session_code.event"

    invoke-direct {v0, v1, v2, v4}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->NIP_NEW:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    .line 32
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "NIP_SEARCH"

    const/4 v2, 0x6

    const-string v4, "mqtt.pos.verify_session_code.event"

    invoke-direct {v0, v1, v2, v4}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->NIP_SEARCH:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    .line 33
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "CARD_READER_EVENTS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->CARD_READER_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    .line 34
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "POWER_EVENTS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->POWER_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    .line 35
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "BATTERY_EVENTS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->BATTERY_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    .line 36
    new-instance v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const-string v1, "SMS_EVENTS"

    const/16 v2, 0xa

    const-string v3, "mqtt.pos.sms.event"

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/MqttTopics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->SMS_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    invoke-static {}, Lcom/woleapp/netpos/contactless/model/MqttTopics;->$values()[Lcom/woleapp/netpos/contactless/model/MqttTopics;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->$VALUES:[Lcom/woleapp/netpos/contactless/model/MqttTopics;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->topic:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/MqttTopics;
    .locals 1

    const-class v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;

    return-object v0
.end method

.method public static values()[Lcom/woleapp/netpos/contactless/model/MqttTopics;
    .locals 1

    sget-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->$VALUES:[Lcom/woleapp/netpos/contactless/model/MqttTopics;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woleapp/netpos/contactless/model/MqttTopics;

    return-object v0
.end method


# virtual methods
.method public final getTopic()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->topic:Ljava/lang/String;

    return-object v0
.end method
