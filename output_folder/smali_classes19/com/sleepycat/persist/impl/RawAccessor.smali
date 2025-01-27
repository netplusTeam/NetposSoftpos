.class Lcom/sleepycat/persist/impl/RawAccessor;
.super Ljava/lang/Object;
.source "RawAccessor.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/Accessor;


# instance fields
.field private isCompositeKey:Z

.field private nonKeyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private parentFormat:Lcom/sleepycat/persist/impl/Format;

.field private priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

.field private secKeyFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private superAccessor:Lcom/sleepycat/persist/impl/Accessor;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Accessor;Lcom/sleepycat/persist/impl/FieldInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "parentFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "superAccessor"    # Lcom/sleepycat/persist/impl/Accessor;
    .param p3, "priKeyField"    # Lcom/sleepycat/persist/impl/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Format;",
            "Lcom/sleepycat/persist/impl/Accessor;",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p4, "secKeyFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    .local p5, "nonKeyFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->parentFormat:Lcom/sleepycat/persist/impl/Format;

    .line 43
    iput-object p2, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 44
    iput-object p3, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    .line 45
    iput-object p4, p0, Lcom/sleepycat/persist/impl/RawAccessor;->secKeyFields:Ljava/util/List;

    .line 46
    iput-object p5, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Format;Ljava/util/List;)V
    .locals 1
    .param p1, "parentFormat"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Format;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p2, "nonKeyFields":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/FieldInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->parentFormat:Lcom/sleepycat/persist/impl/Format;

    .line 52
    iput-object p2, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->secKeyFields:Ljava/util/List;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->isCompositeKey:Z

    .line 55
    return-void
.end method

.method private getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 254
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getSuper()Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v0

    return-object v0
.end method

.method private getValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "field"    # Lcom/sleepycat/persist/impl/FieldInfo;

    .line 258
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getValues()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/EntityInput;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "field"    # Lcom/sleepycat/persist/impl/FieldInfo;
    .param p3, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 282
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 284
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    iget-boolean v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->isCompositeKey:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 287
    invoke-interface {p3}, Lcom/sleepycat/persist/impl/EntityInput;->readStringObject()Ljava/lang/Object;

    move-result-object v1

    .local v1, "val":Ljava/lang/Object;
    goto :goto_1

    .line 289
    .end local v1    # "val":Ljava/lang/Object;
    :cond_1
    invoke-interface {p3}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "val":Ljava/lang/Object;
    goto :goto_1

    .line 285
    .end local v1    # "val":Ljava/lang/Object;
    :cond_2
    :goto_0
    invoke-interface {p3, v0}, Lcom/sleepycat/persist/impl/EntityInput;->readKeyObject(Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;

    move-result-object v1

    .line 291
    .restart local v1    # "val":Ljava/lang/Object;
    :goto_1
    invoke-direct {p0, p1, p2, v1}, Lcom/sleepycat/persist/impl/RawAccessor;->setValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method private setValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "field"    # Lcom/sleepycat/persist/impl/FieldInfo;
    .param p3, "val"    # Ljava/lang/Object;

    .line 262
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getValues()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method private writeField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "field"    # Lcom/sleepycat/persist/impl/FieldInfo;
    .param p3, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/RawAccessor;->getValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "val":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 270
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/RawAccessor;->isCompositeKey:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    .line 273
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v2}, Lcom/sleepycat/persist/impl/EntityOutput;->writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    goto :goto_1

    .line 275
    :cond_1
    invoke-interface {p3, v0, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    goto :goto_1

    .line 271
    :cond_2
    :goto_0
    invoke-interface {p3, v0, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeKeyObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    .line 277
    :goto_1
    return-void
.end method


# virtual methods
.method public getField(Ljava/lang/Object;IIZ)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "field"    # I
    .param p3, "superLevel"    # I
    .param p4, "isSecField"    # Z

    .line 219
    if-lez p3, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 221
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/RawAccessor;->getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v0, v1, p2, v2, p4}, Lcom/sleepycat/persist/impl/Accessor;->getField(Ljava/lang/Object;IIZ)Ljava/lang/Object;

    move-result-object v0

    .line 220
    return-object v0

    .line 223
    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->secKeyFields:Ljava/util/List;

    .line 224
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 225
    .local v0, "fld":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/RawAccessor;->getValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getPriKeyField()Lcom/sleepycat/persist/impl/FieldInfo;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    return-object v0
.end method

.method public isPriKeyFieldNullOrZero(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v0, :cond_3

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/RawAccessor;->getValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "val":Ljava/lang/Object;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 76
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 77
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 79
    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3

    .line 81
    .end local v0    # "val":Ljava/lang/Object;
    .end local v1    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_4

    .line 82
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/RawAccessor;->getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/persist/impl/Accessor;->isPriKeyFieldNullOrZero(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 84
    :cond_4
    const-string v0, "No primary key field"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 69
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/sleepycat/persist/impl/Accessor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    .local v0, "superObject":Lcom/sleepycat/persist/raw/RawObject;
    goto :goto_0

    .line 62
    .end local v0    # "superObject":Lcom/sleepycat/persist/raw/RawObject;
    :cond_0
    const/4 v0, 0x0

    .line 64
    .restart local v0    # "superObject":Lcom/sleepycat/persist/raw/RawObject;
    :goto_0
    new-instance v1, Lcom/sleepycat/persist/raw/RawObject;

    iget-object v2, p0, Lcom/sleepycat/persist/impl/RawAccessor;->parentFormat:Lcom/sleepycat/persist/impl/Format;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/persist/raw/RawObject;-><init>(Lcom/sleepycat/persist/raw/RawType;Ljava/util/Map;Lcom/sleepycat/persist/raw/RawObject;)V

    return-object v1
.end method

.method public readCompositeKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {p0, p1, v1, p2}, Lcom/sleepycat/persist/impl/RawAccessor;->readField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/EntityInput;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "startField"    # I
    .param p4, "endField"    # I
    .param p5, "superLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 182
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_0

    .line 183
    nop

    .line 184
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/RawAccessor;->getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v1

    add-int/lit8 v5, p5, -0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sleepycat/persist/impl/Accessor;->readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    goto :goto_0

    .line 186
    :cond_0
    if-gtz p5, :cond_2

    .line 190
    :goto_0
    if-gtz p5, :cond_1

    .line 191
    move v0, p3

    .line 192
    .local v0, "i":I
    :goto_1
    if-gt v0, p4, :cond_1

    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {p0, p1, v1, p2}, Lcom/sleepycat/persist/impl/RawAccessor;->readField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/EntityInput;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 187
    :cond_2
    const-string v0, "Super class does not exist"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readPriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 107
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-interface {p2, v0}, Lcom/sleepycat/persist/impl/EntityInput;->readKeyObject(Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, "val":Ljava/lang/Object;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {p0, p1, v2, v1}, Lcom/sleepycat/persist/impl/RawAccessor;->setValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Ljava/lang/Object;)V

    .line 109
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    .end local v1    # "val":Ljava/lang/Object;
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/RawAccessor;->getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sleepycat/persist/impl/Accessor;->readPriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v0, "No primary key field"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "startField"    # I
    .param p4, "endField"    # I
    .param p5, "superLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    const/16 v1, 0x12

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    .line 141
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/RawAccessor;->getValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sleepycat/persist/impl/EntityInput;->registerPriKeyObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/RawAccessor;->getValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sleepycat/persist/impl/EntityInput;->registerPriStringKeyObject(Ljava/lang/Object;)V

    .line 147
    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v1, :cond_2

    .line 148
    nop

    .line 149
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/RawAccessor;->getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v2

    add-int/lit8 v6, p5, -0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sleepycat/persist/impl/Accessor;->readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    goto :goto_1

    .line 151
    :cond_2
    if-gtz p5, :cond_4

    .line 155
    :goto_1
    if-gtz p5, :cond_3

    .line 156
    move v0, p3

    .line 157
    .local v0, "i":I
    :goto_2
    if-gt v0, p4, :cond_3

    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->secKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->secKeyFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {p0, p1, v1, p2}, Lcom/sleepycat/persist/impl/RawAccessor;->readField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/EntityInput;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 162
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 152
    :cond_4
    const-string v0, "Super class does not exist"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setField(Ljava/lang/Object;IIZLjava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "field"    # I
    .param p3, "superLevel"    # I
    .param p4, "isSecField"    # Z
    .param p5, "value"    # Ljava/lang/Object;

    .line 233
    if-lez p3, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    .line 235
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/RawAccessor;->getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v1

    add-int/lit8 v3, p3, -0x1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sleepycat/persist/impl/Accessor;->setField(Ljava/lang/Object;IIZLjava/lang/Object;)V

    .line 236
    return-void

    .line 238
    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->secKeyFields:Ljava/util/List;

    .line 239
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/FieldInfo;

    .line 240
    .local v0, "fld":Lcom/sleepycat/persist/impl/FieldInfo;
    invoke-direct {p0, p1, v0, p5}, Lcom/sleepycat/persist/impl/RawAccessor;->setValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public setPriField(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/persist/impl/RawAccessor;->setValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/RawAccessor;->getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sleepycat/persist/impl/Accessor;->setPriField(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_1
    const-string v0, "No primary key field"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public writeCompositeKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {p0, p1, v1, p2}, Lcom/sleepycat/persist/impl/RawAccessor;->writeField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public writeNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/RawAccessor;->getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sleepycat/persist/impl/Accessor;->writeNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 170
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->nonKeyFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {p0, p1, v1, p2}, Lcom/sleepycat/persist/impl/RawAccessor;->writeField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public writePriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/RawAccessor;->getValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "val":Ljava/lang/Object;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 94
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-interface {p2, v0, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeKeyObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    .line 95
    .end local v0    # "val":Ljava/lang/Object;
    .end local v1    # "format":Lcom/sleepycat/persist/impl/Format;
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/RawAccessor;->getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sleepycat/persist/impl/Accessor;->writePriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v0, "No primary key field"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public writeSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    .line 121
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/FieldInfo;->getType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->priKeyField:Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/RawAccessor;->getValue(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sleepycat/persist/impl/EntityOutput;->registerPriKeyObject(Ljava/lang/Object;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawAccessor;->superAccessor:Lcom/sleepycat/persist/impl/Accessor;

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/RawAccessor;->getSuper(Ljava/lang/Object;)Lcom/sleepycat/persist/raw/RawObject;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sleepycat/persist/impl/Accessor;->writeSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 127
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->secKeyFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawAccessor;->secKeyFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/FieldInfo;

    invoke-direct {p0, p1, v1, p2}, Lcom/sleepycat/persist/impl/RawAccessor;->writeField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/FieldInfo;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
