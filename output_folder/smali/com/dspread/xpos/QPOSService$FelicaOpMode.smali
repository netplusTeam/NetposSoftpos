.class public final enum Lcom/dspread/xpos/QPOSService$FelicaOpMode;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FelicaOpMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$FelicaOpMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum POWER_OFF:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

.field public static final enum POWER_ON:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

.field public static final enum SEND_APDU:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$FelicaOpMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    const-string v1, "POWER_ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$FelicaOpMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->POWER_ON:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    const-string v1, "SEND_APDU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$FelicaOpMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->SEND_APDU:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    const-string v1, "POWER_OFF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$FelicaOpMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->POWER_OFF:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->a()[Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->a:[Lcom/dspread/xpos/QPOSService$FelicaOpMode;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$FelicaOpMode;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    sget-object v1, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->POWER_ON:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->SEND_APDU:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->POWER_OFF:Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$FelicaOpMode;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$FelicaOpMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$FelicaOpMode;->a:[Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$FelicaOpMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$FelicaOpMode;

    return-object v0
.end method
