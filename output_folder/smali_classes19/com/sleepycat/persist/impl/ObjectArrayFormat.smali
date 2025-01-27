.class public Lcom/sleepycat/persist/impl/ObjectArrayFormat;
.super Lcom/sleepycat/persist/impl/Format;
.source "ObjectArrayFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x3be91494b24d12a4L


# instance fields
.field private componentFormat:Lcom/sleepycat/persist/impl/Format;

.field private nDimensions:I

.field private transient useComponentFormat:Lcom/sleepycat/persist/impl/Format;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V
    .locals 3
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "type"    # Ljava/lang/Class;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/Format;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    .line 50
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->nDimensions:I

    .line 52
    :goto_0
    iget v1, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->nDimensions:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 53
    iget v1, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->nDimensions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->nDimensions:I

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Catalog;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, "cls":Ljava/lang/Class;
    invoke-interface {p1, v0, p2}, Lcom/sleepycat/persist/impl/Catalog;->createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    .line 78
    return-void
.end method

.method convertRawObject(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;
    .locals 7
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "rawObject"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p4, "converted"    # Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 170
    new-instance v6, Lcom/sleepycat/persist/impl/RawArrayInput;

    iget-object v5, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/persist/impl/RawArrayInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;Lcom/sleepycat/persist/raw/RawObject;Lcom/sleepycat/persist/impl/Format;)V

    .line 172
    .local v0, "input":Lcom/sleepycat/persist/impl/RawArrayInput;
    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "a":Ljava/lang/Object;
    invoke-virtual {p4, p3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p0, v1, v0, p2}, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method copySecMultiKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;Ljava/util/Set;)V
    .locals 8
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "keyFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "results"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v0

    .line 192
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 193
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {p1, v2}, Lcom/sleepycat/persist/impl/RecordInput;->getKeyLocation(Lcom/sleepycat/persist/impl/Format;)Lcom/sleepycat/persist/impl/KeyLocation;

    move-result-object v2

    .line 194
    .local v2, "loc":Lcom/sleepycat/persist/impl/KeyLocation;
    if-eqz v2, :cond_1

    .line 198
    iget-object v3, v2, Lcom/sleepycat/persist/impl/KeyLocation;->format:Lcom/sleepycat/persist/impl/Format;

    iget-object v4, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    if-ne v3, v4, :cond_0

    .line 202
    iget-object v3, v2, Lcom/sleepycat/persist/impl/KeyLocation;->input:Lcom/sleepycat/persist/impl/RecordInput;

    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferOffset()I

    move-result v3

    .line 203
    .local v3, "off1":I
    iget-object v4, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    iget-object v5, v2, Lcom/sleepycat/persist/impl/KeyLocation;->input:Lcom/sleepycat/persist/impl/RecordInput;

    invoke-virtual {v4, v5}, Lcom/sleepycat/persist/impl/Format;->skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V

    .line 204
    iget-object v4, v2, Lcom/sleepycat/persist/impl/KeyLocation;->input:Lcom/sleepycat/persist/impl/RecordInput;

    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferOffset()I

    move-result v4

    .line 205
    .local v4, "off2":I
    new-instance v5, Lcom/sleepycat/je/DatabaseEntry;

    iget-object v6, v2, Lcom/sleepycat/persist/impl/KeyLocation;->input:Lcom/sleepycat/persist/impl/RecordInput;

    .line 206
    invoke-virtual {v6}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferBytes()[B

    move-result-object v6

    sub-int v7, v4, v3

    invoke-direct {v5, v6, v3, v7}, Lcom/sleepycat/je/DatabaseEntry;-><init>([BII)V

    .line 207
    .local v5, "entry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-interface {p3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v2    # "loc":Lcom/sleepycat/persist/impl/KeyLocation;
    .end local v3    # "off1":I
    .end local v4    # "off2":I
    .end local v5    # "entry":Lcom/sleepycat/je/DatabaseEntry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .restart local v2    # "loc":Lcom/sleepycat/persist/impl/KeyLocation;
    :cond_0
    nop

    .line 200
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 195
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Secondary key values in array may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    .end local v1    # "i":I
    .end local v2    # "loc":Lcom/sleepycat/persist/impl/KeyLocation;
    :cond_2
    return-void
.end method

.method evolve(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 3
    .param p1, "newFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 219
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 220
    .local v0, "latest":Lcom/sleepycat/persist/impl/Format;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/Format;

    if-eq v0, v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p2, p0, p1, p1}, Lcom/sleepycat/persist/impl/Evolver;->useEvolvedFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Reader;Lcom/sleepycat/persist/impl/Format;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/sleepycat/persist/impl/Evolver;->useOldFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)V

    .line 226
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public getComponentType()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/Format;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getComponentType()Lcom/sleepycat/persist/raw/RawType;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->getComponentType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->nDimensions:I

    return v0
.end method

.method initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V
    .locals 2
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I

    .line 83
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/Format;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/Format;

    .line 87
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    .line 88
    return-void
.end method

.method public isArray()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method isAssignableTo(Lcom/sleepycat/persist/impl/Format;)Z
    .locals 4
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;

    .line 92
    invoke-super {p0, p1}, Lcom/sleepycat/persist/impl/Format;->isAssignableTo(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 93
    return v1

    .line 95
    :cond_0
    instance-of v0, p1, Lcom/sleepycat/persist/impl/ObjectArrayFormat;

    if-eqz v0, :cond_1

    .line 96
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;

    .line 97
    .local v0, "other":Lcom/sleepycat/persist/impl/ObjectArrayFormat;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    iget-object v3, v0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v2, v3}, Lcom/sleepycat/persist/impl/Format;->isAssignableTo(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    return v1

    .line 101
    .end local v0    # "other":Lcom/sleepycat/persist/impl/ObjectArrayFormat;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 106
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z

    .line 111
    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->readArrayLength()I

    move-result v0

    .line 112
    .local v0, "len":I
    if-eqz p2, :cond_0

    .line 113
    new-instance v1, Lcom/sleepycat/persist/raw/RawObject;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/persist/raw/RawObject;-><init>(Lcom/sleepycat/persist/raw/RawType;[Ljava/lang/Object;)V

    return-object v1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v1, v0}, Lcom/sleepycat/persist/impl/Format;->newArray(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 124
    if-eqz p3, :cond_0

    .line 125
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getElements()[Ljava/lang/Object;

    move-result-object v0

    .local v0, "a":[Ljava/lang/Object;
    goto :goto_0

    .line 127
    .end local v0    # "a":[Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 129
    .restart local v0    # "a":[Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 131
    invoke-interface {p2}, Lcom/sleepycat/persist/impl/EntityInput;->readStringObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_1
    goto :goto_3

    .line 134
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 135
    invoke-interface {p2}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 138
    .end local v1    # "i":I
    :cond_3
    :goto_3
    return-object p1
.end method

.method skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v0

    .line 182
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 183
    iget-object v2, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {p1, v2}, Lcom/sleepycat/persist/impl/RecordInput;->skipField(Lcom/sleepycat/persist/impl/Format;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 146
    if-eqz p3, :cond_0

    .line 147
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getElements()[Ljava/lang/Object;

    move-result-object v0

    .local v0, "a":[Ljava/lang/Object;
    goto :goto_0

    .line 149
    .end local v0    # "a":[Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 151
    .restart local v0    # "a":[Ljava/lang/Object;
    :goto_0
    array-length v1, v0

    invoke-interface {p2, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeArrayLength(I)V

    .line 152
    iget-object v1, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 154
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Lcom/sleepycat/persist/impl/EntityOutput;->writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_1
    goto :goto_3

    .line 157
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 158
    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/sleepycat/persist/impl/ObjectArrayFormat;->useComponentFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-interface {p2, v2, v3}, Lcom/sleepycat/persist/impl/EntityOutput;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 161
    .end local v1    # "i":I
    :cond_3
    :goto_3
    return-void
.end method
