.class public final enum Lcom/dspread/xpos/Vpos$UPDATE_STATE;
.super Ljava/lang/Enum;
.source "Vpos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/Vpos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "UPDATE_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/Vpos$UPDATE_STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGAIN:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

.field public static final enum FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

.field public static final enum LOWPOWER:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

.field public static final enum PACKED_ERROR:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

.field public static final enum SUCCESS:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

.field public static final enum USBRECONNECT:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

.field private static final synthetic a:[Lcom/dspread/xpos/Vpos$UPDATE_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Vpos$UPDATE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->SUCCESS:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    new-instance v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const-string v1, "FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Vpos$UPDATE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    new-instance v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const-string v1, "LOWPOWER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Vpos$UPDATE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->LOWPOWER:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    new-instance v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const-string v1, "PACKED_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Vpos$UPDATE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->PACKED_ERROR:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    new-instance v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const-string v1, "AGAIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Vpos$UPDATE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->AGAIN:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    new-instance v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const-string v1, "USBRECONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Vpos$UPDATE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->USBRECONNECT:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->a()[Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->a:[Lcom/dspread/xpos/Vpos$UPDATE_STATE;

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

.method private static synthetic a()[Lcom/dspread/xpos/Vpos$UPDATE_STATE;
    .locals 3

    .line 1
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    sget-object v1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->SUCCESS:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->FAIL:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->LOWPOWER:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->PACKED_ERROR:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->AGAIN:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->USBRECONNECT:Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/Vpos$UPDATE_STATE;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/Vpos$UPDATE_STATE;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/Vpos$UPDATE_STATE;->a:[Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    invoke-virtual {v0}, [Lcom/dspread/xpos/Vpos$UPDATE_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/Vpos$UPDATE_STATE;

    return-object v0
.end method
