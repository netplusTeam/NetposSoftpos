.class public final enum Lorg/jpos/transaction/ContextConstants;
.super Ljava/lang/Enum;
.source "ContextConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/transaction/ContextConstants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/transaction/ContextConstants;

.field public static final enum AMOUNT:Lorg/jpos/transaction/ContextConstants;

.field public static final enum CAPTURE_DATE:Lorg/jpos/transaction/ContextConstants;

.field public static final enum CARD:Lorg/jpos/transaction/ContextConstants;

.field public static final enum DB:Lorg/jpos/transaction/ContextConstants;

.field public static final enum DESTINATION:Lorg/jpos/transaction/ContextConstants;

.field public static final enum IRC:Lorg/jpos/transaction/ContextConstants;

.field public static final enum LOCAL_AMOUNT:Lorg/jpos/transaction/ContextConstants;

.field public static final enum LOGEVT:Lorg/jpos/transaction/ContextConstants;

.field public static final enum MID:Lorg/jpos/transaction/ContextConstants;

.field public static final enum ORIGINAL_DATA_ELEMENTS:Lorg/jpos/transaction/ContextConstants;

.field public static final enum ORIGINAL_MTI:Lorg/jpos/transaction/ContextConstants;

.field public static final enum ORIGINAL_STAN:Lorg/jpos/transaction/ContextConstants;

.field public static final enum ORIGINAL_TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

.field public static final enum PANIC:Lorg/jpos/transaction/ContextConstants;

.field public static final enum PAUSED_TRANSACTION:Lorg/jpos/transaction/ContextConstants;

.field public static final enum PCODE:Lorg/jpos/transaction/ContextConstants;

.field public static final enum POS_DATA_CODE:Lorg/jpos/transaction/ContextConstants;

.field public static final enum PROFILER:Lorg/jpos/transaction/ContextConstants;

.field public static final enum REQUEST:Lorg/jpos/transaction/ContextConstants;

.field public static final enum RESPONSE:Lorg/jpos/transaction/ContextConstants;

.field public static final enum RESULT:Lorg/jpos/transaction/ContextConstants;

.field public static final enum SOURCE:Lorg/jpos/transaction/ContextConstants;

.field public static final enum TID:Lorg/jpos/transaction/ContextConstants;

.field public static final enum TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

.field public static final enum TRANSACTION_TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

.field public static final enum TRANSMISSION_TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

.field public static final enum TX:Lorg/jpos/transaction/ContextConstants;

.field public static final enum TXNNAME:Lorg/jpos/transaction/ContextConstants;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 22
    new-instance v0, Lorg/jpos/transaction/ContextConstants;

    const-string v1, "PROFILER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/transaction/ContextConstants;->PROFILER:Lorg/jpos/transaction/ContextConstants;

    new-instance v1, Lorg/jpos/transaction/ContextConstants;

    const-string v3, "TIMESTAMP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/transaction/ContextConstants;->TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

    .line 23
    new-instance v3, Lorg/jpos/transaction/ContextConstants;

    const-string v5, "SOURCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jpos/transaction/ContextConstants;->SOURCE:Lorg/jpos/transaction/ContextConstants;

    new-instance v5, Lorg/jpos/transaction/ContextConstants;

    const-string v7, "REQUEST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jpos/transaction/ContextConstants;->REQUEST:Lorg/jpos/transaction/ContextConstants;

    new-instance v7, Lorg/jpos/transaction/ContextConstants;

    const-string v9, "RESPONSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jpos/transaction/ContextConstants;->RESPONSE:Lorg/jpos/transaction/ContextConstants;

    .line 24
    new-instance v9, Lorg/jpos/transaction/ContextConstants;

    const-string v11, "LOGEVT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jpos/transaction/ContextConstants;->LOGEVT:Lorg/jpos/transaction/ContextConstants;

    .line 25
    new-instance v11, Lorg/jpos/transaction/ContextConstants;

    const-string v13, "DB"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jpos/transaction/ContextConstants;->DB:Lorg/jpos/transaction/ContextConstants;

    new-instance v13, Lorg/jpos/transaction/ContextConstants;

    const-string v15, "TX"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jpos/transaction/ContextConstants;->TX:Lorg/jpos/transaction/ContextConstants;

    .line 26
    new-instance v15, Lorg/jpos/transaction/ContextConstants;

    const-string v14, "IRC"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jpos/transaction/ContextConstants;->IRC:Lorg/jpos/transaction/ContextConstants;

    .line 27
    new-instance v14, Lorg/jpos/transaction/ContextConstants;

    const-string v12, "TXNNAME"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jpos/transaction/ContextConstants;->TXNNAME:Lorg/jpos/transaction/ContextConstants;

    .line 28
    new-instance v12, Lorg/jpos/transaction/ContextConstants;

    const-string v10, "RESULT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jpos/transaction/ContextConstants;->RESULT:Lorg/jpos/transaction/ContextConstants;

    .line 29
    new-instance v10, Lorg/jpos/transaction/ContextConstants;

    const-string v8, "MID"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jpos/transaction/ContextConstants;->MID:Lorg/jpos/transaction/ContextConstants;

    .line 30
    new-instance v8, Lorg/jpos/transaction/ContextConstants;

    const-string v6, "TID"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jpos/transaction/ContextConstants;->TID:Lorg/jpos/transaction/ContextConstants;

    .line 31
    new-instance v6, Lorg/jpos/transaction/ContextConstants;

    const-string v4, "PCODE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jpos/transaction/ContextConstants;->PCODE:Lorg/jpos/transaction/ContextConstants;

    .line 32
    new-instance v4, Lorg/jpos/transaction/ContextConstants;

    const-string v2, "CARD"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jpos/transaction/ContextConstants;->CARD:Lorg/jpos/transaction/ContextConstants;

    .line 33
    new-instance v2, Lorg/jpos/transaction/ContextConstants;

    const-string v6, "TRANSMISSION_TIMESTAMP"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jpos/transaction/ContextConstants;->TRANSMISSION_TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

    .line 34
    new-instance v6, Lorg/jpos/transaction/ContextConstants;

    const-string v4, "TRANSACTION_TIMESTAMP"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jpos/transaction/ContextConstants;->TRANSACTION_TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

    .line 35
    new-instance v4, Lorg/jpos/transaction/ContextConstants;

    const-string v2, "CAPTURE_DATE"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jpos/transaction/ContextConstants;->CAPTURE_DATE:Lorg/jpos/transaction/ContextConstants;

    .line 36
    new-instance v2, Lorg/jpos/transaction/ContextConstants;

    const-string v6, "POS_DATA_CODE"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jpos/transaction/ContextConstants;->POS_DATA_CODE:Lorg/jpos/transaction/ContextConstants;

    .line 37
    new-instance v6, Lorg/jpos/transaction/ContextConstants;

    const-string v4, "AMOUNT"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jpos/transaction/ContextConstants;->AMOUNT:Lorg/jpos/transaction/ContextConstants;

    .line 38
    new-instance v4, Lorg/jpos/transaction/ContextConstants;

    const-string v2, "LOCAL_AMOUNT"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jpos/transaction/ContextConstants;->LOCAL_AMOUNT:Lorg/jpos/transaction/ContextConstants;

    .line 39
    new-instance v2, Lorg/jpos/transaction/ContextConstants;

    const-string v6, "ORIGINAL_MTI"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jpos/transaction/ContextConstants;->ORIGINAL_MTI:Lorg/jpos/transaction/ContextConstants;

    .line 40
    new-instance v6, Lorg/jpos/transaction/ContextConstants;

    const-string v4, "ORIGINAL_STAN"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jpos/transaction/ContextConstants;->ORIGINAL_STAN:Lorg/jpos/transaction/ContextConstants;

    .line 41
    new-instance v2, Lorg/jpos/transaction/ContextConstants;

    const-string v4, "ORIGINAL_TIMESTAMP"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jpos/transaction/ContextConstants;->ORIGINAL_TIMESTAMP:Lorg/jpos/transaction/ContextConstants;

    .line 42
    new-instance v4, Lorg/jpos/transaction/ContextConstants;

    const-string v6, "ORIGINAL_DATA_ELEMENTS"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jpos/transaction/ContextConstants;->ORIGINAL_DATA_ELEMENTS:Lorg/jpos/transaction/ContextConstants;

    .line 43
    new-instance v2, Lorg/jpos/transaction/ContextConstants;

    const-string v6, "DESTINATION"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jpos/transaction/ContextConstants;->DESTINATION:Lorg/jpos/transaction/ContextConstants;

    .line 44
    new-instance v4, Lorg/jpos/transaction/ContextConstants;

    const-string v6, "PANIC"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jpos/transaction/ContextConstants;->PANIC:Lorg/jpos/transaction/ContextConstants;

    .line 45
    new-instance v2, Lorg/jpos/transaction/ContextConstants;

    const-string v6, "PAUSED_TRANSACTION"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    move-object/from16 v30, v8

    const-string v8, ":paused_transaction"

    invoke-direct {v2, v6, v4, v8}, Lorg/jpos/transaction/ContextConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/jpos/transaction/ContextConstants;->PAUSED_TRANSACTION:Lorg/jpos/transaction/ContextConstants;

    .line 21
    const/16 v4, 0x1c

    new-array v4, v4, [Lorg/jpos/transaction/ContextConstants;

    const/4 v6, 0x0

    aput-object v0, v4, v6

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

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v30, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v2, v4, v0

    sput-object v4, Lorg/jpos/transaction/ContextConstants;->$VALUES:[Lorg/jpos/transaction/ContextConstants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {p0}, Lorg/jpos/transaction/ContextConstants;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jpos/transaction/ContextConstants;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lorg/jpos/transaction/ContextConstants;->name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/transaction/ContextConstants;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lorg/jpos/transaction/ContextConstants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/transaction/ContextConstants;

    return-object v0
.end method

.method public static values()[Lorg/jpos/transaction/ContextConstants;
    .locals 1

    .line 21
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->$VALUES:[Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, [Lorg/jpos/transaction/ContextConstants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/transaction/ContextConstants;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jpos/transaction/ContextConstants;->name:Ljava/lang/String;

    return-object v0
.end method
