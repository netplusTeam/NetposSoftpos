.class final enum Lcom/dspread/xpos/QPOSService$macType;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "macType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$macType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MAC_KEY_ENCRYPT:Lcom/dspread/xpos/QPOSService$macType;

.field public static final enum MAC_UNIONPAY_DOUBLE:Lcom/dspread/xpos/QPOSService$macType;

.field public static final enum MAC_UNIONPAY_SINGLE:Lcom/dspread/xpos/QPOSService$macType;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$macType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$macType;

    const-string v1, "MAC_KEY_ENCRYPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$macType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$macType;->MAC_KEY_ENCRYPT:Lcom/dspread/xpos/QPOSService$macType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$macType;

    const-string v1, "MAC_UNIONPAY_DOUBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$macType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$macType;->MAC_UNIONPAY_DOUBLE:Lcom/dspread/xpos/QPOSService$macType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$macType;

    const-string v1, "MAC_UNIONPAY_SINGLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$macType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$macType;->MAC_UNIONPAY_SINGLE:Lcom/dspread/xpos/QPOSService$macType;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$macType;->a()[Lcom/dspread/xpos/QPOSService$macType;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$macType;->a:[Lcom/dspread/xpos/QPOSService$macType;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$macType;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$macType;

    sget-object v1, Lcom/dspread/xpos/QPOSService$macType;->MAC_KEY_ENCRYPT:Lcom/dspread/xpos/QPOSService$macType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$macType;->MAC_UNIONPAY_DOUBLE:Lcom/dspread/xpos/QPOSService$macType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$macType;->MAC_UNIONPAY_SINGLE:Lcom/dspread/xpos/QPOSService$macType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$macType;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$macType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$macType;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$macType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$macType;->a:[Lcom/dspread/xpos/QPOSService$macType;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$macType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$macType;

    return-object v0
.end method
