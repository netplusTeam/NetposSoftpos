.class public final enum Lcom/dspread/xpos/SaveCustomParam$CustomParam;
.super Ljava/lang/Enum;
.source "SaveCustomParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/SaveCustomParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "CustomParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/SaveCustomParam$CustomParam;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM_PARAM_SEG_CUSTOM1:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

.field public static final enum CUSTOM_PARAM_SEG_CUSTOM2:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

.field public static final enum CUSTOM_PARAM_SEG_EMV_APP:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

.field public static final enum CUSTOM_PARAM_SEG_EMV_CAPK:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

.field private static final synthetic a:[Lcom/dspread/xpos/SaveCustomParam$CustomParam;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    const-string v1, "CUSTOM_PARAM_SEG_CUSTOM1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/SaveCustomParam$CustomParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_CUSTOM1:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    .line 2
    new-instance v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    const-string v1, "CUSTOM_PARAM_SEG_CUSTOM2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/SaveCustomParam$CustomParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_CUSTOM2:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    .line 3
    new-instance v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    const-string v1, "CUSTOM_PARAM_SEG_EMV_APP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/SaveCustomParam$CustomParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_APP:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    .line 4
    new-instance v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    const-string v1, "CUSTOM_PARAM_SEG_EMV_CAPK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/SaveCustomParam$CustomParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_CAPK:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    .line 5
    invoke-static {}, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->a()[Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->a:[Lcom/dspread/xpos/SaveCustomParam$CustomParam;

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

.method private static synthetic a()[Lcom/dspread/xpos/SaveCustomParam$CustomParam;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_CUSTOM1:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_CUSTOM2:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_APP:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->CUSTOM_PARAM_SEG_EMV_CAPK:Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/SaveCustomParam$CustomParam;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/SaveCustomParam$CustomParam;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$CustomParam;->a:[Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    invoke-virtual {v0}, [Lcom/dspread/xpos/SaveCustomParam$CustomParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/SaveCustomParam$CustomParam;

    return-object v0
.end method
