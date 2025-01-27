.class public final enum Lcom/mastercard/terminalsdk/objects/TerminalType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/TerminalType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum b:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum c:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum d:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum e:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum f:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum g:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum h:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum i:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum j:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field private static final synthetic l:[Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum m:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum n:Lcom/mastercard/terminalsdk/objects/TerminalType;

.field public static final enum o:Lcom/mastercard/terminalsdk/objects/TerminalType;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v1, "OFFLINE_ONLY_FINANCIAL_INSTITUTION_UNATTENDED"

    const/4 v2, 0x0

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/TerminalType;->d:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v3, "OFFLINE_ONLY_FINANCIAL_INSTITUTION_ATTENDED"

    const/4 v4, 0x1

    const/16 v5, 0x13

    invoke-direct {v1, v3, v4, v5}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/TerminalType;->a:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v5, "OFFLINE_ONLY_CARDHOLDER_UNATTENDED"

    const/4 v6, 0x2

    const/16 v7, 0x36

    invoke-direct {v3, v5, v6, v7}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/TerminalType;->b:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v7, "OFFLINE_ONLY_MERCHANT_UNATTENDED"

    const/4 v8, 0x3

    const/16 v9, 0x26

    invoke-direct {v5, v7, v8, v9}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/TerminalType;->c:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v7, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v9, "OFFLINE_ONLY_MERCHANT_ATTENDED"

    const/4 v10, 0x4

    const/16 v11, 0x23

    invoke-direct {v7, v9, v10, v11}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/mastercard/terminalsdk/objects/TerminalType;->e:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v9, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v11, "OFFLINE_ONLY_FINANCIAL_INSTITUTION_WITH_ONLINE_CAPABILITY_ATTENDED"

    const/4 v12, 0x5

    const/16 v13, 0x12

    invoke-direct {v9, v11, v12, v13}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/mastercard/terminalsdk/objects/TerminalType;->f:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v11, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v13, "ONLINE_ONLY_CARDHOLDER_UNATTENDED"

    const/4 v14, 0x6

    const/16 v15, 0x34

    invoke-direct {v11, v13, v14, v15}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/mastercard/terminalsdk/objects/TerminalType;->j:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v13, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v15, "ONLINE_ONLY_MERCHANT_UNATTENDED"

    const/4 v14, 0x7

    const/16 v12, 0x24

    invoke-direct {v13, v15, v14, v12}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/mastercard/terminalsdk/objects/TerminalType;->g:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v12, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v15, "ONLINE_ONLY_FINANCIAL_INSTITUTION_UNATTENDED"

    const/16 v14, 0x8

    const/16 v10, 0x14

    invoke-direct {v12, v15, v14, v10}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/mastercard/terminalsdk/objects/TerminalType;->i:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v10, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v15, "OFFLINE_ONLY_MERCHANT_WITH_ONLINE_CAPABILITY_ATTENDED"

    const/16 v14, 0x9

    const/16 v8, 0x22

    invoke-direct {v10, v15, v14, v8}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/mastercard/terminalsdk/objects/TerminalType;->h:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v8, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v15, "ONLINE_ONLY_MERCHANT_ATTENDED"

    const/16 v14, 0xa

    const/16 v6, 0x21

    invoke-direct {v8, v15, v14, v6}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/mastercard/terminalsdk/objects/TerminalType;->o:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v15, "ONLINE_ONLY_FINANCIAL_INSTITUTION_ATTENDED"

    const/16 v14, 0xb

    const/16 v4, 0x11

    invoke-direct {v6, v15, v14, v4}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/TerminalType;->n:Lcom/mastercard/terminalsdk/objects/TerminalType;

    new-instance v4, Lcom/mastercard/terminalsdk/objects/TerminalType;

    const-string v15, "ONLINE_CAPABLE_FINANCIAL_INSTITUTION_UNATTENDED"

    const/16 v14, 0xc

    const/16 v2, 0x15

    invoke-direct {v4, v15, v14, v2}, Lcom/mastercard/terminalsdk/objects/TerminalType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/mastercard/terminalsdk/objects/TerminalType;->m:Lcom/mastercard/terminalsdk/objects/TerminalType;

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/mastercard/terminalsdk/objects/TerminalType;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    aput-object v4, v2, v14

    sput-object v2, Lcom/mastercard/terminalsdk/objects/TerminalType;->l:[Lcom/mastercard/terminalsdk/objects/TerminalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mastercard/terminalsdk/objects/TerminalType;->k:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/TerminalType;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/TerminalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/TerminalType;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/TerminalType;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/TerminalType;->l:[Lcom/mastercard/terminalsdk/objects/TerminalType;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/TerminalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/TerminalType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/TerminalType;->k:I

    return v0
.end method
