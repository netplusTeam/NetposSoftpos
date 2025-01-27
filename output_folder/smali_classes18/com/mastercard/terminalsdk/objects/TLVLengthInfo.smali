.class public final Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;->c:[B

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BI)[B

    move-result-object p1

    invoke-static {p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToInt([B)I

    move-result p1

    iput p1, p0, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;->a:I

    return-void
.end method


# virtual methods
.method public final getExpectedNumberOfBytes()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;->a:I

    return v0
.end method

.method public final getLengthBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;->c:[B

    return-object v0
.end method

.method public final toIndentedString(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mastercard/terminalsdk/objects/TLVLengthInfo;->toIndentedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
