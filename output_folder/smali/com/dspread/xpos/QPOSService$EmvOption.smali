.class public final enum Lcom/dspread/xpos/QPOSService$EmvOption;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmvOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$EmvOption;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum START:Lcom/dspread/xpos/QPOSService$EmvOption;

.field public static final enum START_WITH_FORCE_ONLINE:Lcom/dspread/xpos/QPOSService$EmvOption;

.field public static final enum START_WITH_FORCE_ONLINE_FORCE_PIN:Lcom/dspread/xpos/QPOSService$EmvOption;

.field public static final enum START_WITH_FORCE_ONLINE_FORCE_PIN_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

.field public static final enum START_WITH_FORCE_ONLINE_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

.field public static final enum START_WITH_FORCE_PIN:Lcom/dspread/xpos/QPOSService$EmvOption;

.field public static final enum START_WITH_FORCE_PIN_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

.field public static final enum START_WITH_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$EmvOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$EmvOption;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EmvOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EmvOption;->START:Lcom/dspread/xpos/QPOSService$EmvOption;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$EmvOption;

    const-string v1, "START_WITH_FORCE_ONLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EmvOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE:Lcom/dspread/xpos/QPOSService$EmvOption;

    .line 9
    new-instance v0, Lcom/dspread/xpos/QPOSService$EmvOption;

    const-string v1, "START_WITH_FORCE_PIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EmvOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_PIN:Lcom/dspread/xpos/QPOSService$EmvOption;

    .line 13
    new-instance v0, Lcom/dspread/xpos/QPOSService$EmvOption;

    const-string v1, "START_WITH_FORCE_ONLINE_FORCE_PIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EmvOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE_FORCE_PIN:Lcom/dspread/xpos/QPOSService$EmvOption;

    .line 17
    new-instance v0, Lcom/dspread/xpos/QPOSService$EmvOption;

    const-string v1, "START_WITH_RETURN_ICC_CARD_NUMBER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EmvOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    new-instance v0, Lcom/dspread/xpos/QPOSService$EmvOption;

    const-string v1, "START_WITH_FORCE_ONLINE_RETURN_ICC_CARD_NUMBER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EmvOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    new-instance v0, Lcom/dspread/xpos/QPOSService$EmvOption;

    const-string v1, "START_WITH_FORCE_PIN_RETURN_ICC_CARD_NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EmvOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_PIN_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    new-instance v0, Lcom/dspread/xpos/QPOSService$EmvOption;

    const-string v1, "START_WITH_FORCE_ONLINE_FORCE_PIN_RETURN_ICC_CARD_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EmvOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE_FORCE_PIN_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    .line 18
    invoke-static {}, Lcom/dspread/xpos/QPOSService$EmvOption;->a()[Lcom/dspread/xpos/QPOSService$EmvOption;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$EmvOption;->a:[Lcom/dspread/xpos/QPOSService$EmvOption;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$EmvOption;
    .locals 3

    .line 1
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$EmvOption;

    sget-object v1, Lcom/dspread/xpos/QPOSService$EmvOption;->START:Lcom/dspread/xpos/QPOSService$EmvOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE:Lcom/dspread/xpos/QPOSService$EmvOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_PIN:Lcom/dspread/xpos/QPOSService$EmvOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE_FORCE_PIN:Lcom/dspread/xpos/QPOSService$EmvOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_PIN_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EmvOption;->START_WITH_FORCE_ONLINE_FORCE_PIN_RETURN_ICC_CARD_NUMBER:Lcom/dspread/xpos/QPOSService$EmvOption;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$EmvOption;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$EmvOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$EmvOption;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$EmvOption;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$EmvOption;->a:[Lcom/dspread/xpos/QPOSService$EmvOption;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$EmvOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$EmvOption;

    return-object v0
.end method
