.class public final enum Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/ErrorIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "L2_Error_Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAM_FAILED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum CARD_DATA_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum CARD_DATA_MISSING:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum EMPTY_CANDIDATE_LIST:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum IDS_DATA_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum IDS_NO_MATCHING_AC:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum IDS_READ_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum IDS_WRITE_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum MAGSTRIPE_NOT_SUPPORTED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum MAX_LIMIT_EXCEEDED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum NO_PPSE:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum OK:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum PARSING_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum PPSE_FAULT:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum STATUS_BYTES:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field public static final enum TERMINAL_DATA_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

.field private static final synthetic c:[Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;


# instance fields
.field private a:B

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->OK:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v3, "CARD_DATA_MISSING"

    const/4 v4, 0x1

    const-string v5, "CARD DATA MISSING"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->CARD_DATA_MISSING:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v5, "CAM_FAILED"

    const/4 v6, 0x2

    const-string v7, "CAM FAILED"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->CAM_FAILED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v7, "STATUS_BYTES"

    const/4 v8, 0x3

    const-string v9, "STATUS BYTES"

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->STATUS_BYTES:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v7, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v9, "PARSING_ERROR"

    const/4 v10, 0x4

    const-string v11, "PARSING ERROR"

    invoke-direct {v7, v9, v10, v10, v11}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v7, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->PARSING_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v9, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v11, "MAX_LIMIT_EXCEEDED"

    const/4 v12, 0x5

    const-string v13, "MAX LIMIT EXCEEDED"

    invoke-direct {v9, v11, v12, v12, v13}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v9, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->MAX_LIMIT_EXCEEDED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v11, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v13, "CARD_DATA_ERROR"

    const/4 v14, 0x6

    const-string v15, "CARD DATA ERROR"

    invoke-direct {v11, v13, v14, v14, v15}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v11, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->CARD_DATA_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v13, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v15, "MAGSTRIPE_NOT_SUPPORTED"

    const/4 v14, 0x7

    const-string v12, "MAGSTRIPE NOT SUPPORTED"

    invoke-direct {v13, v15, v14, v14, v12}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v13, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->MAGSTRIPE_NOT_SUPPORTED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v12, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v15, "NO_PPSE"

    const/16 v14, 0x8

    const-string v10, "NO PPSE"

    invoke-direct {v12, v15, v14, v14, v10}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v12, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->NO_PPSE:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v10, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v15, "PPSE_FAULT"

    const/16 v14, 0x9

    const-string v8, "PPSE FAULT"

    invoke-direct {v10, v15, v14, v14, v8}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v10, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->PPSE_FAULT:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v8, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v15, "EMPTY_CANDIDATE_LIST"

    const/16 v14, 0xa

    const-string v6, "EMPTY CANDIDATE LIST"

    invoke-direct {v8, v15, v14, v14, v6}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v8, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->EMPTY_CANDIDATE_LIST:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v15, "IDS_READ_ERROR"

    const/16 v14, 0xb

    const-string v4, "IDS READ ERROR"

    invoke-direct {v6, v15, v14, v14, v4}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->IDS_READ_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v4, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v15, "IDS_WRITE_ERROR"

    const/16 v14, 0xc

    const-string v2, "IDS WRITE ERROR"

    invoke-direct {v4, v15, v14, v14, v2}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v4, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->IDS_WRITE_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v2, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v15, "IDS_DATA_ERROR"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "IDS DATA ERROR"

    invoke-direct {v2, v15, v14, v14, v4}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v2, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->IDS_DATA_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v4, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v15, "IDS_NO_MATCHING_AC"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "IDS NO MATCHING AC"

    invoke-direct {v4, v15, v14, v14, v2}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v4, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->IDS_NO_MATCHING_AC:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    new-instance v2, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const-string v15, "TERMINAL_DATA_ERROR"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "TERMINAL DATA ERROR"

    invoke-direct {v2, v15, v14, v14, v4}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v2, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->TERMINAL_DATA_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const/16 v4, 0x10

    new-array v4, v4, [Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    const/4 v15, 0x0

    aput-object v0, v4, v15

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

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    aput-object v2, v4, v14

    sput-object v4, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->c:[Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->a:B

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->c:[Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;

    return-object v0
.end method


# virtual methods
.method public getL2Error_Code()B
    .locals 1

    iget-byte v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->a:B

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L2_Error_Code;->d:Ljava/lang/String;

    return-object v0
.end method
