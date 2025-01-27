.class public final enum Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/ErrorIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPROVED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum APPROVED_SIGN:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum AUTHORISING_WAIT:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum CARD_READ_OK:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum CLEAR_DISPLAY:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum DECLINED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum ERROR_OTHER_CARD:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum INSERT_CARD:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum NA:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum NOT_ACCEPTED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum SEE_PHONE:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field public static final enum TRY_AGAIN:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

.field private static final synthetic a:[Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;


# instance fields
.field private b:B

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v1, "NA"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "N/A"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->NA:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v3, "CARD_READ_OK"

    const/4 v4, 0x1

    const/16 v5, 0x17

    const-string v6, "CARD READ OK"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->CARD_READ_OK:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v5, "TRY_AGAIN"

    const/4 v6, 0x2

    const/16 v7, 0x21

    const-string v8, "TRY AGAIN"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->TRY_AGAIN:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v7, "APPROVED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v7}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->APPROVED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v7, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v9, "APPROVED_SIGN"

    const/4 v10, 0x4

    const/16 v11, 0x1a

    const-string v12, "APPROVED - SIGN"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v7, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->APPROVED_SIGN:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v9, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v11, "DECLINED"

    const/4 v12, 0x5

    const/4 v13, 0x7

    invoke-direct {v9, v11, v12, v13, v11}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v9, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->DECLINED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v11, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v14, "ERROR_OTHER_CARD"

    const/4 v15, 0x6

    const/16 v12, 0x1c

    const-string v10, "ERROR - OTHER CARD"

    invoke-direct {v11, v14, v15, v12, v10}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v11, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->ERROR_OTHER_CARD:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v10, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v12, "INSERT_CARD"

    const/16 v14, 0x1d

    const-string v15, "INSERT CARD"

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v10, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->INSERT_CARD:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v12, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v14, "SEE_PHONE"

    const/16 v15, 0x8

    const/16 v13, 0x20

    const-string v8, "SEE PHONE"

    invoke-direct {v12, v14, v15, v13, v8}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v12, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->SEE_PHONE:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v8, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v13, "AUTHORISING_WAIT"

    const/16 v14, 0x9

    const/16 v15, 0x1b

    const-string v6, "AUTHORISING - PLEASE WAIT"

    invoke-direct {v8, v13, v14, v15, v6}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v8, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->AUTHORISING_WAIT:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v13, "CLEAR_DISPLAY"

    const/16 v15, 0xa

    const/16 v14, 0x1e

    const-string v4, "CLEAR DISPLAY"

    invoke-direct {v6, v13, v15, v14, v4}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->CLEAR_DISPLAY:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-instance v4, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const-string v13, "NOT_ACCEPTED"

    const/16 v14, 0xb

    const/16 v15, 0xc

    const-string v2, "NOT ACCEPTED"

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v4, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->NOT_ACCEPTED:Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    new-array v2, v15, [Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    const/4 v13, 0x0

    aput-object v0, v2, v13

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

    aput-object v10, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v8, v2, v0

    const/16 v0, 0xa

    aput-object v6, v2, v0

    aput-object v4, v2, v14

    sput-object v2, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->a:[Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

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

    iput-byte p3, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->b:B

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->a:[Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()B
    .locals 1

    iget-byte v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$MessageId;->b:B

    return v0
.end method
