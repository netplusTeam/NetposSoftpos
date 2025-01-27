.class public final enum Lcom/dspread/xpos/QPOSService$TestCommand;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$TestCommand;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUZZER_TEST_START:Lcom/dspread/xpos/QPOSService$TestCommand;

.field public static final enum BUZZER_TEST_STOP:Lcom/dspread/xpos/QPOSService$TestCommand;

.field public static final enum ICC_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

.field public static final enum LED_TEST_START:Lcom/dspread/xpos/QPOSService$TestCommand;

.field public static final enum LED_TEST_STOP:Lcom/dspread/xpos/QPOSService$TestCommand;

.field public static final enum MCR_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

.field public static final enum NFC_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

.field public static final enum PIN_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

.field public static final enum PSAM:Lcom/dspread/xpos/QPOSService$TestCommand;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$TestCommand;


# instance fields
.field command:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$TestCommand;

    const-string v1, "LED_TEST_START"

    const/4 v2, 0x0

    const/16 v3, 0xa0

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$TestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->LED_TEST_START:Lcom/dspread/xpos/QPOSService$TestCommand;

    new-instance v0, Lcom/dspread/xpos/QPOSService$TestCommand;

    const-string v1, "LED_TEST_STOP"

    const/4 v2, 0x1

    const/16 v3, 0xa1

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$TestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->LED_TEST_STOP:Lcom/dspread/xpos/QPOSService$TestCommand;

    new-instance v0, Lcom/dspread/xpos/QPOSService$TestCommand;

    const-string v1, "BUZZER_TEST_START"

    const/4 v2, 0x2

    const/16 v3, 0xa2

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$TestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->BUZZER_TEST_START:Lcom/dspread/xpos/QPOSService$TestCommand;

    new-instance v0, Lcom/dspread/xpos/QPOSService$TestCommand;

    const-string v1, "PSAM"

    const/4 v2, 0x3

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$TestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->PSAM:Lcom/dspread/xpos/QPOSService$TestCommand;

    new-instance v0, Lcom/dspread/xpos/QPOSService$TestCommand;

    const-string v1, "PIN_TEST"

    const/4 v2, 0x4

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$TestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->PIN_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

    new-instance v0, Lcom/dspread/xpos/QPOSService$TestCommand;

    const-string v1, "BUZZER_TEST_STOP"

    const/4 v2, 0x5

    const/16 v3, 0xa3

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$TestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->BUZZER_TEST_STOP:Lcom/dspread/xpos/QPOSService$TestCommand;

    new-instance v0, Lcom/dspread/xpos/QPOSService$TestCommand;

    const-string v1, "ICC_TEST"

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$TestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->ICC_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

    new-instance v0, Lcom/dspread/xpos/QPOSService$TestCommand;

    const-string v1, "NFC_TEST"

    const/4 v2, 0x7

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4}, Lcom/dspread/xpos/QPOSService$TestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->NFC_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

    new-instance v0, Lcom/dspread/xpos/QPOSService$TestCommand;

    const-string v1, "MCR_TEST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/dspread/xpos/QPOSService$TestCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->MCR_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$TestCommand;->a()[Lcom/dspread/xpos/QPOSService$TestCommand;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->a:[Lcom/dspread/xpos/QPOSService$TestCommand;

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
    iput p3, p0, Lcom/dspread/xpos/QPOSService$TestCommand;->command:I

    return-void
.end method

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$TestCommand;
    .locals 3

    .line 1
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$TestCommand;

    sget-object v1, Lcom/dspread/xpos/QPOSService$TestCommand;->LED_TEST_START:Lcom/dspread/xpos/QPOSService$TestCommand;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TestCommand;->LED_TEST_STOP:Lcom/dspread/xpos/QPOSService$TestCommand;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TestCommand;->BUZZER_TEST_START:Lcom/dspread/xpos/QPOSService$TestCommand;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TestCommand;->PSAM:Lcom/dspread/xpos/QPOSService$TestCommand;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TestCommand;->PIN_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TestCommand;->BUZZER_TEST_STOP:Lcom/dspread/xpos/QPOSService$TestCommand;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TestCommand;->ICC_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TestCommand;->NFC_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$TestCommand;->MCR_TEST:Lcom/dspread/xpos/QPOSService$TestCommand;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$TestCommand;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$TestCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$TestCommand;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$TestCommand;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$TestCommand;->a:[Lcom/dspread/xpos/QPOSService$TestCommand;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$TestCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$TestCommand;

    return-object v0
.end method
