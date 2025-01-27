.class public final enum Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;
.super Ljava/lang/Enum;
.source "DspFingerPrint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/DspFingerPrint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LcdModeAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LCD_MODE_ALIGNCENTER:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

.field public static final enum LCD_MODE_ALIGNLEFT:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

.field public static final enum LCD_MODE_ALIGNRIGHT:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

.field private static final synthetic a:[Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    const-string v1, "LCD_MODE_ALIGNLEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->LCD_MODE_ALIGNLEFT:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    .line 2
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    const-string v1, "LCD_MODE_ALIGNRIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->LCD_MODE_ALIGNRIGHT:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    .line 3
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    const-string v1, "LCD_MODE_ALIGNCENTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->LCD_MODE_ALIGNCENTER:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    .line 4
    invoke-static {}, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->a()[Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->a:[Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

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

.method private static synthetic a()[Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->LCD_MODE_ALIGNLEFT:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->LCD_MODE_ALIGNRIGHT:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->LCD_MODE_ALIGNCENTER:Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->a:[Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    invoke-virtual {v0}, [Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/DspFingerPrint$LcdModeAlign;

    return-object v0
.end method
