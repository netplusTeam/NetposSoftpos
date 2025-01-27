.class public Lcom/mastercard/terminalsdk/iso8825/TlvList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addTLVtoList(Lcom/mastercard/terminalsdk/iso8825/BerTlv;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTagObject()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/emv/Tag;->getNTag()I

    move-result v2

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTagObject()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/emv/Tag;->getNTag()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getRawBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getRawBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->setRawBytes(Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clone()Lcom/mastercard/terminalsdk/iso8825/TlvList;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mastercard/terminalsdk/iso8825/TlvList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    iget-object v3, v1, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->clone()Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/iso8825/TlvList;->clone()Lcom/mastercard/terminalsdk/iso8825/TlvList;

    move-result-object v0

    return-object v0
.end method

.method public final getListOfBerTlv()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    return-object v0
.end method

.method public final getNameOfList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final removeTlvFromList(Lcom/mastercard/terminalsdk/iso8825/BerTlv;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getNTag()I

    move-result v3

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getNTag()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v0, v2

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final toByteArray()[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

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

    invoke-virtual {p0, v0}, Lcom/mastercard/terminalsdk/iso8825/TlvList;->toIndentedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateTlv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mastercard/terminalsdk/iso8825/TlvList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getTagObject()Lcom/mastercard/terminalsdk/emv/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/emv/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-static {p2}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-virtual {v1, p1}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->setRawBytes(Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    :cond_2
    :goto_0
    return-void
.end method
