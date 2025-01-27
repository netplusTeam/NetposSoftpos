.class public final enum Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;
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
    name = "SecurityCharacteristic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;",
        ">;",
        "Lorg/jpos/iso/PosDataCode$Flag;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum ACQUIRER_MANAGED_END_TO_END_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum ACQUIRER_MANAGED_POINT_TO_POINT_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum CARDHOLDER_MANAGED_END_TO_END_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum CARDHOLDER_MANAGED_POINT_TO_POINT_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum CHANNEL_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum CHANNEL_MACING:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum END_TO_END_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum MERCHANT_MANAGED_END_TO_END_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum MERCHANT_MANAGED_POINT_TO_POINT_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static OFFSET:I

.field public static final enum OPEN_NETWORK:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum PASS_THROUGH_MACING:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum PKI_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum PRIVATE_ALG_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum PRIVATE_ALG_MACING:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum PRIVATE_NETWORK:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum STD_ALG_MACING:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

.field public static final enum UNKNOWN:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;


# instance fields
.field private description:Ljava/lang/String;

.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 135
    new-instance v0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Unknown"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->UNKNOWN:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 136
    new-instance v1, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v4, "PRIVATE_NETWORK"

    const/4 v5, 0x2

    const-string v6, "Private network"

    invoke-direct {v1, v4, v3, v5, v6}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->PRIVATE_NETWORK:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 137
    new-instance v4, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v6, "OPEN_NETWORK"

    const/4 v7, 0x4

    const-string v8, "Open network (Internet)"

    invoke-direct {v4, v6, v5, v7, v8}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->OPEN_NETWORK:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 138
    new-instance v6, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v8, "CHANNEL_MACING"

    const/4 v9, 0x3

    const/16 v10, 0x8

    const-string v11, "Channel MACing"

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->CHANNEL_MACING:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 139
    new-instance v8, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v11, "PASS_THROUGH_MACING"

    const/16 v12, 0x10

    const-string v13, "Pass through MACing"

    invoke-direct {v8, v11, v7, v12, v13}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->PASS_THROUGH_MACING:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 140
    new-instance v11, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v13, "CHANNEL_ENCRYPTION"

    const/4 v14, 0x5

    const/16 v15, 0x20

    const-string v7, "Channel encryption"

    invoke-direct {v11, v13, v14, v15, v7}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->CHANNEL_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 141
    new-instance v7, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v13, "END_TO_END_ENCRYPTION"

    const/4 v15, 0x6

    const/16 v14, 0x40

    const-string v9, "End-to-end encryption"

    invoke-direct {v7, v13, v15, v14, v9}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->END_TO_END_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 142
    new-instance v9, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v13, "PRIVATE_ALG_ENCRYPTION"

    const/4 v14, 0x7

    const/16 v15, 0x80

    const-string v5, "Private algorithm encryption"

    invoke-direct {v9, v13, v14, v15, v5}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->PRIVATE_ALG_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 143
    new-instance v5, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v13, "PKI_ENCRYPTION"

    const/16 v15, 0x100

    const-string v14, "PKI encryption"

    invoke-direct {v5, v13, v10, v15, v14}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->PKI_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 144
    new-instance v13, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v14, "PRIVATE_ALG_MACING"

    const/16 v15, 0x9

    const/16 v10, 0x200

    const-string v3, "Private algorithm MACing"

    invoke-direct {v13, v14, v15, v10, v3}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->PRIVATE_ALG_MACING:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 145
    new-instance v3, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v10, "STD_ALG_MACING"

    const/16 v14, 0xa

    const/16 v15, 0x400

    const-string v2, "Standard algorithm MACing"

    invoke-direct {v3, v10, v14, v15, v2}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->STD_ALG_MACING:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 146
    new-instance v2, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v10, "CARDHOLDER_MANAGED_END_TO_END_ENCRYPTION"

    const/16 v15, 0xb

    const/16 v14, 0x800

    const-string v12, "Cardholder managed end-to-end encryption"

    invoke-direct {v2, v10, v15, v14, v12}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->CARDHOLDER_MANAGED_END_TO_END_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 147
    new-instance v10, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v12, "CARDHOLDER_MANAGED_POINT_TO_POINT_ENCRYPTION"

    const/16 v14, 0xc

    const/16 v15, 0x1000

    move-object/from16 v16, v2

    const-string v2, "Cardholder managed point-to-point encryption"

    invoke-direct {v10, v12, v14, v15, v2}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->CARDHOLDER_MANAGED_POINT_TO_POINT_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 148
    new-instance v2, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v12, "MERCHANT_MANAGED_END_TO_END_ENCRYPTION"

    const/16 v15, 0xd

    const/16 v14, 0x2000

    move-object/from16 v17, v10

    const-string v10, "Merchant managed end-to-end encryption"

    invoke-direct {v2, v12, v15, v14, v10}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->MERCHANT_MANAGED_END_TO_END_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 149
    new-instance v10, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v12, "MERCHANT_MANAGED_POINT_TO_POINT_ENCRYPTION"

    const/16 v14, 0xe

    const/16 v15, 0x4000

    move-object/from16 v18, v2

    const-string v2, "Merchant managed point-to-point encryption"

    invoke-direct {v10, v12, v14, v15, v2}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->MERCHANT_MANAGED_POINT_TO_POINT_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 150
    new-instance v2, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v12, "ACQUIRER_MANAGED_END_TO_END_ENCRYPTION"

    const/16 v15, 0xf

    const v14, 0x8000

    move-object/from16 v19, v10

    const-string v10, "Acquirer managed end-to-end-encryption"

    invoke-direct {v2, v12, v15, v14, v10}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->ACQUIRER_MANAGED_END_TO_END_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 151
    new-instance v10, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const-string v12, "ACQUIRER_MANAGED_POINT_TO_POINT_ENCRYPTION"

    const/high16 v14, 0x10000

    const-string v15, "Acquirer managed point-to-point encryption"

    move-object/from16 v20, v2

    const/16 v2, 0x10

    invoke-direct {v10, v12, v2, v14, v15}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->ACQUIRER_MANAGED_POINT_TO_POINT_ENCRYPTION:Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 134
    const/16 v2, 0x11

    new-array v2, v2, [Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    const/4 v12, 0x0

    aput-object v0, v2, v12

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v7, v2, v0

    const/4 v0, 0x7

    aput-object v9, v2, v0

    const/16 v0, 0x8

    aput-object v5, v2, v0

    const/16 v0, 0x9

    aput-object v13, v2, v0

    const/16 v0, 0xa

    aput-object v3, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v1, 0xd

    aput-object v18, v2, v1

    const/16 v1, 0xe

    aput-object v19, v2, v1

    const/16 v1, 0xf

    aput-object v20, v2, v1

    const/16 v1, 0x10

    aput-object v10, v2, v1

    sput-object v2, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->$VALUES:[Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 166
    sput v0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->OFFSET:I

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

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    iput p3, p0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->val:I

    .line 157
    iput-object p4, p0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->description:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 134
    const-class v0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    return-object v0
.end method

.method public static values()[Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;
    .locals 1

    .line 134
    sget-object v0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->$VALUES:[Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    invoke-virtual {v0}, [Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    return-object v0
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .line 169
    sget v0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->OFFSET:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 160
    iget v0, p0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->val:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->description:Ljava/lang/String;

    return-object v0
.end method
