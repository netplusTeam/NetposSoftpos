.class Lcom/sleepycat/collections/BlockIterator;
.super Lcom/sleepycat/collections/BaseIterator;
.source "BlockIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/BaseIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private coll:Lcom/sleepycat/collections/StoredCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/collections/StoredCollection<",
            "TE;>;"
        }
    .end annotation
.end field

.field private dataIndex:I

.field private dataObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private keys:[[B

.field private nextIndex:I

.field private priKeys:[[B

.field private values:[[B

.field private writeAllowed:Z


# direct methods
.method private constructor <init>(Lcom/sleepycat/collections/BlockIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/collections/BlockIterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    .local p1, "o":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/collections/BaseIterator;-><init>()V

    .line 101
    iget-object v0, p1, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iput-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    .line 102
    iget-boolean v0, p1, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    iput-boolean v0, p0, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    .line 104
    iget-object v0, p1, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/BlockIterator;->copyArray([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    .line 105
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredCollection;->isSecondary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/BlockIterator;->copyArray([[B)[[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    .line 106
    iget-object v0, p1, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/BlockIterator;->copyArray([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    .line 108
    iget v0, p1, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    iput v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 109
    iget v0, p1, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    iput v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 110
    iget-object v0, p1, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    .line 111
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/collections/StoredCollection;ZI)V
    .locals 1
    .param p2, "writeAllowed"    # Z
    .param p3, "blockSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/collections/StoredCollection<",
            "TE;>;ZI)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    .local p1, "coll":Lcom/sleepycat/collections/StoredCollection;, "Lcom/sleepycat/collections/StoredCollection<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/collections/BaseIterator;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    .line 85
    iput-boolean p2, p0, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    .line 87
    new-array v0, p3, [[B

    iput-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    .line 88
    invoke-virtual {p1}, Lcom/sleepycat/collections/StoredCollection;->isSecondary()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, p3, [[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    .line 89
    new-array v0, p3, [[B

    iput-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    .line 91
    iput p3, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    .line 94
    return-void
.end method

.method private bumpRecordNumber(I)V
    .locals 3
    .param p1, "i"    # I

    .line 253
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 254
    .local v0, "entry":Lcom/sleepycat/je/DatabaseEntry;
    nop

    .line 255
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 254
    invoke-static {v0, v1}, Lcom/sleepycat/compat/DbCompat;->setRecordNumber(Lcom/sleepycat/je/DatabaseEntry;I)V

    .line 256
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    aput-object v2, v1, p1

    .line 257
    return-void
.end method

.method private clearSlots()V
    .locals 3

    .line 190
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 191
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 192
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    aput-object v2, v1, v0

    .line 193
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    aput-object v2, v1, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private copyArray([[B)[[B
    .locals 3
    .param p1, "a"    # [[B

    .line 118
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    array-length v0, p1

    new-array v0, v0, [[B

    .line 119
    .local v0, "b":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 120
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 121
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copyBytes([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private deleteSlot(I)V
    .locals 4
    .param p1, "i"    # I

    .line 264
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    add-int/lit8 v0, p1, 0x1

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 265
    add-int/lit8 v2, v0, -0x1

    aget-object v3, v1, v0

    aput-object v3, v1, v2

    .line 266
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    add-int/lit8 v2, v0, -0x1

    aget-object v3, v1, v0

    aput-object v3, v1, v2

    .line 267
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    add-int/lit8 v2, v0, -0x1

    aget-object v3, v1, v0

    aput-object v3, v1, v2

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "j":I
    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 270
    .local v0, "last":I
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 271
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    aput-object v2, v1, v0

    .line 272
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    aput-object v2, v1, v0

    .line 274
    iget v1, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    if-le v1, p1, :cond_1

    .line 275
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 277
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 278
    return-void
.end method

.method private getRecordNumber(I)I
    .locals 4
    .param p1, "i"    # I

    .line 150
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v0, v0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->btreeRecNumDb:Z

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v1, Lcom/sleepycat/collections/DataCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v2, v2, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v1

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/collections/BlockIterator;->moveCursor(ILcom/sleepycat/collections/DataCursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentRecordNumber()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 157
    return v1

    .line 155
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local p1    # "i":I
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local p1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local p1    # "i":I
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local p1    # "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1

    .line 164
    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    :cond_1
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 165
    .local v0, "entry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v1

    return v1
.end method

.method private insertSlot(ILcom/sleepycat/collections/DataCursor;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "cursor"    # Lcom/sleepycat/collections/DataCursor;

    .line 218
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 219
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    .line 223
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    .line 224
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    .line 227
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v1, v1, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v1, v1, Lcom/sleepycat/collections/DataView;->recNumRenumber:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 228
    invoke-direct {p0, v0}, Lcom/sleepycat/collections/BlockIterator;->bumpRecordNumber(I)V

    .line 219
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 231
    .end local v0    # "j":I
    :cond_1
    iget v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    goto :goto_2

    .line 233
    :cond_2
    array-length v0, v0

    if-ne p1, v0, :cond_4

    .line 236
    add-int/lit8 p1, p1, -0x1

    .line 237
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 239
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    .line 240
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    .line 241
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "j":I
    :cond_3
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/collections/BlockIterator;->setSlot(ILcom/sleepycat/collections/DataCursor;)V

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 246
    return-void

    .line 234
    :cond_4
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private isNextAvailable()Z
    .locals 3

    .line 132
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPrevAvailable()Z
    .locals 3

    .line 141
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private makeDataObject()V
    .locals 5

    .line 174
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 175
    .local v0, "i":I
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 176
    .local v1, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    if-eq v2, v3, :cond_0

    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 179
    .local v2, "priKeyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :goto_0
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 181
    .local v3, "valuesEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v4, p0, v1, v2, v3}, Lcom/sleepycat/collections/StoredCollection;->makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    .line 183
    return-void
.end method

.method private moveCursor(ILcom/sleepycat/collections/DataCursor;)Z
    .locals 4
    .param p1, "i"    # I
    .param p2, "cursor"    # Lcom/sleepycat/collections/DataCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 287
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    aget-object v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;->repositionExact([B[B[BZ)Z

    move-result v0

    return v0
.end method

.method private setSlot(ILcom/sleepycat/collections/DataCursor;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "cursor"    # Lcom/sleepycat/collections/DataCursor;

    .line 202
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    invoke-virtual {p2}, Lcom/sleepycat/collections/DataCursor;->getKeyThang()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/util/keyrange/KeyRange;->getByteArray(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v1

    aput-object v1, v0, p1

    .line 204
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    if-eq v0, v1, :cond_0

    .line 205
    nop

    .line 206
    invoke-virtual {p2}, Lcom/sleepycat/collections/DataCursor;->getPrimaryKeyThang()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->getByteArray(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v0

    aput-object v0, v1, p1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    invoke-virtual {p2}, Lcom/sleepycat/collections/DataCursor;->getValueThang()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/util/keyrange/KeyRange;->getByteArray(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v1

    aput-object v1, v0, p1

    .line 210
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 612
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredCollection;->checkIterAddAllowed()V

    .line 613
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    .line 614
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    const/4 v1, 0x0

    .line 615
    .local v1, "cursor":Lcom/sleepycat/collections/DataCursor;
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2}, Lcom/sleepycat/collections/StoredCollection;->beginAutoCommit()Z

    move-result v2

    .line 617
    .local v2, "doAutoCommit":Z
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v3, v3, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v3, v3, Lcom/sleepycat/collections/DataView;->keysRenumbered:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v3}, Lcom/sleepycat/collections/StoredCollection;->areDuplicatesOrdered()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 687
    :cond_0
    new-instance v3, Lcom/sleepycat/collections/DataCursor;

    iget-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v6, v6, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v7, p0, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    invoke-direct {v3, v6, v7}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v1, v3

    .line 689
    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v3, v3, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-object v3, v3, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v3}, Lcom/sleepycat/util/keyrange/KeyRange;->isSingleKey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 695
    invoke-virtual {v1}, Lcom/sleepycat/collections/DataCursor;->useRangeKey()V

    goto :goto_0

    .line 703
    :cond_1
    iget v3, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    if-ltz v3, :cond_2

    invoke-direct {p0, v3, v1}, Lcom/sleepycat/collections/BlockIterator;->moveCursor(ILcom/sleepycat/collections/DataCursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 713
    :goto_0
    invoke-virtual {v1, v5, p1, v5, v4}, Lcom/sleepycat/collections/DataCursor;->putNoDupData(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    move-object v0, v3

    .line 714
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v3, :cond_a

    .line 715
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->clearSlots()V

    .line 716
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/sleepycat/collections/BlockIterator;->setSlot(ILcom/sleepycat/collections/DataCursor;)V

    .line 717
    iput v3, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 718
    iput v4, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    goto/16 :goto_6

    .line 704
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v1    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local v2    # "doAutoCommit":Z
    .end local p1    # "value":Ljava/lang/Object;, "TE;"
    throw v3

    .line 623
    .restart local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v1    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local v2    # "doAutoCommit":Z
    .restart local p1    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/collections/BlockIterator;->hasPrevious()Z

    move-result v3

    .line 624
    .local v3, "hasPrev":Z
    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/sleepycat/collections/BlockIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 627
    iget-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v6, v6, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v6, v6, Lcom/sleepycat/collections/DataView;->keysRenumbered:Z

    if-eqz v6, :cond_4

    .line 630
    iget-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v6, v6, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v6, p1, v5, v5}, Lcom/sleepycat/collections/DataView;->append(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v6

    move-object v0, v6

    goto :goto_2

    .line 632
    :cond_4
    iget-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v6, v6, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v6, v6, Lcom/sleepycat/collections/DataView;->dupsAllowed:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v6, v6, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-object v6, v6, Lcom/sleepycat/collections/DataView;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 633
    invoke-virtual {v6}, Lcom/sleepycat/util/keyrange/KeyRange;->isSingleKey()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 640
    new-instance v6, Lcom/sleepycat/collections/DataCursor;

    iget-object v7, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v7, v7, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v8, p0, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    invoke-direct {v6, v7, v8}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v1, v6

    .line 641
    invoke-virtual {v1}, Lcom/sleepycat/collections/DataCursor;->useRangeKey()V

    .line 642
    invoke-virtual {v1, v5, p1, v5, v4}, Lcom/sleepycat/collections/DataCursor;->putNoDupData(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v6

    move-object v0, v6

    .line 643
    iget-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v6, v1}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 644
    const/4 v1, 0x0

    .line 655
    :goto_2
    sget-object v6, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v6, :cond_9

    .line 656
    invoke-virtual {p0}, Lcom/sleepycat/collections/BlockIterator;->next()Ljava/lang/Object;

    .line 657
    iget v6, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    goto :goto_5

    .line 646
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Collection is empty, cannot add() duplicate"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v1    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local v2    # "doAutoCommit":Z
    .end local p1    # "value":Ljava/lang/Object;, "TE;"
    throw v4

    .line 666
    .restart local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v1    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local v2    # "doAutoCommit":Z
    .restart local p1    # "value":Ljava/lang/Object;, "TE;"
    :cond_6
    new-instance v6, Lcom/sleepycat/collections/DataCursor;

    iget-object v7, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v7, v7, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v8, p0, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    invoke-direct {v6, v7, v8}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v1, v6

    .line 667
    if-eqz v3, :cond_7

    iget v6, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    sub-int/2addr v6, v4

    goto :goto_3

    :cond_7
    iget v6, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    :goto_3
    move v4, v6

    .line 669
    .local v4, "insertIndex":I
    invoke-direct {p0, v4, v1}, Lcom/sleepycat/collections/BlockIterator;->moveCursor(ILcom/sleepycat/collections/DataCursor;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 679
    if-eqz v3, :cond_8

    invoke-virtual {v1, p1}, Lcom/sleepycat/collections/DataCursor;->putAfter(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v6

    goto :goto_4

    .line 680
    :cond_8
    invoke-virtual {v1, p1}, Lcom/sleepycat/collections/DataCursor;->putBefore(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v6

    :goto_4
    move-object v0, v6

    .line 681
    sget-object v6, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v6, :cond_9

    .line 682
    iget v6, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    invoke-direct {p0, v6, v1}, Lcom/sleepycat/collections/BlockIterator;->insertSlot(ILcom/sleepycat/collections/DataCursor;)V

    .line 685
    .end local v3    # "hasPrev":Z
    .end local v4    # "insertIndex":I
    :cond_9
    :goto_5
    nop

    .line 722
    :cond_a
    :goto_6
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->KEYEXIST:Lcom/sleepycat/je/OperationStatus;

    if-eq v0, v3, :cond_c

    .line 724
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-eq v0, v3, :cond_b

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 729
    :cond_b
    iput-object v5, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    .line 731
    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v3, v1}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 732
    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v3, v2}, Lcom/sleepycat/collections/StoredCollection;->commitAutoCommit(Z)V

    .line 737
    nop

    .line 738
    return-void

    .line 723
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Duplicate value"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v1    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local v2    # "doAutoCommit":Z
    .end local p1    # "value":Ljava/lang/Object;, "TE;"
    throw v3

    .line 670
    .restart local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v1    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local v2    # "doAutoCommit":Z
    .restart local v3    # "hasPrev":Z
    .restart local v4    # "insertIndex":I
    .restart local p1    # "value":Ljava/lang/Object;, "TE;"
    :cond_d
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v1    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local v2    # "doAutoCommit":Z
    .end local p1    # "value":Ljava/lang/Object;, "TE;"
    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v3    # "hasPrev":Z
    .end local v4    # "insertIndex":I
    .restart local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v1    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local v2    # "doAutoCommit":Z
    .restart local p1    # "value":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v3

    .line 735
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v4, v1}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 736
    iget-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v4, v3, v2}, Lcom/sleepycat/collections/StoredCollection;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method final dup()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 746
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    new-instance v0, Lcom/sleepycat/collections/BlockIterator;

    invoke-direct {v0, p0}, Lcom/sleepycat/collections/BlockIterator;-><init>(Lcom/sleepycat/collections/BlockIterator;)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 8

    .line 294
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->isNextAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 295
    return v1

    .line 297
    :cond_0
    const/4 v0, 0x0

    .line 299
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v3, v3, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v4, p0, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 300
    iget v2, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    sub-int/2addr v2, v1

    .line 301
    .local v2, "prev":I
    const/4 v3, 0x0

    .line 303
    .local v3, "found":Z
    iget-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    aget-object v4, v4, v2

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 305
    invoke-virtual {v0, v5}, Lcom/sleepycat/collections/DataCursor;->getFirst(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 306
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v4, :cond_1

    .line 307
    const/4 v3, 0x1

    .line 308
    iput v5, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 310
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    goto :goto_0

    .line 312
    :cond_2
    iget-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    aget-object v7, v7, v2

    .line 313
    invoke-virtual {v0, v4, v6, v7, v5}, Lcom/sleepycat/collections/DataCursor;->repositionRange([B[B[BZ)I

    move-result v4

    .line 315
    .local v4, "repos":I
    const/4 v6, 0x0

    const/4 v7, -0x1

    if-nez v4, :cond_4

    .line 321
    const/4 v3, 0x1

    .line 322
    iput v1, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 325
    iget v1, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    if-ne v1, v2, :cond_3

    .line 326
    iput v5, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    goto :goto_0

    .line 328
    :cond_3
    iput v7, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 329
    iput-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    goto :goto_0

    .line 331
    :cond_4
    if-ne v4, v1, :cond_5

    .line 337
    const/4 v3, 0x1

    .line 338
    iput v5, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 341
    iput v7, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 342
    iput-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_5
    const/4 v1, 0x2

    if-ne v4, v1, :cond_a

    .line 350
    .end local v4    # "repos":I
    :goto_0
    if-eqz v3, :cond_9

    .line 352
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->clearSlots()V

    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "i":I
    const/4 v4, 0x0

    .line 357
    .local v4, "done":Z
    :goto_1
    if-nez v4, :cond_9

    .line 358
    invoke-direct {p0, v1, v0}, Lcom/sleepycat/collections/BlockIterator;->setSlot(ILcom/sleepycat/collections/DataCursor;)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    .line 360
    iget-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    array-length v6, v6

    if-ge v1, v6, :cond_8

    .line 361
    iget-object v6, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v6}, Lcom/sleepycat/collections/StoredCollection;->iterateDuplicates()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 362
    invoke-virtual {v0, v5}, Lcom/sleepycat/collections/DataCursor;->getNext(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v6

    goto :goto_2

    :cond_6
    nop

    .line 363
    invoke-virtual {v0, v5}, Lcom/sleepycat/collections/DataCursor;->getNextNoDup(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v6

    :goto_2
    nop

    .line 364
    .local v6, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v7, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-eq v6, v7, :cond_7

    .line 365
    const/4 v4, 0x1

    .line 367
    .end local v6    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_7
    goto :goto_1

    .line 368
    :cond_8
    const/4 v4, 0x1

    goto :goto_1

    .line 378
    .end local v1    # "i":I
    .end local v4    # "done":Z
    :cond_9
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->isNextAvailable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    iget-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v4, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 378
    return v1

    .line 345
    .local v4, "repos":I
    :cond_a
    :try_start_1
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    .end local v2    # "prev":I
    .end local v3    # "found":Z
    .end local v4    # "repos":I
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    :goto_3
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1
.end method

.method public hasPrevious()Z
    .locals 10

    .line 388
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->isPrevAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 389
    return v1

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->isNextAvailable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 392
    return v2

    .line 394
    :cond_1
    const/4 v0, 0x0

    .line 396
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v3, Lcom/sleepycat/collections/DataCursor;

    iget-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v4, v4, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v5, p0, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v3

    .line 397
    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    array-length v4, v3

    sub-int/2addr v4, v1

    .line 398
    .local v4, "last":I
    iget v5, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 399
    .local v5, "next":I
    const/4 v6, 0x0

    .line 402
    .local v6, "found":Z
    aget-object v3, v3, v5

    iget-object v7, p0, Lcom/sleepycat/collections/BlockIterator;->priKeys:[[B

    aget-object v7, v7, v5

    iget-object v8, p0, Lcom/sleepycat/collections/BlockIterator;->values:[[B

    aget-object v8, v8, v5

    .line 403
    invoke-virtual {v0, v3, v7, v8, v2}, Lcom/sleepycat/collections/DataCursor;->repositionRange([B[B[BZ)I

    move-result v3

    .line 405
    .local v3, "repos":I
    if-eqz v3, :cond_4

    if-ne v3, v1, :cond_2

    goto :goto_0

    .line 423
    :cond_2
    const/4 v1, 0x2

    if-ne v3, v1, :cond_3

    goto :goto_1

    .line 424
    :cond_3
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    throw v1

    .line 412
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    :cond_4
    :goto_0
    const/4 v6, 0x1

    .line 413
    iput v4, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 416
    iget v1, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    if-ne v1, v5, :cond_5

    if-nez v3, :cond_5

    .line 417
    iput v4, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    goto :goto_1

    .line 419
    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    .line 428
    :goto_1
    if-eqz v6, :cond_9

    .line 430
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->clearSlots()V

    .line 433
    move v1, v4

    .line 434
    .local v1, "i":I
    const/4 v7, 0x0

    .line 435
    .local v7, "done":Z
    :goto_2
    if-nez v7, :cond_9

    .line 436
    invoke-direct {p0, v1, v0}, Lcom/sleepycat/collections/BlockIterator;->setSlot(ILcom/sleepycat/collections/DataCursor;)V

    .line 437
    add-int/lit8 v1, v1, -0x1

    .line 438
    if-ltz v1, :cond_8

    .line 439
    iget-object v8, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v8}, Lcom/sleepycat/collections/StoredCollection;->iterateDuplicates()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 440
    invoke-virtual {v0, v2}, Lcom/sleepycat/collections/DataCursor;->getPrev(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v8

    goto :goto_3

    :cond_6
    nop

    .line 441
    invoke-virtual {v0, v2}, Lcom/sleepycat/collections/DataCursor;->getPrevNoDup(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v8

    :goto_3
    nop

    .line 442
    .local v8, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v9, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-eq v8, v9, :cond_7

    .line 443
    const/4 v7, 0x1

    .line 445
    .end local v8    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_7
    goto :goto_2

    .line 446
    :cond_8
    const/4 v7, 0x1

    goto :goto_2

    .line 455
    .end local v1    # "i":I
    .end local v7    # "done":Z
    :cond_9
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->isPrevAvailable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 455
    return v1

    .line 459
    .end local v3    # "repos":I
    .end local v4    # "last":I
    .end local v5    # "next":I
    .end local v6    # "found":Z
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    :goto_4
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1
.end method

.method final isCurrentData(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "currentData"    # Ljava/lang/Object;

    .line 751
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final moveToIndex(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 756
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    const/4 v0, 0x0

    .line 758
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v1, Lcom/sleepycat/collections/DataCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v2, v2, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v3, p0, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v1

    .line 759
    nop

    .line 760
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;->getSearchKey(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 762
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v2, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->clearSlots()V

    .line 764
    invoke-direct {p0, v3, v0}, Lcom/sleepycat/collections/BlockIterator;->setSlot(ILcom/sleepycat/collections/DataCursor;)V

    .line 765
    iput v3, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    const/4 v2, 0x1

    .local v2, "retVal":Z
    goto :goto_0

    .line 768
    .end local v2    # "retVal":Z
    :cond_0
    const/4 v2, 0x0

    .line 770
    .restart local v2    # "retVal":Z
    :goto_0
    nop

    .line 774
    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v3, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 770
    return v2

    .line 774
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v2    # "retVal":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 771
    :catch_0
    move-exception v1

    .line 772
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local p1    # "index":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local p1    # "index":I
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 465
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/BlockIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    iput v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 467
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 468
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->makeDataObject()V

    .line 469
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    return-object v0

    .line 471
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 489
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v0, v0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->recNumAccess:Z

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/sleepycat/collections/BlockIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/BlockIterator;->getRecordNumber(I)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    .line 495
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredCollection;->getIndexOffset()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 494
    :goto_0
    return v0

    .line 490
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Record number access not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 477
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/BlockIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 479
    iput v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    .line 480
    invoke-direct {p0}, Lcom/sleepycat/collections/BlockIterator;->makeDataObject()V

    .line 481
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    return-object v0

    .line 483
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 501
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v0, v0, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->recNumAccess:Z

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/sleepycat/collections/BlockIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/collections/BlockIterator;->getRecordNumber(I)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    .line 507
    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredCollection;->getIndexOffset()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 506
    :goto_0
    return v0

    .line 502
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Record number access not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 6

    .line 539
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredCollection;->beginAutoCommit()Z

    move-result v1

    .line 545
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v3, v3, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v4, p0, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 546
    iget v2, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    invoke-direct {p0, v2, v0}, Lcom/sleepycat/collections/BlockIterator;->moveCursor(ILcom/sleepycat/collections/DataCursor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 547
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->delete()Lcom/sleepycat/je/OperationStatus;

    .line 548
    iget v2, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    invoke-direct {p0, v2}, Lcom/sleepycat/collections/BlockIterator;->deleteSlot(I)V

    .line 549
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    .line 559
    iget v2, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_3

    .line 561
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 562
    iget-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v4}, Lcom/sleepycat/collections/StoredCollection;->iterateDuplicates()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 563
    invoke-virtual {v0, v3}, Lcom/sleepycat/collections/DataCursor;->getNext(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    goto :goto_1

    :cond_0
    nop

    .line 564
    invoke-virtual {v0, v3}, Lcom/sleepycat/collections/DataCursor;->getNextNoDup(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    :goto_1
    nop

    .line 565
    .local v4, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v4, v5, :cond_1

    .line 566
    invoke-direct {p0, v2, v0}, Lcom/sleepycat/collections/BlockIterator;->setSlot(ILcom/sleepycat/collections/DataCursor;)V

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    .end local v2    # "i":I
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->keys:[[B

    aget-object v4, v2, v3

    if-nez v4, :cond_3

    .line 580
    array-length v2, v2

    iput v2, p0, Lcom/sleepycat/collections/BlockIterator;->nextIndex:I

    .line 581
    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_3

    .line 582
    iget-object v4, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v4}, Lcom/sleepycat/collections/StoredCollection;->iterateDuplicates()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 583
    invoke-virtual {v0, v3}, Lcom/sleepycat/collections/DataCursor;->getPrev(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    goto :goto_3

    :cond_2
    nop

    .line 584
    invoke-virtual {v0, v3}, Lcom/sleepycat/collections/DataCursor;->getPrevNoDup(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    :goto_3
    nop

    .line 585
    .restart local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v4, v5, :cond_3

    .line 586
    invoke-direct {p0, v2, v0}, Lcom/sleepycat/collections/BlockIterator;->setSlot(ILcom/sleepycat/collections/DataCursor;)V

    .line 581
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 593
    .end local v2    # "i":I
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 594
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2, v1}, Lcom/sleepycat/collections/StoredCollection;->commitAutoCommit(Z)V

    .line 601
    nop

    .line 602
    return-void

    .line 596
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local v1    # "doAutoCommit":Z
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local v1    # "doAutoCommit":Z
    :catch_0
    move-exception v2

    .line 599
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v3, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 600
    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v3, v2, v1}, Lcom/sleepycat/collections/StoredCollection;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 540
    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local v1    # "doAutoCommit":Z
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 513
    .local p0, "this":Lcom/sleepycat/collections/BlockIterator;, "Lcom/sleepycat/collections/BlockIterator<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->dataObject:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredCollection;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    iget-object v1, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v1}, Lcom/sleepycat/collections/StoredCollection;->beginAutoCommit()Z

    move-result v1

    .line 522
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    iget-object v3, v3, Lcom/sleepycat/collections/StoredCollection;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v4, p0, Lcom/sleepycat/collections/BlockIterator;->writeAllowed:Z

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 523
    iget v2, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    invoke-direct {p0, v2, v0}, Lcom/sleepycat/collections/BlockIterator;->moveCursor(ILcom/sleepycat/collections/DataCursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/DataCursor;->putCurrent(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    .line 525
    iget v2, p0, Lcom/sleepycat/collections/BlockIterator;->dataIndex:I

    invoke-direct {p0, v2, v0}, Lcom/sleepycat/collections/BlockIterator;->setSlot(ILcom/sleepycat/collections/DataCursor;)V

    .line 526
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 527
    iget-object v2, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v2, v1}, Lcom/sleepycat/collections/StoredCollection;->commitAutoCommit(Z)V

    .line 534
    nop

    .line 535
    return-void

    .line 529
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local v1    # "doAutoCommit":Z
    .end local p1    # "value":Ljava/lang/Object;, "TE;"
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local v1    # "doAutoCommit":Z
    .restart local p1    # "value":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v2

    .line 532
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v3, v0}, Lcom/sleepycat/collections/StoredCollection;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 533
    iget-object v3, p0, Lcom/sleepycat/collections/BlockIterator;->coll:Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v3, v2, v1}, Lcom/sleepycat/collections/StoredCollection;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 517
    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local v1    # "doAutoCommit":Z
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 514
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
