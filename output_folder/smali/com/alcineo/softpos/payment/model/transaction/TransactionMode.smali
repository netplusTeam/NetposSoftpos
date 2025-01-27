.class public final enum Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

.field public static final enum MODE_CONTACTLESS:Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

.field public static final enum MODE_EMV_CHIP:Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

.field public static final enum MODE_MAGNETIC_STRIPE:Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

.field public static final enum MODE_MSD:Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

.field private static final TRANSACTION_MODES:[Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;


# instance fields
.field private final hexValue:I

.field private final mode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    const-string v1, "MODE_CONTACTLESS"

    const/4 v2, 0x0

    const/4 v3, 0x7

    const-string v4, "MODE  : Contactless"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->MODE_CONTACTLESS:Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    new-instance v1, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    const-string v3, "MODE_EMV_CHIP"

    const/4 v4, 0x1

    const/4 v5, 0x5

    const-string v6, "MODE  : EMV Chip"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->MODE_EMV_CHIP:Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    new-instance v3, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    const-string v5, "MODE_MAGNETIC_STRIPE"

    const/4 v6, 0x2

    const/16 v7, 0x42

    const-string v8, "MODE  : Magnetic stripe"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->MODE_MAGNETIC_STRIPE:Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    new-instance v5, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    const-string v7, "MODE_MSD"

    const/4 v8, 0x3

    const/16 v9, 0x91

    const-string v10, "MODE  : MSD"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->MODE_MSD:Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->$VALUES:[Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    invoke-static {}, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->values()[Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->TRANSACTION_MODES:[Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

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

    iput p3, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->hexValue:I

    iput-object p4, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->mode:Ljava/lang/String;

    return-void
.end method

.method public static getMode(I)Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;
    .locals 5

    sget-object v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->TRANSACTION_MODES:[Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->getHexValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->MODE_CONTACTLESS:Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->$VALUES:[Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;

    return-object v0
.end method


# virtual methods
.method public getHexValue()I
    .locals 1

    iget v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->hexValue:I

    return v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionMode;->mode:Ljava/lang/String;

    return-object v0
.end method
