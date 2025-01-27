.class public final enum Lcom/dspread/xpos/QPOSService$KeyType;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMV_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

.field public static final enum MAC_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

.field public static final enum PIN_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

.field public static final enum TRACK_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$KeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$KeyType;

    const-string v1, "TRACK_KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$KeyType;->TRACK_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$KeyType;

    const-string v1, "PIN_KEY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$KeyType;->PIN_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$KeyType;

    const-string v1, "EMV_KEY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$KeyType;->EMV_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$KeyType;

    const-string v1, "MAC_KEY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$KeyType;->MAC_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$KeyType;->a()[Lcom/dspread/xpos/QPOSService$KeyType;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$KeyType;->a:[Lcom/dspread/xpos/QPOSService$KeyType;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$KeyType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$KeyType;

    sget-object v1, Lcom/dspread/xpos/QPOSService$KeyType;->TRACK_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$KeyType;->PIN_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$KeyType;->EMV_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$KeyType;->MAC_KEY:Lcom/dspread/xpos/QPOSService$KeyType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$KeyType;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$KeyType;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$KeyType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$KeyType;->a:[Lcom/dspread/xpos/QPOSService$KeyType;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$KeyType;

    return-object v0
.end method
