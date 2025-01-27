.class public final enum Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;
.super Ljava/lang/Enum;
.source "Tags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

.field public static final enum ADF_NAME:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

.field public static final enum AMOUNT_AUTHORIZED_NUMERIC:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

.field public static final enum FCI_DISC_DATA:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

.field public static final enum PRIORITY:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

.field public static final enum TAG_UPDATE_DATA:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

.field public static final enum TRANSACTION_CURRENCY_CODE:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

.field public static final enum TRANSACTION_TYPE:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;


# instance fields
.field private tagValueBytes:[B

.field private tagValueInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    const-string v1, "ADF_NAME"

    const/4 v2, 0x0

    const-string v3, "4F"

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->ADF_NAME:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    .line 9
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    const-string v3, "TAG_UPDATE_DATA"

    const/4 v4, 0x1

    const-string v5, "FF8111"

    invoke-direct {v1, v3, v4, v5}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->TAG_UPDATE_DATA:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    .line 10
    new-instance v3, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    const-string v5, "AMOUNT_AUTHORIZED_NUMERIC"

    const/4 v6, 0x2

    const-string v7, "9F02"

    invoke-direct {v3, v5, v6, v7}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->AMOUNT_AUTHORIZED_NUMERIC:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    .line 11
    new-instance v5, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    const-string v7, "TRANSACTION_CURRENCY_CODE"

    const/4 v8, 0x3

    const-string v9, "5F2A"

    invoke-direct {v5, v7, v8, v9}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->TRANSACTION_CURRENCY_CODE:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    .line 12
    new-instance v7, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    const-string v9, "TRANSACTION_TYPE"

    const/4 v10, 0x4

    const-string v11, "9C"

    invoke-direct {v7, v9, v10, v11}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->TRANSACTION_TYPE:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    .line 13
    new-instance v9, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    const-string v11, "FCI_DISC_DATA"

    const/4 v12, 0x5

    const-string v13, "BF0C"

    invoke-direct {v9, v11, v12, v13}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->FCI_DISC_DATA:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    .line 14
    new-instance v11, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    const-string v13, "PRIORITY"

    const/4 v14, 0x6

    const-string v15, "87"

    invoke-direct {v11, v13, v14, v15}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->PRIORITY:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    .line 6
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->$VALUES:[Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    invoke-static {p3}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->tagValueBytes:[B

    .line 23
    invoke-static {p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    move-result p1

    iput p1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->tagValueInt:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    return-object v0
.end method

.method public static values()[Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;
    .locals 1

    .line 6
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->$VALUES:[Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    invoke-virtual {v0}, [Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;

    return-object v0
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->tagValueInt:I

    return v0
.end method

.method public final getTagBytes()[B
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/Tags;->tagValueBytes:[B

    return-object v0
.end method
