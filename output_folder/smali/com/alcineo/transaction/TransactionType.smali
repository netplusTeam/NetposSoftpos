.class public final enum Lcom/alcineo/transaction/TransactionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/transaction/TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CASH:Lcom/alcineo/transaction/TransactionType;

.field public static final enum CASHBACK:Lcom/alcineo/transaction/TransactionType;

.field public static final enum CASH_DEPOSIT:Lcom/alcineo/transaction/TransactionType;

.field public static final enum CASH_DISBURSEMENT:Lcom/alcineo/transaction/TransactionType;

.field public static final enum CUSTOM:Lcom/alcineo/transaction/TransactionType;

.field public static final enum CUSTOMER_PAYMENT:Lcom/alcineo/transaction/TransactionType;

.field public static final enum GETDATA:Lcom/alcineo/transaction/TransactionType;

.field public static final enum INVALID:Lcom/alcineo/transaction/TransactionType;

.field public static final enum MANUAL_CASH:Lcom/alcineo/transaction/TransactionType;

.field public static final enum PRE_AUTH:Lcom/alcineo/transaction/TransactionType;

.field public static final enum PURCHASE:Lcom/alcineo/transaction/TransactionType;

.field public static final enum PURCHASE_CORRECTION:Lcom/alcineo/transaction/TransactionType;

.field public static final enum PUTDATA:Lcom/alcineo/transaction/TransactionType;

.field public static final enum REFUND:Lcom/alcineo/transaction/TransactionType;

.field public static final enum REFUND_CORRECTION:Lcom/alcineo/transaction/TransactionType;

.field private static final synthetic noaceli:[Lcom/alcineo/transaction/TransactionType;


# instance fields
.field private acileon:I

.field private aoleinc:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/alcineo/transaction/TransactionType;

    const-string v1, "PURCHASE"

    const/4 v2, 0x0

    const-string v3, "Purchase"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alcineo/transaction/TransactionType;->PURCHASE:Lcom/alcineo/transaction/TransactionType;

    new-instance v1, Lcom/alcineo/transaction/TransactionType;

    const-string v3, "CASH"

    const/4 v4, 0x1

    const-string v5, "Cash"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/alcineo/transaction/TransactionType;->CASH:Lcom/alcineo/transaction/TransactionType;

    new-instance v3, Lcom/alcineo/transaction/TransactionType;

    const-string v5, "PURCHASE_CORRECTION"

    const/4 v6, 0x2

    const-string v7, "Purchase Correction"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/alcineo/transaction/TransactionType;->PURCHASE_CORRECTION:Lcom/alcineo/transaction/TransactionType;

    new-instance v5, Lcom/alcineo/transaction/TransactionType;

    const-string v7, "PRE_AUTH"

    const/4 v8, 0x3

    const-string v9, "Pre-Auth"

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/alcineo/transaction/TransactionType;->PRE_AUTH:Lcom/alcineo/transaction/TransactionType;

    new-instance v7, Lcom/alcineo/transaction/TransactionType;

    const-string v9, "CASHBACK"

    const/4 v10, 0x4

    const/16 v11, 0x9

    const-string v12, "Cashback"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/alcineo/transaction/TransactionType;->CASHBACK:Lcom/alcineo/transaction/TransactionType;

    new-instance v9, Lcom/alcineo/transaction/TransactionType;

    const-string v12, "MANUAL_CASH"

    const/4 v13, 0x5

    const/16 v14, 0x12

    const-string v15, "Manual Cash"

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/alcineo/transaction/TransactionType;->MANUAL_CASH:Lcom/alcineo/transaction/TransactionType;

    new-instance v12, Lcom/alcineo/transaction/TransactionType;

    const-string v14, "CASH_DISBURSEMENT"

    const/4 v15, 0x6

    const/16 v13, 0x17

    const-string v10, "Cash Disbursement"

    invoke-direct {v12, v14, v15, v13, v10}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/alcineo/transaction/TransactionType;->CASH_DISBURSEMENT:Lcom/alcineo/transaction/TransactionType;

    new-instance v10, Lcom/alcineo/transaction/TransactionType;

    const-string v13, "REFUND"

    const/4 v14, 0x7

    const/16 v15, 0x20

    const-string v8, "Refund"

    invoke-direct {v10, v13, v14, v15, v8}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/alcineo/transaction/TransactionType;->REFUND:Lcom/alcineo/transaction/TransactionType;

    new-instance v8, Lcom/alcineo/transaction/TransactionType;

    const-string v13, "CASH_DEPOSIT"

    const/16 v15, 0x8

    const/16 v14, 0x21

    const-string v6, "Cash deposit"

    invoke-direct {v8, v13, v15, v14, v6}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/alcineo/transaction/TransactionType;->CASH_DEPOSIT:Lcom/alcineo/transaction/TransactionType;

    new-instance v6, Lcom/alcineo/transaction/TransactionType;

    const-string v13, "REFUND_CORRECTION"

    const/16 v14, 0x22

    const-string v15, "Refund Correction"

    invoke-direct {v6, v13, v11, v14, v15}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/alcineo/transaction/TransactionType;->REFUND_CORRECTION:Lcom/alcineo/transaction/TransactionType;

    new-instance v13, Lcom/alcineo/transaction/TransactionType;

    const-string v14, "CUSTOMER_PAYMENT"

    const/16 v15, 0xa

    const/16 v11, 0x50

    const-string v4, "Customer Payment"

    invoke-direct {v13, v14, v15, v11, v4}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/alcineo/transaction/TransactionType;->CUSTOMER_PAYMENT:Lcom/alcineo/transaction/TransactionType;

    new-instance v4, Lcom/alcineo/transaction/TransactionType;

    const-string v11, "GETDATA"

    const/16 v14, 0xb

    const/16 v15, 0x78

    const-string v2, "Get Data"

    invoke-direct {v4, v11, v14, v15, v2}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/alcineo/transaction/TransactionType;->GETDATA:Lcom/alcineo/transaction/TransactionType;

    new-instance v2, Lcom/alcineo/transaction/TransactionType;

    const-string v11, "PUTDATA"

    const/16 v15, 0xc

    const/16 v14, 0x79

    move-object/from16 v16, v4

    const-string v4, "Put Data"

    invoke-direct {v2, v11, v15, v14, v4}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/alcineo/transaction/TransactionType;->PUTDATA:Lcom/alcineo/transaction/TransactionType;

    new-instance v4, Lcom/alcineo/transaction/TransactionType;

    const-string v11, "INVALID"

    const/16 v14, 0xd

    const/16 v15, 0x88

    move-object/from16 v17, v2

    const-string v2, "Invalid"

    invoke-direct {v4, v11, v14, v15, v2}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/alcineo/transaction/TransactionType;->INVALID:Lcom/alcineo/transaction/TransactionType;

    new-instance v2, Lcom/alcineo/transaction/TransactionType;

    const-string v11, "CUSTOM"

    const/16 v15, 0xe

    const/16 v14, 0xfe

    move-object/from16 v18, v4

    const-string v4, "Custom"

    invoke-direct {v2, v11, v15, v14, v4}, Lcom/alcineo/transaction/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/alcineo/transaction/TransactionType;->CUSTOM:Lcom/alcineo/transaction/TransactionType;

    const/16 v4, 0xf

    new-array v4, v4, [Lcom/alcineo/transaction/TransactionType;

    const/4 v11, 0x0

    aput-object v0, v4, v11

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v12, v4, v0

    const/4 v0, 0x7

    aput-object v10, v4, v0

    const/16 v0, 0x8

    aput-object v8, v4, v0

    const/16 v0, 0x9

    aput-object v6, v4, v0

    const/16 v0, 0xa

    aput-object v13, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    aput-object v2, v4, v15

    sput-object v4, Lcom/alcineo/transaction/TransactionType;->noaceli:[Lcom/alcineo/transaction/TransactionType;

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

    iput p3, p0, Lcom/alcineo/transaction/TransactionType;->acileon:I

    iput-object p4, p0, Lcom/alcineo/transaction/TransactionType;->aoleinc:Ljava/lang/String;

    return-void
.end method

.method public static getStringValues()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/alcineo/transaction/TransactionType;->values()[Lcom/alcineo/transaction/TransactionType;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/alcineo/transaction/TransactionType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getTransactionTypeFromid(I)Lcom/alcineo/transaction/TransactionType;
    .locals 3

    invoke-static {}, Lcom/alcineo/transaction/TransactionType;->values()[Lcom/alcineo/transaction/TransactionType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alcineo/transaction/TransactionType;

    iget v2, v1, Lcom/alcineo/transaction/TransactionType;->acileon:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    sget-object p0, Lcom/alcineo/transaction/TransactionType;->CUSTOM:Lcom/alcineo/transaction/TransactionType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/transaction/TransactionType;
    .locals 1

    const-class v0, Lcom/alcineo/transaction/TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/transaction/TransactionType;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/transaction/TransactionType;
    .locals 1

    sget-object v0, Lcom/alcineo/transaction/TransactionType;->noaceli:[Lcom/alcineo/transaction/TransactionType;

    invoke-virtual {v0}, [Lcom/alcineo/transaction/TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/transaction/TransactionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/alcineo/transaction/TransactionType;->acileon:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alcineo/transaction/TransactionType;->aoleinc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
