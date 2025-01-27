.class public final Lcom/mastercard/terminalsdk/iso8825/BerTlv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

.field private b:Lcom/mastercard/terminalsdk/emv/Tag;

.field private c:Ljava/lang/Object;

.field private d:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

.field private e:I

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/mastercard/terminalsdk/emv/Tag;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->e:I

    iput-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    new-instance v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/emv/Tag;->getMaxLen()I

    move-result p1

    new-array p1, p1, [B

    invoke-direct {v0, p1}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    iput-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->d:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->c:Ljava/lang/Object;

    iput v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->e:I

    invoke-static {v1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->intToBerEncodedLength(I)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->a:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    return-void
.end method

.method public constructor <init>(Lcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->e:I

    iput-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    iput-object p2, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->d:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    iput-object p2, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->c:Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->length()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->e:I

    invoke-static {v1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->intToBerEncodedLength(I)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->a:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    return-void
.end method

.method public constructor <init>(Lcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;[BLjava/lang/Object;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->e:I

    iput-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    iput-object p2, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->d:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    iput-object p4, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->c:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->j:Z

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->length()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->e:I

    new-instance p1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {p1, p3}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    iput-object p1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->a:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    return-void
.end method


# virtual methods
.method public final clone()Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->d:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    iget-object v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/emv/Tag;->clone()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;-><init>(Lcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    iget-object v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/emv/Tag;->clone()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v1

    iget-object v2, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->d:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->clone()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;-><init>(Lcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->clone()Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v0

    return-object v0
.end method

.method public final getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->d:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final getEncodedLengthBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->a:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    return-object v0
.end method

.method public final getNTag()I
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/emv/Tag;->getNTag()I

    move-result v0

    return v0
.end method

.method public final getNumericLength()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->e:I

    return v0
.end method

.method public final getRawBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;
    .locals 3

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    iget-object v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    invoke-static {v1, v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->formByteArrayFromTlvList(Ljava/util/ArrayList;Lcom/mastercard/terminalsdk/objects/ContentType;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->c:Ljava/lang/Object;

    check-cast v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    return-object v0
.end method

.method public final getTag()[B
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/emv/Tag;->getTag()[B

    move-result-object v0

    return-object v0
.end method

.method public final getTagObject()Lcom/mastercard/terminalsdk/emv/Tag;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final isConstructed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->j:Z

    return v0
.end method

.method public final setNumericLength(I)V
    .locals 0

    iput p1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->e:I

    return-void
.end method

.method public final setRawBytes(Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V
    .locals 3

    iput-object p1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->d:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->length()I

    move-result v0

    iget-object v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->a:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->intToBerEncodedFixedLength(II)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->a:Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    iput v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->e:I

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    iget-object v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/emv/Tag;->getTemplate()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, v0, v1, v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->c:Ljava/lang/Object;

    return-void
.end method

.method public final toByteArray()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->b:Lcom/mastercard/terminalsdk/emv/Tag;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/emv/Tag;->getTag()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v1, p0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->e:I

    invoke-static {v1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->intToBerEncodedLength(I)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final toHexString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

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

    invoke-virtual {p0, v0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toIndentedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
