.class public final enum Lcom/dspread/xpos/QPOSService$LEDDirection;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LEDDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$LEDDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/dspread/xpos/QPOSService$LEDDirection;

.field public static final enum DOWN:Lcom/dspread/xpos/QPOSService$LEDDirection;

.field public static final enum LEFT:Lcom/dspread/xpos/QPOSService$LEDDirection;

.field public static final enum RIGHT:Lcom/dspread/xpos/QPOSService$LEDDirection;

.field public static final enum UP:Lcom/dspread/xpos/QPOSService$LEDDirection;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$LEDDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$LEDDirection;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$LEDDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$LEDDirection;->ALL:Lcom/dspread/xpos/QPOSService$LEDDirection;

    new-instance v0, Lcom/dspread/xpos/QPOSService$LEDDirection;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$LEDDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$LEDDirection;->LEFT:Lcom/dspread/xpos/QPOSService$LEDDirection;

    new-instance v0, Lcom/dspread/xpos/QPOSService$LEDDirection;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$LEDDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$LEDDirection;->RIGHT:Lcom/dspread/xpos/QPOSService$LEDDirection;

    new-instance v0, Lcom/dspread/xpos/QPOSService$LEDDirection;

    const-string v1, "UP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$LEDDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$LEDDirection;->UP:Lcom/dspread/xpos/QPOSService$LEDDirection;

    new-instance v0, Lcom/dspread/xpos/QPOSService$LEDDirection;

    const-string v1, "DOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$LEDDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$LEDDirection;->DOWN:Lcom/dspread/xpos/QPOSService$LEDDirection;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$LEDDirection;->a()[Lcom/dspread/xpos/QPOSService$LEDDirection;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$LEDDirection;->a:[Lcom/dspread/xpos/QPOSService$LEDDirection;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$LEDDirection;
    .locals 3

    .line 1
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$LEDDirection;

    sget-object v1, Lcom/dspread/xpos/QPOSService$LEDDirection;->ALL:Lcom/dspread/xpos/QPOSService$LEDDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$LEDDirection;->LEFT:Lcom/dspread/xpos/QPOSService$LEDDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$LEDDirection;->RIGHT:Lcom/dspread/xpos/QPOSService$LEDDirection;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$LEDDirection;->UP:Lcom/dspread/xpos/QPOSService$LEDDirection;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$LEDDirection;->DOWN:Lcom/dspread/xpos/QPOSService$LEDDirection;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$LEDDirection;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$LEDDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$LEDDirection;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$LEDDirection;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$LEDDirection;->a:[Lcom/dspread/xpos/QPOSService$LEDDirection;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$LEDDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$LEDDirection;

    return-object v0
.end method
