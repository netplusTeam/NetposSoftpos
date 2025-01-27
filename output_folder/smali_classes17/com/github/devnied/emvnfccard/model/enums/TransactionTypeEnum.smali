.class public final enum Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;
.super Ljava/lang/Enum;
.source "TransactionTypeEnum.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;",
        ">;",
        "Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

.field public static final enum CASHBACK:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

.field public static final enum CASH_ADVANCE:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

.field public static final enum LOADED:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

.field public static final enum PURCHASE:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

.field public static final enum REFUND:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

.field public static final enum UNLOADED:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 29
    new-instance v0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    const-string v1, "PURCHASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->PURCHASE:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    .line 33
    new-instance v1, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    const-string v3, "CASH_ADVANCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->CASH_ADVANCE:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    .line 37
    new-instance v3, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    const-string v5, "CASHBACK"

    const/4 v6, 0x2

    const/16 v7, 0x9

    invoke-direct {v3, v5, v6, v7}, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->CASHBACK:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    .line 41
    new-instance v5, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    const-string v7, "REFUND"

    const/4 v8, 0x3

    const/16 v9, 0x20

    invoke-direct {v5, v7, v8, v9}, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->REFUND:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    .line 46
    new-instance v7, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    const-string v9, "LOADED"

    const/4 v10, 0x4

    const/16 v11, 0xfe

    invoke-direct {v7, v9, v10, v11}, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->LOADED:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    .line 50
    new-instance v9, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    const-string v11, "UNLOADED"

    const/4 v12, 0x5

    const/16 v13, 0xff

    invoke-direct {v9, v11, v12, v13}, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->UNLOADED:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    .line 24
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->value:I

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;
    .locals 1

    .line 24
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->value:I

    return v0
.end method
