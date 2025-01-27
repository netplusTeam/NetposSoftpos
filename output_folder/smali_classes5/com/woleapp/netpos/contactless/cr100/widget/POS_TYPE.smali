.class public final enum Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;
.super Ljava/lang/Enum;
.source "BluetoothExt.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;",
        "",
        "(Ljava/lang/String;I)V",
        "BLUETOOTH",
        "AUDIO",
        "UART",
        "USB",
        "OTG",
        "BLUETOOTH_BLE",
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
.field private static final synthetic $VALUES:[Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

.field public static final enum AUDIO:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

.field public static final enum BLUETOOTH:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

.field public static final enum BLUETOOTH_BLE:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

.field public static final enum OTG:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

.field public static final enum UART:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

.field public static final enum USB:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;


# direct methods
.method private static final synthetic $values()[Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->BLUETOOTH:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->AUDIO:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->UART:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->USB:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->OTG:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->BLUETOOTH_BLE:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const-string v1, "BLUETOOTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->BLUETOOTH:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    .line 56
    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const-string v1, "AUDIO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->AUDIO:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    .line 57
    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const-string v1, "UART"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->UART:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    .line 58
    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const-string v1, "USB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->USB:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    .line 59
    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const-string v1, "OTG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->OTG:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    .line 60
    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    const-string v1, "BLUETOOTH_BLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->BLUETOOTH_BLE:Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    invoke-static {}, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->$values()[Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->$VALUES:[Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;
    .locals 1

    const-class v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;
    .locals 1

    sget-object v0, Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;->$VALUES:[Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woleapp/netpos/contactless/cr100/widget/POS_TYPE;

    return-object v0
.end method
