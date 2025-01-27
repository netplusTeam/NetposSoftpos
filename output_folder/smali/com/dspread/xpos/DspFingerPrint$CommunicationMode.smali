.class public final enum Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;
.super Ljava/lang/Enum;
.source "DspFingerPrint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/DspFingerPrint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommunicationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUETOOTH:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

.field public static final enum UNKNOW:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

.field public static final enum USB_OTG_CDC_ACM:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

.field private static final synthetic a:[Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    const-string v1, "BLUETOOTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->BLUETOOTH:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    const-string v1, "UNKNOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->UNKNOW:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    const-string v1, "USB_OTG_CDC_ACM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->USB_OTG_CDC_ACM:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->a()[Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->a:[Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

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

.method private static synthetic a()[Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->BLUETOOTH:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->UNKNOW:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->USB_OTG_CDC_ACM:Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->a:[Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    invoke-virtual {v0}, [Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/DspFingerPrint$CommunicationMode;

    return-object v0
.end method
