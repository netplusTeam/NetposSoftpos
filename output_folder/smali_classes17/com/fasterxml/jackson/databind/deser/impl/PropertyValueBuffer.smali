.class public Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
.super Ljava/lang/Object;
.source "PropertyValueBuffer.java"


# instance fields
.field protected _buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

.field protected final _context:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field protected final _creatorParameters:[Ljava/lang/Object;

.field protected _idValue:Ljava/lang/Object;

.field protected final _objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

.field protected _paramsNeeded:I

.field protected _paramsSeen:I

.field protected final _paramsSeenBig:Ljava/util/BitSet;

.field protected final _parser:Lcom/fasterxml/jackson/core/JsonParser;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "paramCount"    # I
    .param p4, "oir"    # Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    .line 89
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 90
    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    .line 91
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 92
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    .line 93
    const/16 v0, 0x20

    if-ge p3, v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    .line 98
    :goto_0
    return-void
.end method


# virtual methods
.method protected _findMissing(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;
    .locals 7
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "injectableValueId":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isRequired()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    new-array v5, v4, [Ljava/lang/Object;

    .line 194
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 193
    const-string v6, "Missing required creator property \'%s\' (index %d)"

    invoke-virtual {v1, p1, v6, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    sget-object v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    new-array v4, v4, [Ljava/lang/Object;

    .line 199
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 197
    const-string v2, "Missing creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES` enabled"

    invoke-virtual {v1, p1, v2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 203
    .local v1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "value"    # Ljava/lang/Object;

    .line 263
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v0

    .line 264
    .local v0, "ix":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 265
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 266
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeen:I

    .line 267
    .local v1, "old":I
    shl-int v4, v3, v0

    or-int/2addr v4, v1

    .line 268
    .local v4, "newValue":I
    if-eq v1, v4, :cond_2

    .line 269
    iput v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeen:I

    .line 270
    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-gtz v5, :cond_2

    .line 272
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    if-eqz v5, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .line 275
    .end local v1    # "old":I
    .end local v4    # "newValue":I
    :cond_2
    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 277
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 278
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    .line 283
    :cond_4
    :goto_0
    return v2
.end method

.method public bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 291
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    .line 292
    return-void
.end method

.method public bufferMapProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 295
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    .line 296
    return-void
.end method

.method public bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
    .locals 2
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "value"    # Ljava/lang/Object;

    .line 287
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    .line 288
    return-void
.end method

.method protected buffered()Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    return-object v0
.end method

.method public getParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;
    .locals 5
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->hasParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v1

    aget-object v0, v0, v1

    .local v0, "value":Ljava/lang/Object;
    goto :goto_0

    .line 131
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_findMissing(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    move-object v0, v2

    .line 133
    .restart local v0    # "value":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 136
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 134
    const-string v3, "Null value for creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_NULL_FOR_CREATOR_PARAMETERS` enabled"

    invoke-virtual {v1, p1, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 138
    :cond_1
    return-object v0
.end method

.method public getParameters([Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)[Ljava/lang/Object;
    .locals 6
    .param p1, "props"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-lez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    if-nez v0, :cond_2

    .line 154
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeen:I

    .line 157
    .local v0, "mask":I
    const/4 v1, 0x0

    .local v1, "ix":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    array-length v2, v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 158
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aget-object v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_findMissing(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "mask":I
    .end local v1    # "ix":I
    .end local v2    # "len":I
    :cond_1
    goto :goto_2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    array-length v0, v0

    .line 164
    .local v0, "len":I
    const/4 v1, 0x0

    .restart local v1    # "ix":I
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    move v1, v2

    if-ge v2, v0, :cond_3

    .line 165
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_findMissing(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    .end local v0    # "len":I
    .end local v1    # "ix":I
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 173
    aget-object v1, p1, v0

    .line 174
    .local v1, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 176
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 174
    const-string v4, "Null value for creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_NULL_FOR_CREATOR_PARAMETERS` enabled"

    invoke-virtual {v2, v1, v4, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v1    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 180
    .end local v0    # "ix":I
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public handleIdValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_2

    .line 233
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 234
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    invoke-virtual {p1, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v0

    .line 235
    .local v0, "roid":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->bindItem(Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 238
    .local v1, "idProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v1, :cond_0

    .line 239
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 241
    .end local v0    # "roid":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .end local v1    # "idProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportUnresolvedObjectId(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_2
    :goto_0
    return-object p2
.end method

.method public final hasParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Z
    .locals 2
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 108
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    if-nez v0, :cond_1

    .line 109
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeen:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v1

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 251
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readIdProperty(Ljava/lang/String;)Z
    .locals 3
    .param p1, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->readObjectReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    .line 222
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
