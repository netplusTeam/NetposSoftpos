.class final enum Lcom/dspread/xpos/utils/DeviceModelUtils$Model;
.super Ljava/lang/Enum;
.source "DeviceModelUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/utils/DeviceModelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/utils/DeviceModelUtils$Model;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum D20:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

.field public static final enum D30:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

.field public static final enum D50:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

.field public static final enum D60:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

.field public static final enum FP9810:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

.field public static final enum MP600:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

.field private static final synthetic a:[Lcom/dspread/xpos/utils/DeviceModelUtils$Model;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const-string v1, "D20"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D20:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    new-instance v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const-string v1, "D30"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D30:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    new-instance v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const-string v1, "D60"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D60:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    new-instance v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const-string v1, "MP600"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->MP600:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    new-instance v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const-string v1, "FP9810"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->FP9810:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    new-instance v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const-string v1, "D50"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D50:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->a()[Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->a:[Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

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

.method private static synthetic a()[Lcom/dspread/xpos/utils/DeviceModelUtils$Model;
    .locals 3

    .line 1
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D20:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D30:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D60:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->MP600:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->FP9810:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->D50:Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/utils/DeviceModelUtils$Model;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/utils/DeviceModelUtils$Model;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->a:[Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    invoke-virtual {v0}, [Lcom/dspread/xpos/utils/DeviceModelUtils$Model;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/utils/DeviceModelUtils$Model;

    return-object v0
.end method
