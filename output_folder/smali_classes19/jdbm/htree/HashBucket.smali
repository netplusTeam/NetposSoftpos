.class final Ljdbm/htree/HashBucket;
.super Ljdbm/htree/HashNode;
.source "HashBucket.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final OVERFLOW_SIZE:I = 0x8

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private _depth:I

.field private _keys:Ljava/util/ArrayList;

.field private _values:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljdbm/htree/HashNode;-><init>()V

    .line 117
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "level"    # I

    .line 125
    invoke-direct {p0}, Ljdbm/htree/HashNode;-><init>()V

    .line 126
    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 131
    iput p1, p0, Ljdbm/htree/HashBucket;->_depth:I

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    .line 134
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot create bucket with depth > MAX_DEPTH+1. Depth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addElement(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 179
    .local v0, "existing":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "before":Ljava/lang/Object;
    iget-object v2, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-object v1

    .line 186
    .end local v1    # "before":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v1, 0x0

    return-object v1
.end method

.method public getElementCount()I
    .locals 1

    .line 142
    iget-object v0, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getKeys()Ljava/util/ArrayList;
    .locals 1

    .line 240
    iget-object v0, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 222
    .local v0, "existing":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 223
    iget-object v1, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 226
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getValues()Ljava/util/ArrayList;
    .locals 1

    .line 253
    iget-object v0, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasRoom()Z
    .locals 3

    .line 160
    invoke-virtual {p0}, Ljdbm/htree/HashBucket;->isLeaf()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 161
    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLeaf()Z
    .locals 2

    .line 151
    iget v0, p0, Ljdbm/htree/HashBucket;->_depth:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 284
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Ljdbm/htree/HashBucket;->_depth:I

    .line 286
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 289
    .local v0, "entries":I
    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 290
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    .line 294
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 295
    iget-object v3, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 299
    iget-object v3, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public removeElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 203
    .local v0, "existing":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 205
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 206
    iget-object v2, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 207
    return-object v1

    .line 210
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "HashBucket {depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    iget v1, p0, Ljdbm/htree/HashBucket;->_depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 307
    const-string v1, ", keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    iget-object v1, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 309
    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    iget-object v1, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 311
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget v0, p0, Ljdbm/htree/HashBucket;->_depth:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 265
    iget-object v0, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 266
    .local v0, "entries":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 269
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 270
    iget-object v2, p0, Ljdbm/htree/HashBucket;->_keys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 274
    iget-object v2, p0, Ljdbm/htree/HashBucket;->_values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
