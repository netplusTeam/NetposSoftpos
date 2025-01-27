.class public final enum Lcom/dspread/xpos/QPOSService$BuzzerType;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BuzzerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$BuzzerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMMON:Lcom/dspread/xpos/QPOSService$BuzzerType;

.field public static final enum PAIRING_SUCCESS:Lcom/dspread/xpos/QPOSService$BuzzerType;

.field public static final enum PAYMENT_ERROR:Lcom/dspread/xpos/QPOSService$BuzzerType;

.field public static final enum PAYMENT_SUCCESS:Lcom/dspread/xpos/QPOSService$BuzzerType;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$BuzzerType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$BuzzerType;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$BuzzerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$BuzzerType;->COMMON:Lcom/dspread/xpos/QPOSService$BuzzerType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$BuzzerType;

    const-string v1, "PAYMENT_SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$BuzzerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$BuzzerType;->PAYMENT_SUCCESS:Lcom/dspread/xpos/QPOSService$BuzzerType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$BuzzerType;

    const-string v1, "PAYMENT_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$BuzzerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$BuzzerType;->PAYMENT_ERROR:Lcom/dspread/xpos/QPOSService$BuzzerType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$BuzzerType;

    const-string v1, "PAIRING_SUCCESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$BuzzerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$BuzzerType;->PAIRING_SUCCESS:Lcom/dspread/xpos/QPOSService$BuzzerType;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$BuzzerType;->a()[Lcom/dspread/xpos/QPOSService$BuzzerType;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$BuzzerType;->a:[Lcom/dspread/xpos/QPOSService$BuzzerType;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$BuzzerType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$BuzzerType;

    sget-object v1, Lcom/dspread/xpos/QPOSService$BuzzerType;->COMMON:Lcom/dspread/xpos/QPOSService$BuzzerType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$BuzzerType;->PAYMENT_SUCCESS:Lcom/dspread/xpos/QPOSService$BuzzerType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$BuzzerType;->PAYMENT_ERROR:Lcom/dspread/xpos/QPOSService$BuzzerType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$BuzzerType;->PAIRING_SUCCESS:Lcom/dspread/xpos/QPOSService$BuzzerType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$BuzzerType;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$BuzzerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$BuzzerType;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$BuzzerType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$BuzzerType;->a:[Lcom/dspread/xpos/QPOSService$BuzzerType;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$BuzzerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$BuzzerType;

    return-object v0
.end method
