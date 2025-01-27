.class public final enum Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/UserInterfaceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIRDStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CARD_READ_SUCCESSFULLY:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

.field public static final enum IDLE:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

.field public static final enum NA:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

.field public static final enum NOT_READY:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

.field public static final enum PROCESSING:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

.field public static final enum PROCESSING_ERROR:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

.field public static final enum READY_TO_READ:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

.field private static final synthetic c:[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;


# instance fields
.field private b:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    const-string v3, "NOT READY"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->NOT_READY:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v3}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->IDLE:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    const-string v5, "READY_TO_READ"

    const/4 v6, 0x2

    const-string v7, "READY TO READ"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->READY_TO_READ:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    const-string v7, "PROCESSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v7}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->PROCESSING:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    new-instance v7, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    const-string v9, "CARD_READ_SUCCESSFULLY"

    const/4 v10, 0x4

    const-string v11, "CARD READ SUCCESSFULLY"

    invoke-direct {v7, v9, v10, v10, v11}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->CARD_READ_SUCCESSFULLY:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    new-instance v9, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    const-string v11, "PROCESSING_ERROR"

    const/4 v12, 0x5

    const-string v13, "PROCESSING ERROR"

    invoke-direct {v9, v11, v12, v12, v13}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->PROCESSING_ERROR:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    new-instance v11, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    const-string v13, "NA"

    const/4 v14, 0x6

    const/16 v15, 0xff

    invoke-direct {v11, v13, v14, v15, v13}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->NA:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->c:[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->e:I

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->c:[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    return-object v0
.end method


# virtual methods
.method public getUIRDStatus()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->e:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->b:Ljava/lang/String;

    return-object v0
.end method
