.class public final enum Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;
.super Ljava/lang/Enum;
.source "DspFingerPrint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/DspFingerPrint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BTCONNTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

.field public static final enum NEWAPI:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

.field public static final enum OLDAPI:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

.field private static final synthetic a:[Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->AUTO:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    const-string v1, "OLDAPI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->OLDAPI:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    const-string v1, "NEWAPI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->NEWAPI:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    invoke-static {}, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->a()[Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->a:[Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

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

.method private static synthetic a()[Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->AUTO:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->OLDAPI:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->NEWAPI:Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->a:[Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    invoke-virtual {v0}, [Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/DspFingerPrint$BTCONNTYPE;

    return-object v0
.end method
