.class public Lcom/fasterxml/jackson/core/util/JsonParserSequence;
.super Lcom/fasterxml/jackson/core/util/JsonParserDelegate;
.source "JsonParserSequence.java"


# instance fields
.field protected final _checkForExistingToken:Z

.field protected _hasToken:Z

.field protected _nextParserIndex:I

.field protected final _parsers:[Lcom/fasterxml/jackson/core/JsonParser;


# direct methods
.method protected constructor <init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .param p1, "checkForExistingToken"    # Z
    .param p2, "parsers"    # [Lcom/fasterxml/jackson/core/JsonParser;

    .line 68
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 69
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_checkForExistingToken:Z

    .line 70
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->hasCurrentToken()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_hasToken:Z

    .line 71
    iput-object p2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    .line 72
    iput v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    .line 73
    return-void
.end method

.method protected constructor <init>([Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 1
    .param p1, "parsers"    # [Lcom/fasterxml/jackson/core/JsonParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;-><init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 61
    return-void
.end method

.method public static createFlattened(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/JsonParserSequence;
    .locals 1
    .param p0, "first"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "second"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->createFlattened(ZLcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    move-result-object v0

    return-object v0
.end method

.method public static createFlattened(ZLcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/JsonParserSequence;
    .locals 3
    .param p0, "checkForExistingToken"    # Z
    .param p1, "first"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "second"    # Lcom/fasterxml/jackson/core/JsonParser;

    .line 87
    instance-of v0, p1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;-><init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/core/JsonParser;>;"
    instance-of v1, p1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-eqz v1, :cond_1

    .line 93
    move-object v1, p1

    check-cast v1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_0
    instance-of v1, p2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-eqz v1, :cond_2

    .line 98
    move-object v1, p2

    check-cast v1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_1
    new-instance v1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/fasterxml/jackson/core/JsonParser;

    invoke-direct {v1, p0, v2}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;-><init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 102
    return-object v1
.end method


# virtual methods
.method protected addFlattenedActiveParsers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "listToAddIn":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/core/JsonParser;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v1, v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 119
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    aget-object v2, v2, v0

    .line 120
    .local v2, "p":Lcom/fasterxml/jackson/core/JsonParser;
    instance-of v3, v2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-eqz v3, :cond_0

    .line 121
    move-object v3, v2

    check-cast v3, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    goto :goto_1

    .line 123
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v2    # "p":Lcom/fasterxml/jackson/core/JsonParser;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->switchToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 137
    :cond_0
    goto :goto_0
.end method

.method public containedParsersCount()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v0, v0

    return v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_hasToken:Z

    if-eqz v0, :cond_1

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_hasToken:Z

    .line 148
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 151
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->switchAndReturnNext()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    return-object v1

    .line 154
    :cond_2
    return-object v0
.end method

.method public skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    .line 166
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 167
    return-object p0

    .line 169
    :cond_0
    const/4 v0, 0x1

    .line 174
    .local v0, "open":I
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 175
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v1, :cond_1

    .line 176
    return-object p0

    .line 178
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructStart()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructEnd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_3

    .line 182
    return-object p0

    .line 185
    .end local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    :goto_1
    goto :goto_0
.end method

.method protected switchAndReturnNext()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 230
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    .line 231
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_checkForExistingToken:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasCurrentToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 235
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v0, :cond_1

    .line 236
    return-object v0

    .line 238
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_1
    goto :goto_0

    .line 239
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected switchToNext()Z
    .locals 3

    .line 220
    iget v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 221
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    .line 222
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
