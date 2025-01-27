.class public final enum Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PosSelfTestCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET_VERSION:Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

.field public static final enum POS_SELF_TEST:Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;


# instance fields
.field command:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    const-string v1, "GET_VERSION"

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;->GET_VERSION:Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    new-instance v0, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    const-string v1, "POS_SELF_TEST"

    const/4 v2, 0x1

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;->POS_SELF_TEST:Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;->a()[Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;->a:[Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;->command:I

    return-void
.end method

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    sget-object v1, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;->GET_VERSION:Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;->POS_SELF_TEST:Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;->a:[Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$PosSelfTestCommand;

    return-object v0
.end method
