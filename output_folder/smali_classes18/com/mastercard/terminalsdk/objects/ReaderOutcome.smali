.class public final Lcom/mastercard/terminalsdk/objects/ReaderOutcome;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mastercard/terminalsdk/objects/UserInterfaceData;

.field private b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

.field private c:Lcom/mastercard/terminalsdk/iso8825/TlvList;

.field private d:Lcom/mastercard/terminalsdk/iso8825/BerTlv;

.field private e:Lcom/mastercard/terminalsdk/objects/DiscretionaryData;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    invoke-direct {v0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;-><init>()V

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    new-instance v0, Lcom/mastercard/terminalsdk/iso8825/TlvList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/mastercard/terminalsdk/iso8825/TlvList;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->c:Lcom/mastercard/terminalsdk/iso8825/TlvList;

    return-void
.end method


# virtual methods
.method public final addAdditionalData(Lcom/mastercard/terminalsdk/iso8825/BerTlv;)V
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->c:Lcom/mastercard/terminalsdk/iso8825/TlvList;

    invoke-virtual {v0, p1}, Lcom/mastercard/terminalsdk/iso8825/TlvList;->addTLVtoList(Lcom/mastercard/terminalsdk/iso8825/BerTlv;)V

    return-void
.end method

.method public final getAdditionalInformation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->c:Lcom/mastercard/terminalsdk/iso8825/TlvList;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/TlvList;->getListOfBerTlv()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAdditionalInformationBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->c:Lcom/mastercard/terminalsdk/iso8825/TlvList;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/TlvList;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final getDataRecordContents()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->isDataRecordPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->d:Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;->getRawBytes()Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    const/4 v2, 0x0

    const-string v3, "-"

    invoke-static {v0, v1, v3, v2}, Lcom/mastercard/terminalsdk/utility/TLVUtility;->conditionalTlvParsing([BLcom/mastercard/terminalsdk/objects/ContentType;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final getDataRecordTlv()Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    .locals 8

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->isDataRecordPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->d:Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    return-object v0

    :cond_0
    new-instance v0, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    new-instance v7, Lcom/mastercard/terminalsdk/emv/Tag;

    const/16 v1, 0x25

    const/16 v2, 0x94

    const v3, 0x82b6

    invoke-static {v1, v2, v3}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v5, "cY"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    invoke-static {v1, v2, v3}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, "b"

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "DataRecord"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;)V

    invoke-direct {v0, v7}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;-><init>(Lcom/mastercard/terminalsdk/emv/Tag;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    throw v1

    :cond_1
    throw v0
.end method

.method public final getDiscretionaryData()Lcom/mastercard/terminalsdk/objects/DiscretionaryData;
    .locals 2

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->isDiscretionaryDataPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->e:Lcom/mastercard/terminalsdk/objects/DiscretionaryData;

    return-object v0

    :cond_0
    new-instance v0, Lcom/mastercard/terminalsdk/objects/DiscretionaryData;

    invoke-direct {v0}, Lcom/mastercard/terminalsdk/objects/DiscretionaryData;-><init>()V

    new-instance v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication;

    invoke-direct {v1}, Lcom/mastercard/terminalsdk/objects/ErrorIndication;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mastercard/terminalsdk/objects/DiscretionaryData;->setErrorIndication(Lcom/mastercard/terminalsdk/objects/ErrorIndication;)V

    return-object v0
.end method

.method public final getOutcomeParameterSet()Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    return-object v0
.end method

.method public final getTransactionSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserInterfaceData()Lcom/mastercard/terminalsdk/objects/UserInterfaceData;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->isUIRequestedOnOutcome()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->isUIRequestedOnRestart()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;

    invoke-direct {v0}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;-><init>()V

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->a:Lcom/mastercard/terminalsdk/objects/UserInterfaceData;

    return-object v0
.end method

.method public final setDataRecord(Lcom/mastercard/terminalsdk/iso8825/BerTlv;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->d:Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    :cond_0
    return-void
.end method

.method public final setDiscretionaryData(Lcom/mastercard/terminalsdk/objects/DiscretionaryData;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->e:Lcom/mastercard/terminalsdk/objects/DiscretionaryData;

    :cond_0
    return-void
.end method

.method public final setOutcomeParameterSet(Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    :cond_0
    return-void
.end method

.method public final setUIRD(Lcom/mastercard/terminalsdk/objects/UserInterfaceData;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->a:Lcom/mastercard/terminalsdk/objects/UserInterfaceData;

    :cond_0
    return-void
.end method

.method public final toByteArray()[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->toTlv()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toTlv()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->toTlv()Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->isDataRecordPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->d:Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->b:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;->isDiscretionaryDataPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->e:Lcom/mastercard/terminalsdk/objects/DiscretionaryData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/DiscretionaryData;->toTLV()Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/mastercard/terminalsdk/objects/ReaderOutcome;->c:Lcom/mastercard/terminalsdk/iso8825/TlvList;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/iso8825/TlvList;->getListOfBerTlv()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
