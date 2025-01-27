.class public Lcom/solab/iso8583/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/solab/iso8583/IsoMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private binBitmap:Z

.field private binIsoHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private binaryFields:Z

.field private binaryHeader:Z

.field private customFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/solab/iso8583/CustomField;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:Ljava/lang/String;

.field private etx:I

.field private forceStringEncoding:Z

.field private forceb2:Z

.field private ignoreLast:Z

.field private isoHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final log:Lorg/slf4j/Logger;

.field protected parseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/solab/iso8583/parse/FieldParseInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected parseOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private setDate:Z

.field private traceGen:Lcom/solab/iso8583/TraceNumberGenerator;

.field private typeTemplates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private variableLengthFieldsInHex:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->log:Lorg/slf4j/Logger;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->typeTemplates:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseMap:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseOrder:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->binIsoHeaders:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->customFields:Ljava/util/Map;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/solab/iso8583/MessageFactory;->etx:I

    .line 83
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addMessageTemplate(Lcom/solab/iso8583/IsoMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 705
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    .local p1, "templ":Lcom/solab/iso8583/IsoMessage;, "TT;"
    if-eqz p1, :cond_0

    .line 706
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->typeTemplates:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/solab/iso8583/IsoMessage;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_0
    return-void
.end method

.method protected createIsoMessage(Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 626
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    new-instance v0, Lcom/solab/iso8583/IsoMessage;

    invoke-direct {v0, p1}, Lcom/solab/iso8583/IsoMessage;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createIsoMessageWithBinaryHeader([B)Lcom/solab/iso8583/IsoMessage;
    .locals 1
    .param p1, "binHeader"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 637
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    new-instance v0, Lcom/solab/iso8583/IsoMessage;

    invoke-direct {v0, p1}, Lcom/solab/iso8583/IsoMessage;-><init>([B)V

    return-object v0
.end method

.method public createResponse(Lcom/solab/iso8583/IsoMessage;)Lcom/solab/iso8583/IsoMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    .local p1, "request":Lcom/solab/iso8583/IsoMessage;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/solab/iso8583/MessageFactory;->createResponse(Lcom/solab/iso8583/IsoMessage;Z)Lcom/solab/iso8583/IsoMessage;

    move-result-object v0

    return-object v0
.end method

.method public createResponse(Lcom/solab/iso8583/IsoMessage;Z)Lcom/solab/iso8583/IsoMessage;
    .locals 6
    .param p2, "copyAllFields"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)TT;"
        }
    .end annotation

    .line 331
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    .local p1, "request":Lcom/solab/iso8583/IsoMessage;, "TT;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/solab/iso8583/IsoMessage;->getType()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/solab/iso8583/MessageFactory;->createIsoMessage(Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;

    move-result-object v0

    .line 332
    .local v0, "resp":Lcom/solab/iso8583/IsoMessage;, "TT;"
    invoke-virtual {p1}, Lcom/solab/iso8583/IsoMessage;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setCharacterEncoding(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lcom/solab/iso8583/IsoMessage;->isBinaryHeader()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setBinaryHeader(Z)V

    .line 334
    invoke-virtual {p1}, Lcom/solab/iso8583/IsoMessage;->isBinaryFields()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setBinaryFields(Z)V

    .line 335
    invoke-virtual {p1}, Lcom/solab/iso8583/IsoMessage;->isBinaryBitmap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setBinaryBitmap(Z)V

    .line 336
    invoke-virtual {p1}, Lcom/solab/iso8583/IsoMessage;->getType()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setType(I)V

    .line 337
    iget v1, p0, Lcom/solab/iso8583/MessageFactory;->etx:I

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setEtx(I)V

    .line 338
    iget-boolean v1, p0, Lcom/solab/iso8583/MessageFactory;->forceb2:Z

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setForceSecondaryBitmap(Z)V

    .line 339
    invoke-virtual {p1}, Lcom/solab/iso8583/IsoMessage;->isEncodeVariableLengthFieldsInHex()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setEncodeVariableLengthFieldsInHex(Z)V

    .line 341
    iget-object v1, p0, Lcom/solab/iso8583/MessageFactory;->typeTemplates:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/solab/iso8583/IsoMessage;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/solab/iso8583/IsoMessage;

    .line 342
    .local v1, "templ":Lcom/solab/iso8583/IsoMessage;
    const/16 v2, 0x80

    if-nez v1, :cond_2

    .line 343
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 344
    invoke-virtual {p1, v3}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    invoke-virtual {p1, v3}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->clone()Lcom/solab/iso8583/IsoValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 343
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_1
    goto :goto_5

    .line 348
    :cond_2
    if-eqz p2, :cond_6

    .line 349
    const/4 v3, 0x2

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 350
    invoke-virtual {p1, v3}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 351
    invoke-virtual {p1, v3}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->clone()Lcom/solab/iso8583/IsoValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    goto :goto_2

    .line 352
    :cond_3
    invoke-virtual {v1, v3}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 353
    invoke-virtual {v1, v3}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoValue;->clone()Lcom/solab/iso8583/IsoValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 349
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_5
    goto :goto_5

    .line 357
    :cond_6
    const/4 v3, 0x2

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v2, :cond_9

    .line 358
    invoke-virtual {v1, v3}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 359
    invoke-virtual {p1, v3}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, p1

    goto :goto_4

    :cond_7
    move-object v4, v1

    .line 360
    .local v4, "srcmsg":Lcom/solab/iso8583/IsoMessage;
    :goto_4
    invoke-virtual {v4, v3}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/solab/iso8583/IsoValue;->clone()Lcom/solab/iso8583/IsoValue;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 357
    .end local v4    # "srcmsg":Lcom/solab/iso8583/IsoMessage;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 364
    .end local v3    # "i":I
    :cond_9
    :goto_5
    return-object v0
.end method

.method public freeze()V
    .locals 1

    .line 724
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->typeTemplates:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->typeTemplates:Ljava/util/Map;

    .line 725
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseMap:Ljava/util/Map;

    .line 726
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseOrder:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseOrder:Ljava/util/Map;

    .line 727
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    .line 728
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->binIsoHeaders:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->binIsoHeaders:Ljava/util/Map;

    .line 729
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->customFields:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/solab/iso8583/MessageFactory;->customFields:Ljava/util/Map;

    .line 730
    return-void
.end method

.method public getAssignDate()Z
    .locals 1

    .line 648
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->setDate:Z

    return v0
.end method

.method public getBinaryIsoHeader(I)[B
    .locals 2
    .param p1, "type"    # I

    .line 699
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->binIsoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 154
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomField(I)Lcom/solab/iso8583/CustomField;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/solab/iso8583/CustomField<",
            "TF;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->customFields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/solab/iso8583/CustomField;

    return-object v0
.end method

.method public getCustomField(Ljava/lang/Integer;)Lcom/solab/iso8583/CustomField;
    .locals 1
    .param p1, "index"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/solab/iso8583/CustomField<",
            "TF;>;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->customFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/solab/iso8583/CustomField;

    return-object v0
.end method

.method public getEtx()I
    .locals 1

    .line 259
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget v0, p0, Lcom/solab/iso8583/MessageFactory;->etx:I

    return v0
.end method

.method public getIgnoreLastMissingField()Z
    .locals 1

    .line 177
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->ignoreLast:Z

    return v0
.end method

.method public getIsoHeader(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .line 683
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTemplate(I)Lcom/solab/iso8583/IsoMessage;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 718
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->typeTemplates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/solab/iso8583/IsoMessage;

    return-object v0
.end method

.method public getTraceNumberGenerator()Lcom/solab/iso8583/TraceNumberGenerator;
    .locals 1

    .line 658
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->traceGen:Lcom/solab/iso8583/TraceNumberGenerator;

    return-object v0
.end method

.method public getUseBinaryMessages()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->binaryHeader:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->binaryFields:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBinaryFields()Z
    .locals 1

    .line 244
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->binaryFields:Z

    return v0
.end method

.method public isBinaryHeader()Z
    .locals 1

    .line 234
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->binaryHeader:Z

    return v0
.end method

.method public isForceSecondaryBitmap()Z
    .locals 1

    .line 163
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->forceb2:Z

    return v0
.end method

.method public isForceStringEncoding()Z
    .locals 1

    .line 96
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->forceStringEncoding:Z

    return v0
.end method

.method public isUseBinaryBitmap()Z
    .locals 1

    .line 122
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->binBitmap:Z

    return v0
.end method

.method public isVariableLengthFieldsInHex()Z
    .locals 1

    .line 111
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->variableLengthFieldsInHex:Z

    return v0
.end method

.method public newMessage(I)Lcom/solab/iso8583/IsoMessage;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->binIsoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->binIsoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/solab/iso8583/MessageFactory;->createIsoMessageWithBinaryHeader([B)Lcom/solab/iso8583/IsoMessage;

    move-result-object v0

    .local v0, "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    goto :goto_0

    .line 271
    .end local v0    # "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/solab/iso8583/MessageFactory;->createIsoMessage(Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;

    move-result-object v0

    .line 273
    .restart local v0    # "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    :goto_0
    invoke-virtual {v0, p1}, Lcom/solab/iso8583/IsoMessage;->setType(I)V

    .line 274
    iget v1, p0, Lcom/solab/iso8583/MessageFactory;->etx:I

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setEtx(I)V

    .line 275
    invoke-virtual {p0}, Lcom/solab/iso8583/MessageFactory;->isBinaryHeader()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setBinaryHeader(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/solab/iso8583/MessageFactory;->isBinaryFields()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setBinaryFields(Z)V

    .line 277
    iget-boolean v1, p0, Lcom/solab/iso8583/MessageFactory;->forceb2:Z

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setForceSecondaryBitmap(Z)V

    .line 278
    iget-boolean v1, p0, Lcom/solab/iso8583/MessageFactory;->binBitmap:Z

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setBinaryBitmap(Z)V

    .line 279
    iget-object v1, p0, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setCharacterEncoding(Ljava/lang/String;)V

    .line 280
    iget-boolean v1, p0, Lcom/solab/iso8583/MessageFactory;->forceStringEncoding:Z

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setForceStringEncoding(Z)V

    .line 281
    iget-boolean v1, p0, Lcom/solab/iso8583/MessageFactory;->variableLengthFieldsInHex:Z

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoMessage;->setEncodeVariableLengthFieldsInHex(Z)V

    .line 284
    iget-object v1, p0, Lcom/solab/iso8583/MessageFactory;->typeTemplates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/solab/iso8583/IsoMessage;

    .line 285
    .local v1, "templ":Lcom/solab/iso8583/IsoMessage;
    if-eqz v1, :cond_2

    .line 286
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x80

    if-gt v2, v3, :cond_2

    .line 287
    invoke-virtual {v1, v2}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-virtual {v1, v2}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/solab/iso8583/IsoValue;->clone()Lcom/solab/iso8583/IsoValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 286
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 294
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/solab/iso8583/MessageFactory;->traceGen:Lcom/solab/iso8583/TraceNumberGenerator;

    if-eqz v2, :cond_3

    .line 295
    const/16 v3, 0xb

    invoke-interface {v2}, Lcom/solab/iso8583/TraceNumberGenerator;->nextTrace()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    const/4 v5, 0x6

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/solab/iso8583/IsoMessage;->setValue(ILjava/lang/Object;Lcom/solab/iso8583/IsoType;I)Lcom/solab/iso8583/IsoMessage;

    .line 297
    :cond_3
    iget-boolean v2, p0, Lcom/solab/iso8583/MessageFactory;->setDate:Z

    if-eqz v2, :cond_6

    .line 298
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 300
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/solab/iso8583/IsoMessage;->updateValue(ILjava/lang/Object;)Lcom/solab/iso8583/IsoMessage;

    goto :goto_2

    .line 302
    :cond_4
    new-instance v3, Lcom/solab/iso8583/IsoValue;

    sget-object v4, Lcom/solab/iso8583/IsoType;->DATE10:Lcom/solab/iso8583/IsoType;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    .line 303
    .local v3, "now":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<Ljava/util/Date;>;"
    invoke-static {}, Lcom/solab/iso8583/parse/DateTimeParseInfo;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 304
    invoke-static {}, Lcom/solab/iso8583/parse/DateTimeParseInfo;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/solab/iso8583/IsoValue;->setTimeZone(Ljava/util/TimeZone;)V

    .line 306
    :cond_5
    invoke-virtual {v0, v2, v3}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 309
    .end local v3    # "now":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<Ljava/util/Date;>;"
    :cond_6
    :goto_2
    return-object v0
.end method

.method public parseMessage([BI)Lcom/solab/iso8583/IsoMessage;
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "isoHeaderLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 387
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/solab/iso8583/MessageFactory;->parseMessage([BIZ)Lcom/solab/iso8583/IsoMessage;

    move-result-object v0

    return-object v0
.end method

.method public parseMessage([BIZ)Lcom/solab/iso8583/IsoMessage;
    .locals 22
    .param p1, "buf"    # [B
    .param p2, "isoHeaderLength"    # I
    .param p3, "binaryIsoHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 398
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-boolean v0, v1, Lcom/solab/iso8583/MessageFactory;->binaryHeader:Z

    const/4 v4, 0x4

    if-eqz v0, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    add-int/2addr v6, v3

    iget-boolean v7, v1, Lcom/solab/iso8583/MessageFactory;->binBitmap:Z

    const/16 v8, 0x10

    const/16 v9, 0x8

    if-nez v7, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v8

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v9

    :goto_2
    add-int/2addr v6, v0

    .line 399
    .local v6, "minlength":I
    array-length v0, v2

    const/4 v7, 0x0

    if-lt v0, v6, :cond_54

    .line 403
    if-eqz p3, :cond_3

    if-lez v3, :cond_3

    .line 404
    new-array v0, v3, [B

    .line 405
    .local v0, "_bih":[B
    invoke-static {v2, v7, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    invoke-virtual {v1, v0}, Lcom/solab/iso8583/MessageFactory;->createIsoMessageWithBinaryHeader([B)Lcom/solab/iso8583/IsoMessage;

    move-result-object v0

    .line 407
    .local v0, "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    move-object v10, v0

    goto :goto_4

    .line 408
    .end local v0    # "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    :cond_3
    if-lez v3, :cond_4

    .line 409
    new-instance v0, Ljava/lang/String;

    iget-object v10, v1, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    invoke-direct {v0, v2, v7, v3, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 408
    :goto_3
    invoke-virtual {v1, v0}, Lcom/solab/iso8583/MessageFactory;->createIsoMessage(Ljava/lang/String;)Lcom/solab/iso8583/IsoMessage;

    move-result-object v0

    move-object v10, v0

    .line 411
    .local v10, "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    :goto_4
    iget-object v0, v1, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/solab/iso8583/IsoMessage;->setCharacterEncoding(Ljava/lang/String;)V

    .line 413
    iget-boolean v0, v1, Lcom/solab/iso8583/MessageFactory;->binaryHeader:Z

    const/16 v11, 0x30

    if-eqz v0, :cond_5

    .line 414
    aget-byte v0, v2, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v9

    add-int/lit8 v12, v3, 0x1

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v0, v12

    move v12, v0

    .local v0, "type":I
    goto :goto_5

    .line 415
    .end local v0    # "type":I
    :cond_5
    iget-boolean v0, v1, Lcom/solab/iso8583/MessageFactory;->forceStringEncoding:Z

    if-eqz v0, :cond_6

    .line 416
    new-instance v0, Ljava/lang/String;

    iget-object v12, v1, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    move v12, v0

    .restart local v0    # "type":I
    goto :goto_5

    .line 418
    .end local v0    # "type":I
    :cond_6
    aget-byte v0, v2, v3

    sub-int/2addr v0, v11

    shl-int/lit8 v0, v0, 0xc

    add-int/lit8 v12, v3, 0x1

    aget-byte v12, v2, v12

    sub-int/2addr v12, v11

    shl-int/2addr v12, v9

    or-int/2addr v0, v12

    add-int/lit8 v12, v3, 0x2

    aget-byte v12, v2, v12

    sub-int/2addr v12, v11

    shl-int/2addr v12, v4

    or-int/2addr v0, v12

    add-int/lit8 v12, v3, 0x3

    aget-byte v12, v2, v12

    sub-int/2addr v12, v11

    or-int/2addr v0, v12

    move v12, v0

    .line 423
    .local v12, "type":I
    :goto_5
    invoke-virtual {v10, v12}, Lcom/solab/iso8583/IsoMessage;->setType(I)V

    .line 425
    new-instance v0, Ljava/util/BitSet;

    const/16 v13, 0x40

    invoke-direct {v0, v13}, Ljava/util/BitSet;-><init>(I)V

    move-object v13, v0

    .line 426
    .local v13, "bs":Ljava/util/BitSet;
    const/4 v14, 0x0

    .line 427
    .local v14, "pos":I
    iget-boolean v0, v1, Lcom/solab/iso8583/MessageFactory;->binaryHeader:Z

    const-string v15, "Insufficient length for secondary bitmap"

    const/16 v16, 0x1

    if-nez v0, :cond_2d

    iget-boolean v5, v1, Lcom/solab/iso8583/MessageFactory;->binBitmap:Z

    if-eqz v5, :cond_7

    move/from16 v18, v4

    goto/16 :goto_25

    .line 456
    :cond_7
    :try_start_0
    iget-boolean v0, v1, Lcom/solab/iso8583/MessageFactory;->forceStringEncoding:Z

    if-eqz v0, :cond_8

    .line 457
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x4

    iget-object v4, v1, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    invoke-direct {v0, v2, v5, v8, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 458
    .local v0, "_bb":[B
    add-int/lit8 v4, v3, 0x24

    new-array v4, v4, [B

    .line 459
    .local v4, "bitmapBuffer":[B
    add-int/lit8 v5, v3, 0x4

    invoke-static {v0, v7, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    .end local v0    # "_bb":[B
    goto :goto_6

    .line 461
    .end local v4    # "bitmapBuffer":[B
    :cond_8
    move-object/from16 v4, p1

    .line 463
    .restart local v4    # "bitmapBuffer":[B
    :goto_6
    add-int/lit8 v0, v3, 0x4

    .local v0, "i":I
    :goto_7
    add-int/lit8 v5, v3, 0x14

    const/16 v8, 0x39

    const/16 v7, 0x41

    if-ge v0, v5, :cond_18

    .line 464
    aget-byte v5, v4, v0

    if-lt v5, v11, :cond_d

    aget-byte v5, v4, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-gt v5, v8, :cond_d

    .line 465
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .local v5, "pos":I
    :try_start_1
    aget-byte v7, v4, v0

    sub-int/2addr v7, v11

    and-int/2addr v7, v9

    if-lez v7, :cond_9

    move/from16 v7, v16

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_2
    aget-byte v7, v4, v0

    sub-int/2addr v7, v11

    const/4 v8, 0x4

    and-int/2addr v7, v8

    if-lez v7, :cond_a

    move/from16 v7, v16

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 467
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_3
    aget-byte v7, v4, v0

    sub-int/2addr v7, v11

    const/4 v8, 0x2

    and-int/2addr v7, v8

    if-lez v7, :cond_b

    move/from16 v7, v16

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 468
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_4
    aget-byte v7, v4, v0

    sub-int/2addr v7, v11

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_c

    move/from16 v7, v16

    goto :goto_b

    :cond_c
    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_14

    .line 512
    .end local v0    # "i":I
    .end local v4    # "bitmapBuffer":[B
    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :catch_0
    move-exception v0

    move v14, v5

    goto/16 :goto_24

    .line 469
    .end local v5    # "pos":I
    .restart local v0    # "i":I
    .restart local v4    # "bitmapBuffer":[B
    .restart local v14    # "pos":I
    :cond_d
    aget-byte v5, v4, v0

    if-lt v5, v7, :cond_12

    aget-byte v5, v4, v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v7, 0x46

    if-gt v5, v7, :cond_12

    .line 470
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_5
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x37

    and-int/2addr v7, v9

    if-lez v7, :cond_e

    move/from16 v7, v16

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    .line 471
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_6
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x37

    const/4 v8, 0x4

    and-int/2addr v7, v8

    if-lez v7, :cond_f

    move/from16 v7, v16

    goto :goto_d

    :cond_f
    const/4 v7, 0x0

    :goto_d
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    .line 472
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_7
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x37

    const/4 v8, 0x2

    and-int/2addr v7, v8

    if-lez v7, :cond_10

    move/from16 v7, v16

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    :goto_e
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0

    .line 473
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_8
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x37

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_11

    move/from16 v7, v16

    goto :goto_f

    :cond_11
    const/4 v7, 0x0

    :goto_f
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_14

    .line 474
    :cond_12
    aget-byte v5, v4, v0

    const/16 v7, 0x61

    if-lt v5, v7, :cond_17

    aget-byte v5, v4, v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1

    const/16 v7, 0x66

    if-gt v5, v7, :cond_17

    .line 475
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_9
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x57

    and-int/2addr v7, v9

    if-lez v7, :cond_13

    move/from16 v7, v16

    goto :goto_10

    :cond_13
    const/4 v7, 0x0

    :goto_10
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0

    .line 476
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_a
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x57

    const/4 v8, 0x4

    and-int/2addr v7, v8

    if-lez v7, :cond_14

    move/from16 v7, v16

    goto :goto_11

    :cond_14
    const/4 v7, 0x0

    :goto_11
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1

    .line 477
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_b
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x57

    const/4 v8, 0x2

    and-int/2addr v7, v8

    if-lez v7, :cond_15

    move/from16 v7, v16

    goto :goto_12

    :cond_15
    const/4 v7, 0x0

    :goto_12
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_0

    .line 478
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_c
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x57

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_16

    move/from16 v7, v16

    goto :goto_13

    :cond_16
    const/4 v7, 0x0

    :goto_13
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V

    .line 463
    :cond_17
    :goto_14
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    goto/16 :goto_7

    .line 482
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 483
    array-length v0, v2

    add-int/lit8 v5, v6, 0x10

    if-lt v0, v5, :cond_2b

    .line 486
    iget-boolean v0, v1, Lcom/solab/iso8583/MessageFactory;->forceStringEncoding:Z

    if-eqz v0, :cond_19

    .line 487
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x14

    iget-object v15, v1, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    const/16 v7, 0x10

    invoke-direct {v0, v2, v5, v7, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 488
    .local v0, "_bb":[B
    add-int/lit8 v5, v3, 0x14

    const/4 v15, 0x0

    invoke-static {v0, v15, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    .end local v0    # "_bb":[B
    :cond_19
    add-int/lit8 v0, v3, 0x14

    .local v0, "i":I
    :goto_15
    add-int/lit8 v5, v3, 0x24

    if-ge v0, v5, :cond_2a

    .line 491
    aget-byte v5, v4, v0

    if-lt v5, v11, :cond_1e

    aget-byte v5, v4, v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_1

    if-gt v5, v8, :cond_1e

    .line 492
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_d
    aget-byte v7, v4, v0

    sub-int/2addr v7, v11

    and-int/2addr v7, v9

    if-lez v7, :cond_1a

    move/from16 v7, v16

    goto :goto_16

    :cond_1a
    const/4 v7, 0x0

    :goto_16
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_0

    .line 493
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_e
    aget-byte v7, v4, v0

    sub-int/2addr v7, v11

    const/4 v15, 0x4

    and-int/2addr v7, v15

    if-lez v7, :cond_1b

    move/from16 v7, v16

    goto :goto_17

    :cond_1b
    const/4 v7, 0x0

    :goto_17
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_1

    .line 494
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_f
    aget-byte v7, v4, v0

    sub-int/2addr v7, v11

    const/4 v15, 0x2

    and-int/2addr v7, v15

    if-lez v7, :cond_1c

    move/from16 v7, v16

    goto :goto_18

    :cond_1c
    const/4 v7, 0x0

    :goto_18
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_0

    .line 495
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_10
    aget-byte v7, v4, v0

    sub-int/2addr v7, v11

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_1d

    move/from16 v7, v16

    goto :goto_19

    :cond_1d
    const/4 v7, 0x0

    :goto_19
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V

    const/16 v15, 0x46

    const/16 v18, 0x4

    goto/16 :goto_22

    .line 496
    :cond_1e
    aget-byte v5, v4, v0

    const/16 v7, 0x41

    if-lt v5, v7, :cond_23

    aget-byte v5, v4, v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_1

    const/16 v15, 0x46

    if-gt v5, v15, :cond_24

    .line 497
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_11
    aget-byte v21, v4, v0

    add-int/lit8 v21, v21, -0x37

    and-int/lit8 v21, v21, 0x8

    if-lez v21, :cond_1f

    move/from16 v7, v16

    goto :goto_1a

    :cond_1f
    const/4 v7, 0x0

    :goto_1a
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_0

    .line 498
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_12
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x37

    const/16 v18, 0x4

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_20

    move/from16 v7, v16

    goto :goto_1b

    :cond_20
    const/4 v7, 0x0

    :goto_1b
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_1

    .line 499
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_13
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x37

    const/16 v17, 0x2

    and-int/lit8 v7, v7, 0x2

    if-lez v7, :cond_21

    move/from16 v7, v16

    goto :goto_1c

    :cond_21
    const/4 v7, 0x0

    :goto_1c
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_0

    .line 500
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_14
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x37

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_22

    move/from16 v7, v16

    goto :goto_1d

    :cond_22
    const/4 v7, 0x0

    :goto_1d
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V

    const/16 v18, 0x4

    goto :goto_22

    .line 496
    :cond_23
    const/16 v15, 0x46

    .line 501
    :cond_24
    aget-byte v5, v4, v0

    const/16 v7, 0x61

    if-lt v5, v7, :cond_29

    aget-byte v5, v4, v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_1

    const/16 v7, 0x66

    if-gt v5, v7, :cond_29

    .line 502
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_15
    aget-byte v20, v4, v0

    add-int/lit8 v20, v20, -0x57

    and-int/lit8 v20, v20, 0x8

    if-lez v20, :cond_25

    move/from16 v7, v16

    goto :goto_1e

    :cond_25
    const/4 v7, 0x0

    :goto_1e
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_0

    .line 503
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_16
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x57

    const/16 v18, 0x4

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_26

    move/from16 v7, v16

    goto :goto_1f

    :cond_26
    const/4 v7, 0x0

    :goto_1f
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_1

    .line 504
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    :try_start_17
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x57

    const/16 v17, 0x2

    and-int/lit8 v7, v7, 0x2

    if-lez v7, :cond_27

    move/from16 v7, v16

    goto :goto_20

    :cond_27
    const/4 v7, 0x0

    :goto_20
    invoke-virtual {v13, v14, v7}, Ljava/util/BitSet;->set(IZ)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_0

    .line 505
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .restart local v14    # "pos":I
    :try_start_18
    aget-byte v7, v4, v0

    add-int/lit8 v7, v7, -0x57

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_28

    move/from16 v7, v16

    goto :goto_21

    :cond_28
    const/4 v7, 0x0

    :goto_21
    invoke-virtual {v13, v5, v7}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_22

    .line 501
    :cond_29
    const/16 v18, 0x4

    .line 490
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15

    .line 508
    .end local v0    # "i":I
    :cond_2a
    add-int/lit8 v0, v6, 0x10

    .end local v14    # "pos":I
    .local v0, "pos":I
    goto :goto_23

    .line 484
    .end local v0    # "pos":I
    .restart local v14    # "pos":I
    :cond_2b
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {v0, v15, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v6    # "minlength":I
    .end local v10    # "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    .end local v12    # "type":I
    .end local v13    # "bs":Ljava/util/BitSet;
    .end local v14    # "pos":I
    .end local p1    # "buf":[B
    .end local p2    # "isoHeaderLength":I
    .end local p3    # "binaryIsoHeader":Z
    throw v0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_1

    .line 510
    .restart local v6    # "minlength":I
    .restart local v10    # "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    .restart local v12    # "type":I
    .restart local v13    # "bs":Ljava/util/BitSet;
    .restart local v14    # "pos":I
    .restart local p1    # "buf":[B
    .restart local p2    # "isoHeaderLength":I
    .restart local p3    # "binaryIsoHeader":Z
    :cond_2c
    move v0, v6

    .line 516
    .end local v4    # "bitmapBuffer":[B
    .end local v14    # "pos":I
    .restart local v0    # "pos":I
    :goto_23
    goto/16 :goto_2e

    .line 512
    .end local v0    # "pos":I
    .restart local v14    # "pos":I
    :catch_1
    move-exception v0

    .line 513
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :goto_24
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Invalid ISO8583 bitmap"

    invoke-direct {v4, v5, v14}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 514
    .local v4, "_e":Ljava/text/ParseException;
    invoke-virtual {v4, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 515
    throw v4

    .line 427
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "_e":Ljava/text/ParseException;
    :cond_2d
    move/from16 v18, v4

    .line 428
    :goto_25
    if-eqz v0, :cond_2e

    const/4 v4, 0x2

    goto :goto_26

    :cond_2e
    move/from16 v4, v18

    :goto_26
    add-int v0, v3, v4

    .line 429
    .local v0, "bitmapStart":I
    move v4, v0

    .local v4, "i":I
    :goto_27
    add-int/lit8 v5, v0, 0x8

    if-ge v4, v5, :cond_31

    .line 430
    const/16 v5, 0x80

    .line 431
    .local v5, "bit":I
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_28
    if-ge v7, v9, :cond_30

    .line 432
    add-int/lit8 v8, v14, 0x1

    .end local v14    # "pos":I
    .local v8, "pos":I
    aget-byte v11, v2, v4

    and-int/2addr v11, v5

    if-eqz v11, :cond_2f

    move/from16 v11, v16

    goto :goto_29

    :cond_2f
    const/4 v11, 0x0

    :goto_29
    invoke-virtual {v13, v14, v11}, Ljava/util/BitSet;->set(IZ)V

    .line 433
    shr-int/lit8 v5, v5, 0x1

    .line 431
    add-int/lit8 v7, v7, 0x1

    move v14, v8

    goto :goto_28

    .line 429
    .end local v5    # "bit":I
    .end local v7    # "b":I
    .end local v8    # "pos":I
    .restart local v14    # "pos":I
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 437
    .end local v4    # "i":I
    :cond_31
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 438
    array-length v4, v2

    add-int/lit8 v5, v6, 0x8

    if-lt v4, v5, :cond_35

    .line 441
    add-int/lit8 v4, v0, 0x8

    .restart local v4    # "i":I
    :goto_2a
    add-int/lit8 v5, v0, 0x10

    if-ge v4, v5, :cond_34

    .line 442
    const/16 v5, 0x80

    .line 443
    .restart local v5    # "bit":I
    const/4 v7, 0x0

    .restart local v7    # "b":I
    :goto_2b
    if-ge v7, v9, :cond_33

    .line 444
    add-int/lit8 v8, v14, 0x1

    .end local v14    # "pos":I
    .restart local v8    # "pos":I
    aget-byte v11, v2, v4

    and-int/2addr v11, v5

    if-eqz v11, :cond_32

    move/from16 v11, v16

    goto :goto_2c

    :cond_32
    const/4 v11, 0x0

    :goto_2c
    invoke-virtual {v13, v14, v11}, Ljava/util/BitSet;->set(IZ)V

    .line 445
    shr-int/lit8 v5, v5, 0x1

    .line 443
    add-int/lit8 v7, v7, 0x1

    move v14, v8

    goto :goto_2b

    .line 441
    .end local v5    # "bit":I
    .end local v7    # "b":I
    .end local v8    # "pos":I
    .restart local v14    # "pos":I
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 448
    .end local v4    # "i":I
    :cond_34
    add-int/lit8 v4, v6, 0x8

    move v0, v4

    .end local v14    # "pos":I
    .local v4, "pos":I
    goto :goto_2d

    .line 439
    .end local v4    # "pos":I
    .restart local v14    # "pos":I
    :cond_35
    new-instance v4, Ljava/text/ParseException;

    invoke-direct {v4, v15, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 450
    :cond_36
    move v4, v6

    move v0, v4

    .line 452
    .end local v14    # "pos":I
    .local v0, "pos":I
    :goto_2d
    nop

    .line 519
    :goto_2e
    iget-object v4, v1, Lcom/solab/iso8583/MessageFactory;->parseMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 520
    .local v4, "parseGuide":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    iget-object v5, v1, Lcom/solab/iso8583/MessageFactory;->parseOrder:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 521
    .local v5, "index":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_53

    .line 530
    const/4 v7, 0x0

    .line 531
    .local v7, "abandon":Z
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_2f
    invoke-virtual {v13}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_38

    .line 532
    invoke-virtual {v13, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_37

    add-int/lit8 v9, v8, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_37

    .line 533
    iget-object v9, v1, Lcom/solab/iso8583/MessageFactory;->log:Lorg/slf4j/Logger;

    add-int/lit8 v11, v8, 0x1

    .line 534
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v15

    .line 533
    const-string v14, "ISO8583 MessageFactory cannot parse field {}: unspecified in parsing guide for type {}"

    invoke-interface {v9, v14, v11, v15}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    const/4 v7, 0x1

    .line 531
    :cond_37
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 538
    .end local v8    # "i":I
    :cond_38
    if-nez v7, :cond_52

    .line 542
    iget-boolean v8, v1, Lcom/solab/iso8583/MessageFactory;->binaryFields:Z

    const-string v9, "Field {} is not really in the message even though it\'s in the bitmap"

    if-eqz v8, :cond_47

    .line 543
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_30
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_46

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 544
    .local v11, "i":Ljava/lang/Integer;
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/solab/iso8583/parse/FieldParseInfo;

    .line 545
    .local v14, "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_44

    .line 546
    iget-boolean v15, v1, Lcom/solab/iso8583/MessageFactory;->ignoreLast:Z

    if-eqz v15, :cond_39

    array-length v15, v2

    if-lt v0, v15, :cond_39

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v15, v3, :cond_39

    .line 547
    iget-object v3, v1, Lcom/solab/iso8583/MessageFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v9, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v13, v3}, Ljava/util/BitSet;->clear(I)V

    move/from16 v19, v7

    goto/16 :goto_36

    .line 550
    :cond_39
    invoke-virtual {v14}, Lcom/solab/iso8583/parse/FieldParseInfo;->getDecoder()Lcom/solab/iso8583/CustomField;

    move-result-object v3

    .line 551
    .local v3, "decoder":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<*>;"
    if-nez v3, :cond_3a

    .line 552
    invoke-virtual {v1, v11}, Lcom/solab/iso8583/MessageFactory;->getCustomField(Ljava/lang/Integer;)Lcom/solab/iso8583/CustomField;

    move-result-object v3

    .line 554
    :cond_3a
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15, v2, v0, v3}, Lcom/solab/iso8583/parse/FieldParseInfo;->parseBinary(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;

    move-result-object v15

    .line 555
    .local v15, "val":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    move-object/from16 v18, v3

    .end local v3    # "decoder":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<*>;"
    .local v18, "decoder":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<*>;"
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v10, v3, v15}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 556
    if-eqz v15, :cond_43

    .line 557
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    move/from16 v19, v7

    .end local v7    # "abandon":Z
    .local v19, "abandon":Z
    sget-object v7, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_3f

    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->DATE10:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_3f

    .line 558
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->DATE4:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_3f

    .line 559
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->DATE12:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_3f

    .line 560
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->DATE14:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_3f

    .line 561
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->DATE6:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_3f

    .line 562
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->DATE_EXP:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_3f

    .line 563
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_3f

    .line 564
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->TIME:Lcom/solab/iso8583/IsoType;

    if-ne v3, v7, :cond_3b

    goto :goto_33

    .line 566
    :cond_3b
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_3d

    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_3d

    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v3, v7, :cond_3c

    goto :goto_31

    .line 569
    :cond_3c
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_34

    .line 567
    :cond_3d
    :goto_31
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v3

    const/4 v7, 0x2

    div-int/2addr v3, v7

    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v17

    rem-int/lit8 v20, v17, 0x2

    if-nez v20, :cond_3e

    const/4 v7, 0x0

    goto :goto_32

    :cond_3e
    move/from16 v7, v16

    :goto_32
    add-int/2addr v3, v7

    add-int/2addr v0, v3

    goto :goto_34

    .line 565
    :cond_3f
    :goto_33
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v3

    const/4 v7, 0x2

    div-int/2addr v3, v7

    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v17

    rem-int/lit8 v20, v17, 0x2

    add-int v3, v3, v20

    add-int/2addr v0, v3

    .line 571
    :goto_34
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_42

    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_42

    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v3, v7, :cond_40

    goto :goto_35

    .line 573
    :cond_40
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_41

    .line 574
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_41

    .line 575
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_41

    .line 576
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_41

    .line 577
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v3, v7, :cond_41

    .line 578
    invoke-virtual {v15}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v7, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v3, v7, :cond_45

    .line 579
    :cond_41
    add-int/lit8 v0, v0, 0x2

    goto :goto_36

    .line 572
    :cond_42
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 556
    .end local v19    # "abandon":Z
    .restart local v7    # "abandon":Z
    :cond_43
    move/from16 v19, v7

    .end local v7    # "abandon":Z
    .restart local v19    # "abandon":Z
    goto :goto_36

    .line 545
    .end local v15    # "val":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    .end local v18    # "decoder":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<*>;"
    .end local v19    # "abandon":Z
    .restart local v7    # "abandon":Z
    :cond_44
    move/from16 v19, v7

    .line 584
    .end local v7    # "abandon":Z
    .end local v11    # "i":Ljava/lang/Integer;
    .end local v14    # "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    .restart local v19    # "abandon":Z
    :cond_45
    :goto_36
    move/from16 v3, p2

    move/from16 v7, v19

    goto/16 :goto_30

    .end local v19    # "abandon":Z
    .restart local v7    # "abandon":Z
    :cond_46
    move/from16 v19, v7

    .end local v7    # "abandon":Z
    .restart local v19    # "abandon":Z
    goto/16 :goto_3b

    .line 586
    .end local v19    # "abandon":Z
    .restart local v7    # "abandon":Z
    :cond_47
    move/from16 v19, v7

    .end local v7    # "abandon":Z
    .restart local v19    # "abandon":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 587
    .local v7, "i":Ljava/lang/Integer;
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/solab/iso8583/parse/FieldParseInfo;

    .line 588
    .local v8, "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v13, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 589
    iget-boolean v11, v1, Lcom/solab/iso8583/MessageFactory;->ignoreLast:Z

    if-eqz v11, :cond_48

    array-length v11, v2

    if-lt v0, v11, :cond_48

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v11, v14, :cond_48

    .line 590
    iget-object v11, v1, Lcom/solab/iso8583/MessageFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v11, v9, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v13, v11}, Ljava/util/BitSet;->clear(I)V

    move-object/from16 v17, v3

    goto/16 :goto_3a

    .line 593
    :cond_48
    invoke-virtual {v8}, Lcom/solab/iso8583/parse/FieldParseInfo;->getDecoder()Lcom/solab/iso8583/CustomField;

    move-result-object v11

    .line 594
    .local v11, "decoder":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<*>;"
    if-nez v11, :cond_49

    .line 595
    invoke-virtual {v1, v7}, Lcom/solab/iso8583/MessageFactory;->getCustomField(Ljava/lang/Integer;)Lcom/solab/iso8583/CustomField;

    move-result-object v11

    .line 597
    :cond_49
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v8, v14, v2, v0, v11}, Lcom/solab/iso8583/parse/FieldParseInfo;->parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;

    move-result-object v14

    .line 598
    .local v14, "val":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v10, v15, v14}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 600
    invoke-virtual {v14}, Lcom/solab/iso8583/IsoValue;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v3

    invoke-virtual {v8}, Lcom/solab/iso8583/parse/FieldParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v0, v3

    .line 601
    invoke-virtual {v14}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v3, v15, :cond_4e

    invoke-virtual {v14}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v3, v15, :cond_4e

    invoke-virtual {v14}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v3, v15, :cond_4a

    goto :goto_39

    .line 603
    :cond_4a
    invoke-virtual {v14}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v3, v15, :cond_4d

    invoke-virtual {v14}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v3, v15, :cond_4d

    invoke-virtual {v14}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v3, v15, :cond_4b

    goto :goto_38

    .line 605
    :cond_4b
    invoke-virtual {v14}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLLLVAR:Lcom/solab/iso8583/IsoType;

    if-eq v3, v15, :cond_4c

    invoke-virtual {v14}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    if-eq v3, v15, :cond_4c

    invoke-virtual {v14}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v3

    sget-object v15, Lcom/solab/iso8583/IsoType;->LLLLBCDBIN:Lcom/solab/iso8583/IsoType;

    if-ne v3, v15, :cond_50

    .line 606
    :cond_4c
    add-int/lit8 v0, v0, 0x4

    goto :goto_3a

    .line 604
    :cond_4d
    :goto_38
    add-int/lit8 v0, v0, 0x3

    goto :goto_3a

    .line 602
    :cond_4e
    :goto_39
    add-int/lit8 v0, v0, 0x2

    goto :goto_3a

    .line 588
    .end local v11    # "decoder":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<*>;"
    .end local v14    # "val":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_4f
    move-object/from16 v17, v3

    .line 610
    .end local v7    # "i":Ljava/lang/Integer;
    .end local v8    # "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    :cond_50
    :goto_3a
    move-object/from16 v3, v17

    goto/16 :goto_37

    .line 612
    :cond_51
    :goto_3b
    iget-boolean v3, v1, Lcom/solab/iso8583/MessageFactory;->binaryHeader:Z

    invoke-virtual {v10, v3}, Lcom/solab/iso8583/IsoMessage;->setBinaryHeader(Z)V

    .line 613
    iget-boolean v3, v1, Lcom/solab/iso8583/MessageFactory;->binaryFields:Z

    invoke-virtual {v10, v3}, Lcom/solab/iso8583/IsoMessage;->setBinaryFields(Z)V

    .line 614
    iget-boolean v3, v1, Lcom/solab/iso8583/MessageFactory;->binBitmap:Z

    invoke-virtual {v10, v3}, Lcom/solab/iso8583/IsoMessage;->setBinaryBitmap(Z)V

    .line 615
    iget-boolean v3, v1, Lcom/solab/iso8583/MessageFactory;->variableLengthFieldsInHex:Z

    invoke-virtual {v10, v3}, Lcom/solab/iso8583/IsoMessage;->setEncodeVariableLengthFieldsInHex(Z)V

    .line 616
    return-object v10

    .line 539
    .end local v19    # "abandon":Z
    .local v7, "abandon":Z
    :cond_52
    move/from16 v19, v7

    .end local v7    # "abandon":Z
    .restart local v19    # "abandon":Z
    new-instance v3, Ljava/text/ParseException;

    const-string v7, "ISO8583 MessageFactory cannot parse fields"

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 522
    .end local v19    # "abandon":Z
    :cond_53
    const/4 v8, 0x0

    iget-object v3, v1, Lcom/solab/iso8583/MessageFactory;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    .line 523
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v8

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v7, v9, v16

    .line 522
    const-string v7, "ISO8583 MessageFactory has no parsing guide for message type %04x [%s]"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 524
    new-instance v3, Ljava/text/ParseException;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 526
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v8, v11

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v9, v8, v16

    .line 524
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 400
    .end local v0    # "pos":I
    .end local v4    # "parseGuide":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    .end local v5    # "index":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    .end local v12    # "type":I
    .end local v13    # "bs":Ljava/util/BitSet;
    :cond_54
    move v11, v7

    new-instance v0, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient buffer length, needs to be at least "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public removeMessageTemplate(I)V
    .locals 2
    .param p1, "type"    # I

    .line 712
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->typeTemplates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    return-void
.end method

.method public setAssignDate(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 643
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput-boolean p1, p0, Lcom/solab/iso8583/MessageFactory;->setDate:Z

    .line 644
    return-void
.end method

.method public setBinaryFields(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 239
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput-boolean p1, p0, Lcom/solab/iso8583/MessageFactory;->binaryFields:Z

    .line 240
    return-void
.end method

.method public setBinaryHeader(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 229
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput-boolean p1, p0, Lcom/solab/iso8583/MessageFactory;->binaryHeader:Z

    .line 230
    return-void
.end method

.method public setBinaryIsoHeader(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .line 690
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    if-nez p2, :cond_0

    .line 691
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->binIsoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->binIsoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :goto_0
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 127
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 130
    iput-object p1, p0, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 133
    .local v1, "pt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/solab/iso8583/parse/FieldParseInfo;

    .line 134
    .local v3, "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    iget-object v4, p0, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/solab/iso8583/parse/FieldParseInfo;->setCharacterEncoding(Ljava/lang/String;)V

    .line 135
    .end local v3    # "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    goto :goto_1

    .line 136
    .end local v1    # "pt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->typeTemplates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->typeTemplates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/solab/iso8583/IsoMessage;

    .line 140
    .local v1, "tmpl":Lcom/solab/iso8583/IsoMessage;, "TT;"
    iget-object v2, p0, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/solab/iso8583/IsoMessage;->setCharacterEncoding(Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_3
    const/16 v3, 0x81

    if-ge v2, v3, :cond_3

    .line 142
    invoke-virtual {v1, v2}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v3

    .line 143
    .local v3, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    if-eqz v3, :cond_2

    .line 144
    iget-object v4, p0, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/solab/iso8583/IsoValue;->setCharacterEncoding(Ljava/lang/String;)V

    .line 141
    .end local v3    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 147
    .end local v1    # "tmpl":Lcom/solab/iso8583/IsoMessage;, "TT;"
    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 149
    :cond_4
    return-void

    .line 128
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set null encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfigPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    invoke-static {p0, p1}, Lcom/solab/iso8583/parse/ConfigParser;->configureFromClasspathConfig(Lcom/solab/iso8583/MessageFactory;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->encoding:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/solab/iso8583/MessageFactory;->setCharacterEncoding(Ljava/lang/String;)V

    .line 208
    iget-boolean v0, p0, Lcom/solab/iso8583/MessageFactory;->forceStringEncoding:Z

    invoke-virtual {p0, v0}, Lcom/solab/iso8583/MessageFactory;->setForceStringEncoding(Z)V

    .line 209
    return-void
.end method

.method public setCustomField(ILcom/solab/iso8583/CustomField;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/solab/iso8583/CustomField<",
            "*>;)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    .local p2, "value":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<*>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->customFields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public setCustomFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/solab/iso8583/CustomField;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/CustomField;>;"
    iput-object p1, p0, Lcom/solab/iso8583/MessageFactory;->customFields:Ljava/util/Map;

    .line 184
    return-void
.end method

.method public setEtx(I)V
    .locals 0
    .param p1, "value"    # I

    .line 256
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput p1, p0, Lcom/solab/iso8583/MessageFactory;->etx:I

    .line 257
    return-void
.end method

.method public setForceSecondaryBitmap(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 160
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput-boolean p1, p0, Lcom/solab/iso8583/MessageFactory;->forceb2:Z

    .line 161
    return-void
.end method

.method public setForceStringEncoding(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .line 88
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput-boolean p1, p0, Lcom/solab/iso8583/MessageFactory;->forceStringEncoding:Z

    .line 89
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 90
    .local v1, "pm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/solab/iso8583/parse/FieldParseInfo;

    .line 91
    .local v3, "parser":Lcom/solab/iso8583/parse/FieldParseInfo;
    invoke-virtual {v3, p1}, Lcom/solab/iso8583/parse/FieldParseInfo;->setForceStringDecoding(Z)V

    .line 92
    .end local v3    # "parser":Lcom/solab/iso8583/parse/FieldParseInfo;
    goto :goto_1

    .line 93
    .end local v1    # "pm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    :cond_0
    goto :goto_0

    .line 94
    :cond_1
    return-void
.end method

.method public setIgnoreLastMissingField(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 171
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput-boolean p1, p0, Lcom/solab/iso8583/MessageFactory;->ignoreLast:Z

    .line 172
    return-void
.end method

.method public setIsoHeader(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 673
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    if-nez p2, :cond_0

    .line 674
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->binIsoHeaders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :goto_0
    return-void
.end method

.method public setIsoHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 665
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 666
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->isoHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 667
    return-void
.end method

.method public setParseMap(ILjava/util/Map;)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/solab/iso8583/parse/FieldParseInfo;",
            ">;)V"
        }
    .end annotation

    .line 738
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v0, "index":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 741
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 742
    iget-object v1, p0, Lcom/solab/iso8583/MessageFactory;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 743
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 742
    const-string v3, "ISO8583 MessageFactory adding parse map for type %04x with fields %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 744
    iget-object v1, p0, Lcom/solab/iso8583/MessageFactory;->parseOrder:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    return-void
.end method

.method public setTimezoneForParseGuide(IILjava/util/TimeZone;)V
    .locals 5
    .param p1, "messageType"    # I
    .param p2, "field"    # I
    .param p3, "tz"    # Ljava/util/TimeZone;

    .line 369
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    if-nez p2, :cond_0

    .line 370
    invoke-static {p3}, Lcom/solab/iso8583/parse/DateTimeParseInfo;->setDefaultTimeZone(Ljava/util/TimeZone;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 373
    .local v0, "guide":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    if-eqz v0, :cond_1

    .line 374
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/solab/iso8583/parse/FieldParseInfo;

    .line 375
    .local v1, "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    instance-of v2, v1, Lcom/solab/iso8583/parse/DateTimeParseInfo;

    if-eqz v2, :cond_1

    .line 376
    move-object v2, v1

    check-cast v2, Lcom/solab/iso8583/parse/DateTimeParseInfo;

    invoke-virtual {v2, p3}, Lcom/solab/iso8583/parse/DateTimeParseInfo;->setTimeZone(Ljava/util/TimeZone;)V

    .line 377
    return-void

    .line 380
    .end local v1    # "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    :cond_1
    iget-object v1, p0, Lcom/solab/iso8583/MessageFactory;->log:Lorg/slf4j/Logger;

    .line 381
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 380
    const-string v4, "Field {} for message type {} is not for dates, cannot set timezone"

    invoke-interface {v1, v4, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method public setTraceNumberGenerator(Lcom/solab/iso8583/TraceNumberGenerator;)V
    .locals 0
    .param p1, "value"    # Lcom/solab/iso8583/TraceNumberGenerator;

    .line 654
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput-object p1, p0, Lcom/solab/iso8583/MessageFactory;->traceGen:Lcom/solab/iso8583/TraceNumberGenerator;

    .line 655
    return-void
.end method

.method public setUseBinaryBitmap(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 117
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput-boolean p1, p0, Lcom/solab/iso8583/MessageFactory;->binBitmap:Z

    .line 118
    return-void
.end method

.method public setUseBinaryMessages(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 215
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput-boolean p1, p0, Lcom/solab/iso8583/MessageFactory;->binaryFields:Z

    iput-boolean p1, p0, Lcom/solab/iso8583/MessageFactory;->binaryHeader:Z

    .line 216
    return-void
.end method

.method public setVariableLengthFieldsInHex(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .line 102
    .local p0, "this":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    iput-boolean p1, p0, Lcom/solab/iso8583/MessageFactory;->variableLengthFieldsInHex:Z

    .line 103
    iget-object v0, p0, Lcom/solab/iso8583/MessageFactory;->parseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 104
    .local v1, "pm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/solab/iso8583/parse/FieldParseInfo;

    .line 105
    .local v3, "parser":Lcom/solab/iso8583/parse/FieldParseInfo;
    invoke-virtual {v3, p1}, Lcom/solab/iso8583/parse/FieldParseInfo;->setForceHexadecimalLength(Z)V

    .line 106
    .end local v3    # "parser":Lcom/solab/iso8583/parse/FieldParseInfo;
    goto :goto_1

    .line 107
    .end local v1    # "pm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method
