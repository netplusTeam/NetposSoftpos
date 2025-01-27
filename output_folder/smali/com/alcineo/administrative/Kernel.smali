.class public final enum Lcom/alcineo/administrative/Kernel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/administrative/Kernel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum K_CONTACT:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_CPACE:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_DISCOVER:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_EFTPOS:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_EXPRESS_PAY:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_GIROCARD:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_INTERAC:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_JCB:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_MCL:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_MSR:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_PAGOBANCOMAT:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_PAYWAVE:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_PURE:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_TOTAL:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_UNIONPAY:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_UNKNOWN:Lcom/alcineo/administrative/Kernel;

.field public static final enum K_VISAP_AP:Lcom/alcineo/administrative/Kernel;

.field private static final synthetic noaceli:[Lcom/alcineo/administrative/Kernel;


# instance fields
.field private final acileon:Ljava/lang/String;

.field private final aoleinc:B


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v0, Lcom/alcineo/administrative/Kernel;

    const-string v1, "K_VISAP_AP"

    const/4 v2, 0x0

    const-string v3, "Visa AP"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v0, Lcom/alcineo/administrative/Kernel;->K_VISAP_AP:Lcom/alcineo/administrative/Kernel;

    new-instance v1, Lcom/alcineo/administrative/Kernel;

    const-string v3, "K_MCL"

    const-string v5, "MCL"

    const/4 v6, 0x2

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v1, Lcom/alcineo/administrative/Kernel;->K_MCL:Lcom/alcineo/administrative/Kernel;

    new-instance v3, Lcom/alcineo/administrative/Kernel;

    const-string v5, "K_PAYWAVE"

    const-string v7, "Paywave"

    const/4 v8, 0x3

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v3, Lcom/alcineo/administrative/Kernel;->K_PAYWAVE:Lcom/alcineo/administrative/Kernel;

    new-instance v5, Lcom/alcineo/administrative/Kernel;

    const-string v7, "K_EXPRESS_PAY"

    const-string v9, "Express Pay"

    const/4 v10, 0x4

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v5, Lcom/alcineo/administrative/Kernel;->K_EXPRESS_PAY:Lcom/alcineo/administrative/Kernel;

    new-instance v7, Lcom/alcineo/administrative/Kernel;

    const-string v9, "K_JCB"

    const-string v11, "JCB"

    const/4 v12, 0x5

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v7, Lcom/alcineo/administrative/Kernel;->K_JCB:Lcom/alcineo/administrative/Kernel;

    new-instance v9, Lcom/alcineo/administrative/Kernel;

    const-string v11, "K_DISCOVER"

    const-string v13, "Discover"

    const/4 v14, 0x6

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v9, Lcom/alcineo/administrative/Kernel;->K_DISCOVER:Lcom/alcineo/administrative/Kernel;

    new-instance v11, Lcom/alcineo/administrative/Kernel;

    const-string v13, "K_UNIONPAY"

    const-string v15, "UnionPay"

    const/4 v12, 0x7

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v11, Lcom/alcineo/administrative/Kernel;->K_UNIONPAY:Lcom/alcineo/administrative/Kernel;

    new-instance v13, Lcom/alcineo/administrative/Kernel;

    const-string v15, "K_CONTACT"

    const-string v14, "Contact"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v14, v10}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v13, Lcom/alcineo/administrative/Kernel;->K_CONTACT:Lcom/alcineo/administrative/Kernel;

    new-instance v14, Lcom/alcineo/administrative/Kernel;

    const-string v15, "K_MSR"

    const-string v12, "MSR"

    const/16 v8, 0x9

    invoke-direct {v14, v15, v10, v12, v8}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v14, Lcom/alcineo/administrative/Kernel;->K_MSR:Lcom/alcineo/administrative/Kernel;

    new-instance v12, Lcom/alcineo/administrative/Kernel;

    const-string v15, "K_INTERAC"

    const-string v10, "Interac"

    const/16 v6, 0xa

    invoke-direct {v12, v15, v8, v10, v6}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v12, Lcom/alcineo/administrative/Kernel;->K_INTERAC:Lcom/alcineo/administrative/Kernel;

    new-instance v10, Lcom/alcineo/administrative/Kernel;

    const-string v15, "K_PAGOBANCOMAT"

    const-string v8, "PagoBANCOMAT"

    const/16 v4, 0xb

    invoke-direct {v10, v15, v6, v8, v4}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v10, Lcom/alcineo/administrative/Kernel;->K_PAGOBANCOMAT:Lcom/alcineo/administrative/Kernel;

    new-instance v8, Lcom/alcineo/administrative/Kernel;

    const-string v15, "K_EFTPOS"

    const-string v6, "EFTPOS"

    const/16 v2, 0xc

    invoke-direct {v8, v15, v4, v6, v2}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v8, Lcom/alcineo/administrative/Kernel;->K_EFTPOS:Lcom/alcineo/administrative/Kernel;

    new-instance v6, Lcom/alcineo/administrative/Kernel;

    const-string v15, "K_GIROCARD"

    const-string v4, "Girocard"

    move-object/from16 v16, v8

    const/16 v8, 0x2a

    invoke-direct {v6, v15, v2, v4, v8}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v6, Lcom/alcineo/administrative/Kernel;->K_GIROCARD:Lcom/alcineo/administrative/Kernel;

    new-instance v4, Lcom/alcineo/administrative/Kernel;

    const-string v8, "K_TOTAL"

    const/16 v15, 0xd

    const-string v2, "Total"

    move-object/from16 v17, v6

    const/16 v6, 0x2b

    invoke-direct {v4, v8, v15, v2, v6}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v4, Lcom/alcineo/administrative/Kernel;->K_TOTAL:Lcom/alcineo/administrative/Kernel;

    new-instance v2, Lcom/alcineo/administrative/Kernel;

    const-string v6, "K_CPACE"

    const/16 v8, 0xe

    const-string v15, "CPACE"

    move-object/from16 v18, v4

    const/16 v4, 0x2e

    invoke-direct {v2, v6, v8, v15, v4}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v2, Lcom/alcineo/administrative/Kernel;->K_CPACE:Lcom/alcineo/administrative/Kernel;

    new-instance v4, Lcom/alcineo/administrative/Kernel;

    const-string v6, "K_PURE"

    const/16 v15, 0xf

    const-string v8, "Pure"

    move-object/from16 v19, v2

    const/16 v2, 0x30

    invoke-direct {v4, v6, v15, v8, v2}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v4, Lcom/alcineo/administrative/Kernel;->K_PURE:Lcom/alcineo/administrative/Kernel;

    new-instance v2, Lcom/alcineo/administrative/Kernel;

    const-string v6, "K_UNKNOWN"

    const/16 v8, 0x10

    const-string v15, "Unknown"

    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-direct {v2, v6, v8, v15, v4}, Lcom/alcineo/administrative/Kernel;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v2, Lcom/alcineo/administrative/Kernel;->K_UNKNOWN:Lcom/alcineo/administrative/Kernel;

    const/16 v6, 0x11

    new-array v6, v6, [Lcom/alcineo/administrative/Kernel;

    aput-object v0, v6, v4

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v14, v6, v0

    const/16 v0, 0x9

    aput-object v12, v6, v0

    const/16 v0, 0xa

    aput-object v10, v6, v0

    const/16 v0, 0xb

    aput-object v16, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    const/16 v0, 0xf

    aput-object v20, v6, v0

    aput-object v2, v6, v8

    sput-object v6, Lcom/alcineo/administrative/Kernel;->noaceli:[Lcom/alcineo/administrative/Kernel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alcineo/administrative/Kernel;->acileon:Ljava/lang/String;

    iput-byte p4, p0, Lcom/alcineo/administrative/Kernel;->aoleinc:B

    return-void
.end method

.method public static forId(B)Lcom/alcineo/administrative/Kernel;
    .locals 5

    invoke-static {}, Lcom/alcineo/administrative/Kernel;->values()[Lcom/alcineo/administrative/Kernel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-byte v4, v3, Lcom/alcineo/administrative/Kernel;->aoleinc:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/alcineo/administrative/Kernel;->K_UNKNOWN:Lcom/alcineo/administrative/Kernel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/administrative/Kernel;
    .locals 1

    const-class v0, Lcom/alcineo/administrative/Kernel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/administrative/Kernel;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/administrative/Kernel;
    .locals 1

    sget-object v0, Lcom/alcineo/administrative/Kernel;->noaceli:[Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v0}, [Lcom/alcineo/administrative/Kernel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/administrative/Kernel;

    return-object v0
.end method


# virtual methods
.method public getId()B
    .locals 1

    iget-byte v0, p0, Lcom/alcineo/administrative/Kernel;->aoleinc:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alcineo/administrative/Kernel;->acileon:Ljava/lang/String;

    return-object v0
.end method
