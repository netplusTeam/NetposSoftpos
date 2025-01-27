.class public final enum Lcom/dspread/xpos/VPosServiceUart$UartServiceState;
.super Ljava/lang/Enum;
.source "VPosServiceUart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/VPosServiceUart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UartServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/VPosServiceUart$UartServiceState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUSY:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

.field public static final enum CLOSED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

.field public static final enum CLOSING:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

.field public static final enum OPENED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

.field public static final enum OPENING:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

.field private static final synthetic a:[Lcom/dspread/xpos/VPosServiceUart$UartServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const-string v1, "OPENING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->OPENING:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 5
    new-instance v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const-string v1, "OPENED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->OPENED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 9
    new-instance v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const-string v1, "CLOSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->CLOSING:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 13
    new-instance v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const-string v1, "CLOSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->CLOSED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 17
    new-instance v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const-string v1, "BUSY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->BUSY:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 18
    invoke-static {}, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->a()[Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->a:[Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/dspread/xpos/VPosServiceUart$UartServiceState;
    .locals 3

    .line 1
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->OPENING:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->OPENED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->CLOSING:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->CLOSED:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->BUSY:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/VPosServiceUart$UartServiceState;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/VPosServiceUart$UartServiceState;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->a:[Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    invoke-virtual {v0}, [Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    return-object v0
.end method
