.class public final enum Lorg/jpos/iso/PosDataCode$POSEnvironment;
.super Ljava/lang/Enum;
.source "PosDataCode.java"

# interfaces
.implements Lorg/jpos/iso/PosDataCode$Flag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/PosDataCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POSEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/iso/PosDataCode$POSEnvironment;",
        ">;",
        "Lorg/jpos/iso/PosDataCode$Flag;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum ATM_OFF_BANK:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum ATM_ON_BANK:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum ATTENDED:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum CAT:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum DEFERRED_TRANSACTION:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum E_COMMERCE:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum INSTALLMENT_TRANSACTION:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum MOTO:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum M_COMMERCE:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static OFFSET:I

.field public static final enum RECURRING:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum STORED_DETAILS:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum UNATTENDED:Lorg/jpos/iso/PosDataCode$POSEnvironment;

.field public static final enum UNKNOWN:Lorg/jpos/iso/PosDataCode$POSEnvironment;


# instance fields
.field private description:Ljava/lang/String;

.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 99
    new-instance v0, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Unknown"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jpos/iso/PosDataCode$POSEnvironment;->UNKNOWN:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 100
    new-instance v1, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v4, "ATTENDED"

    const/4 v5, 0x2

    const-string v6, "Attended POS"

    invoke-direct {v1, v4, v3, v5, v6}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/jpos/iso/PosDataCode$POSEnvironment;->ATTENDED:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 101
    new-instance v4, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v6, "UNATTENDED"

    const/4 v7, 0x4

    const-string v8, "Unattended, details unknown"

    invoke-direct {v4, v6, v5, v7, v8}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/jpos/iso/PosDataCode$POSEnvironment;->UNATTENDED:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 102
    new-instance v6, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v8, "MOTO"

    const/4 v9, 0x3

    const/16 v10, 0x8

    const-string v11, "Mail order / telephone order"

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/jpos/iso/PosDataCode$POSEnvironment;->MOTO:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 103
    new-instance v8, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v11, "E_COMMERCE"

    const/16 v12, 0x10

    const-string v13, "E-Commerce"

    invoke-direct {v8, v11, v7, v12, v13}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/jpos/iso/PosDataCode$POSEnvironment;->E_COMMERCE:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 104
    new-instance v11, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v12, "M_COMMERCE"

    const/4 v13, 0x5

    const/16 v14, 0x20

    const-string v15, "M-Commerce"

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/jpos/iso/PosDataCode$POSEnvironment;->M_COMMERCE:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 105
    new-instance v12, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v14, "RECURRING"

    const/4 v15, 0x6

    const/16 v13, 0x40

    const-string v7, "Recurring transaction"

    invoke-direct {v12, v14, v15, v13, v7}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/jpos/iso/PosDataCode$POSEnvironment;->RECURRING:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 106
    new-instance v7, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v13, "STORED_DETAILS"

    const/4 v14, 0x7

    const/16 v15, 0x80

    const-string v9, "Stored details"

    invoke-direct {v7, v13, v14, v15, v9}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/jpos/iso/PosDataCode$POSEnvironment;->STORED_DETAILS:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 107
    new-instance v9, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v13, "CAT"

    const/16 v15, 0x100

    const-string v14, "Cardholder Activated Terminal"

    invoke-direct {v9, v13, v10, v15, v14}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/jpos/iso/PosDataCode$POSEnvironment;->CAT:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 108
    new-instance v13, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v14, "ATM_ON_BANK"

    const/16 v15, 0x9

    const/16 v10, 0x200

    const-string v5, "ATM on bank premises"

    invoke-direct {v13, v14, v15, v10, v5}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/jpos/iso/PosDataCode$POSEnvironment;->ATM_ON_BANK:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 109
    new-instance v5, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v10, "ATM_OFF_BANK"

    const/16 v14, 0xa

    const/16 v15, 0x400

    const-string v3, "ATM off bank premises"

    invoke-direct {v5, v10, v14, v15, v3}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/jpos/iso/PosDataCode$POSEnvironment;->ATM_OFF_BANK:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 110
    new-instance v3, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v10, "DEFERRED_TRANSACTION"

    const/16 v15, 0xb

    const/16 v14, 0x800

    const-string v2, "Deferred transaction"

    invoke-direct {v3, v10, v15, v14, v2}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/jpos/iso/PosDataCode$POSEnvironment;->DEFERRED_TRANSACTION:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 111
    new-instance v2, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const-string v10, "INSTALLMENT_TRANSACTION"

    const/16 v14, 0xc

    const/16 v15, 0x1000

    move-object/from16 v16, v3

    const-string v3, "Installment transaction"

    invoke-direct {v2, v10, v14, v15, v3}, Lorg/jpos/iso/PosDataCode$POSEnvironment;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/jpos/iso/PosDataCode$POSEnvironment;->INSTALLMENT_TRANSACTION:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 98
    const/16 v3, 0xd

    new-array v3, v3, [Lorg/jpos/iso/PosDataCode$POSEnvironment;

    const/4 v10, 0x0

    aput-object v0, v3, v10

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v7, v3, v0

    const/16 v0, 0x8

    aput-object v9, v3, v0

    const/16 v1, 0x9

    aput-object v13, v3, v1

    const/16 v1, 0xa

    aput-object v5, v3, v1

    const/16 v1, 0xb

    aput-object v16, v3, v1

    aput-object v2, v3, v14

    sput-object v3, Lorg/jpos/iso/PosDataCode$POSEnvironment;->$VALUES:[Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 127
    sput v0, Lorg/jpos/iso/PosDataCode$POSEnvironment;->OFFSET:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "val"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Lorg/jpos/iso/PosDataCode$POSEnvironment;->val:I

    .line 117
    iput-object p4, p0, Lorg/jpos/iso/PosDataCode$POSEnvironment;->description:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/iso/PosDataCode$POSEnvironment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 98
    const-class v0, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/PosDataCode$POSEnvironment;

    return-object v0
.end method

.method public static values()[Lorg/jpos/iso/PosDataCode$POSEnvironment;
    .locals 1

    .line 98
    sget-object v0, Lorg/jpos/iso/PosDataCode$POSEnvironment;->$VALUES:[Lorg/jpos/iso/PosDataCode$POSEnvironment;

    invoke-virtual {v0}, [Lorg/jpos/iso/PosDataCode$POSEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/iso/PosDataCode$POSEnvironment;

    return-object v0
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .line 130
    sget v0, Lorg/jpos/iso/PosDataCode$POSEnvironment;->OFFSET:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/jpos/iso/PosDataCode$POSEnvironment;->val:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/jpos/iso/PosDataCode$POSEnvironment;->description:Ljava/lang/String;

    return-object v0
.end method
