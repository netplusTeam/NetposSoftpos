.class Lcom/sleepycat/persist/impl/RecordInput;
.super Lcom/sleepycat/bind/tuple/TupleInput;
.source "RecordInput.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/EntityInput;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final PRI_KEY_VISITED_OFFSET:I = 0x7ffffffe

.field static final PROHIBIT_NESTED_REF_MSG:Ljava/lang/String; = "Cannot embed a reference to a proxied object in the proxy; for example, a collection may not be an element of the collection because collections are proxied"

.field static final PROHIBIT_REF_OBJECT:Ljava/lang/Object;

.field static final PROHIBIT_REF_OFFSET:I = 0x7ffffffd

.field static final VISITED_INIT_SIZE:I = 0x32


# instance fields
.field private catalog:Lcom/sleepycat/persist/impl/Catalog;

.field private newStringFormat:Z

.field private priKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

.field private priKeyFormatId:I

.field private rawAccess:Z

.field private visited:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    nop

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sleepycat/persist/impl/RecordInput;->PROHIBIT_REF_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/je/DatabaseEntry;I[BII)V
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "priKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "priKeyFormatId"    # I
    .param p5, "buffer"    # [B
    .param p6, "offset"    # I
    .param p7, "length"    # I

    .line 68
    invoke-direct {p0, p5, p6, p7}, Lcom/sleepycat/bind/tuple/TupleInput;-><init>([BII)V

    .line 69
    iput-object p1, p0, Lcom/sleepycat/persist/impl/RecordInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 70
    iput-boolean p2, p0, Lcom/sleepycat/persist/impl/RecordInput;->rawAccess:Z

    .line 71
    iput-object p3, p0, Lcom/sleepycat/persist/impl/RecordInput;->priKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 72
    iput p4, p0, Lcom/sleepycat/persist/impl/RecordInput;->priKeyFormatId:I

    .line 73
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    .line 74
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/persist/impl/RecordInput;I)V
    .locals 8
    .param p1, "other"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "offset"    # I

    .line 80
    iget-object v1, p1, Lcom/sleepycat/persist/impl/RecordInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-boolean v2, p1, Lcom/sleepycat/persist/impl/RecordInput;->rawAccess:Z

    iget-object v3, p1, Lcom/sleepycat/persist/impl/RecordInput;->priKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    iget v4, p1, Lcom/sleepycat/persist/impl/RecordInput;->priKeyFormatId:I

    iget-object v5, p1, Lcom/sleepycat/persist/impl/RecordInput;->buf:[B

    iget v7, p1, Lcom/sleepycat/persist/impl/RecordInput;->len:I

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/je/DatabaseEntry;I[BII)V

    .line 82
    iget-object v0, p1, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    .line 83
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 8
    .param p1, "other"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "entry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 89
    iget-object v1, p1, Lcom/sleepycat/persist/impl/RecordInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    iget-boolean v2, p1, Lcom/sleepycat/persist/impl/RecordInput;->rawAccess:Z

    iget-object v3, p1, Lcom/sleepycat/persist/impl/RecordInput;->priKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    iget v4, p1, Lcom/sleepycat/persist/impl/RecordInput;->priKeyFormatId:I

    .line 90
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v5

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v6

    .line 91
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v7

    .line 89
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/je/DatabaseEntry;I[BII)V

    .line 92
    iget-object v0, p1, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    .line 93
    return-void
.end method


# virtual methods
.method public getCatalog()Lcom/sleepycat/persist/impl/Catalog;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    return-object v0
.end method

.method getKeyLocation(Lcom/sleepycat/persist/impl/Format;)Lcom/sleepycat/persist/impl/KeyLocation;
    .locals 5
    .param p1, "fieldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 230
    move-object v0, p0

    .line 231
    .local v0, "input":Lcom/sleepycat/persist/impl/RecordInput;
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x12

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/sleepycat/persist/impl/RecordInput;->newStringFormat:Z

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RecordInput;->getStringByteLength()I

    move-result v1

    .line 239
    .local v1, "len":I
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RecordInput;->readString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "strKey":Ljava/lang/String;
    rsub-int/lit8 v4, v1, 0x0

    invoke-virtual {v0, v4}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 241
    if-nez v3, :cond_0

    .line 243
    return-object v2

    .line 241
    .end local v1    # "len":I
    .end local v3    # "strKey":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 246
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v1

    .line 247
    .local v1, "formatId":I
    if-nez v1, :cond_2

    .line 249
    return-object v2

    .line 251
    :cond_2
    if-gez v1, :cond_5

    .line 252
    add-int/lit8 v2, v1, 0x1

    neg-int v2, v2

    .line 253
    .local v2, "offset":I
    const v3, 0x7ffffffe

    if-ne v2, v3, :cond_4

    .line 254
    iget-object v3, p0, Lcom/sleepycat/persist/impl/RecordInput;->priKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v3, :cond_3

    iget v4, p0, Lcom/sleepycat/persist/impl/RecordInput;->priKeyFormatId:I

    if-lez v4, :cond_3

    .line 255
    new-instance v4, Lcom/sleepycat/persist/impl/RecordInput;

    invoke-direct {v4, p0, v3}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/je/DatabaseEntry;)V

    move-object v0, v4

    .line 256
    iget v1, p0, Lcom/sleepycat/persist/impl/RecordInput;->priKeyFormatId:I

    goto :goto_0

    .line 254
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 258
    :cond_4
    new-instance v3, Lcom/sleepycat/persist/impl/RecordInput;

    invoke-direct {v3, p0, v2}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/RecordInput;I)V

    move-object v0, v3

    .line 259
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v1

    .line 262
    .end local v2    # "offset":I
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/persist/impl/RecordInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(IZ)Lcom/sleepycat/persist/impl/Format;

    move-result-object p1

    goto :goto_2

    .line 245
    .end local v1    # "formatId":I
    :cond_6
    :goto_1
    nop

    .line 265
    :goto_2
    new-instance v1, Lcom/sleepycat/persist/impl/KeyLocation;

    invoke-direct {v1, v0, p1}, Lcom/sleepycat/persist/impl/KeyLocation;-><init>(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;)V

    return-object v1
.end method

.method public isRawAccess()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->rawAccess:Z

    return v0
.end method

.method public readArrayLength()I
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v0

    return v0
.end method

.method public readEnumConstant([Ljava/lang/String;)I
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v0

    return v0
.end method

.method public readKeyObject(Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;
    .locals 3
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getReader()Lcom/sleepycat/persist/impl/Reader;

    move-result-object v0

    .line 206
    .local v0, "reader":Lcom/sleepycat/persist/impl/Reader;
    iget-boolean v1, p0, Lcom/sleepycat/persist/impl/RecordInput;->rawAccess:Z

    invoke-interface {v0, p0, v1}, Lcom/sleepycat/persist/impl/Reader;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v1

    .line 207
    .local v1, "o":Ljava/lang/Object;
    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/RecordInput;->rawAccess:Z

    invoke-interface {v0, v1, p0, v2}, Lcom/sleepycat/persist/impl/Reader;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public readObject()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->off:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    .local v0, "visitedOffset":Ljava/lang/Integer;
    move-object v1, p0

    .line 127
    .local v1, "useInput":Lcom/sleepycat/persist/impl/RecordInput;
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v2

    .line 128
    .local v2, "formatId":I
    const/4 v3, 0x0

    .line 131
    .local v3, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 132
    const/4 v4, 0x0

    return-object v4

    .line 136
    :cond_0
    if-gez v2, :cond_5

    .line 137
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    .line 138
    .local v4, "offset":I
    iget-object v5, p0, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 139
    sget-object v5, Lcom/sleepycat/persist/impl/RecordInput;->PROHIBIT_REF_OBJECT:Ljava/lang/Object;

    if-eq v3, v5, :cond_4

    .line 143
    if-eqz v3, :cond_1

    .line 145
    return-object v3

    .line 153
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 154
    const v5, 0x7ffffffe

    if-ne v4, v5, :cond_3

    .line 155
    iget-object v5, p0, Lcom/sleepycat/persist/impl/RecordInput;->priKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v5, :cond_2

    iget v6, p0, Lcom/sleepycat/persist/impl/RecordInput;->priKeyFormatId:I

    if-lez v6, :cond_2

    .line 156
    new-instance v6, Lcom/sleepycat/persist/impl/RecordInput;

    invoke-direct {v6, p0, v5}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/je/DatabaseEntry;)V

    move-object v1, v6

    .line 157
    iget v2, p0, Lcom/sleepycat/persist/impl/RecordInput;->priKeyFormatId:I

    goto :goto_0

    .line 155
    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 159
    :cond_3
    new-instance v5, Lcom/sleepycat/persist/impl/RecordInput;

    invoke-direct {v5, p0, v4}, Lcom/sleepycat/persist/impl/RecordInput;-><init>(Lcom/sleepycat/persist/impl/RecordInput;I)V

    move-object v1, v5

    .line 160
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v2

    goto :goto_0

    .line 140
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot embed a reference to a proxied object in the proxy; for example, a collection may not be an element of the collection because collections are proxied"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 173
    .end local v4    # "offset":I
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    sget-object v5, Lcom/sleepycat/persist/impl/RecordInput;->PROHIBIT_REF_OBJECT:Ljava/lang/Object;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v4, p0, Lcom/sleepycat/persist/impl/RecordInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    const/4 v5, 0x1

    invoke-interface {v4, v2, v5}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(IZ)Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    .line 177
    .local v4, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getReader()Lcom/sleepycat/persist/impl/Reader;

    move-result-object v5

    .line 178
    .local v5, "reader":Lcom/sleepycat/persist/impl/Reader;
    iget-boolean v6, p0, Lcom/sleepycat/persist/impl/RecordInput;->rawAccess:Z

    invoke-interface {v5, v1, v6}, Lcom/sleepycat/persist/impl/Reader;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v3

    .line 185
    iget-object v6, p0, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-boolean v6, p0, Lcom/sleepycat/persist/impl/RecordInput;->rawAccess:Z

    invoke-interface {v5, v3, v1, v6}, Lcom/sleepycat/persist/impl/Reader;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v6

    .line 192
    .local v6, "o2":Ljava/lang/Object;
    if-eq v3, v6, :cond_6

    .line 193
    iget-object v7, p0, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_6
    return-object v6
.end method

.method public readStringObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 216
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->newStringFormat:Z

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RecordInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RecordInput;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerEntity(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "initialOffset"    # I

    .line 301
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    return-void
.end method

.method public registerEntityFormat(Lcom/sleepycat/persist/impl/Format;)V
    .locals 1
    .param p1, "entityFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 309
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getNewStringFormat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->newStringFormat:Z

    .line 310
    return-void
.end method

.method public registerPriKeyObject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    const v1, 0x7ffffffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public registerPriStringKeyObject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 291
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->newStringFormat:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->visited:Ljava/util/Map;

    const v1, 0x7ffffffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_0
    return-void
.end method

.method public setRawAccess(Z)Z
    .locals 1
    .param p1, "rawAccessParam"    # Z

    .line 113
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->rawAccess:Z

    .line 114
    .local v0, "original":Z
    iput-boolean p1, p0, Lcom/sleepycat/persist/impl/RecordInput;->rawAccess:Z

    .line 115
    return v0
.end method

.method public skipField(Lcom/sleepycat/persist/impl/Format;)V
    .locals 3
    .param p1, "declaredFormat"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 318
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p1, p0}, Lcom/sleepycat/persist/impl/Format;->skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V

    goto :goto_0

    .line 320
    :cond_0
    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/RecordInput;->newStringFormat:Z

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p1, p0}, Lcom/sleepycat/persist/impl/Format;->skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v0

    .line 331
    .local v0, "formatId":I
    if-lez v0, :cond_2

    .line 332
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RecordInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    const/4 v2, 0x1

    .line 333
    invoke-interface {v1, v0, v2}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(IZ)Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 334
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v1, p0}, Lcom/sleepycat/persist/impl/Format;->skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V

    .line 337
    .end local v0    # "formatId":I
    .end local v1    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_2
    :goto_0
    return-void
.end method
