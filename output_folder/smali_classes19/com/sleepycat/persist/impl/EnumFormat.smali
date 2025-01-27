.class public Lcom/sleepycat/persist/impl/EnumFormat;
.super Lcom/sleepycat/persist/impl/Format;
.source "EnumFormat.java"


# static fields
.field private static final serialVersionUID:J = 0xed8d0507c732022L


# instance fields
.field private names:[Ljava/lang/String;

.field private transient values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V
    .locals 3
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "type"    # Ljava/lang/Class;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/Format;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/impl/EnumFormat;->values:[Ljava/lang/Object;

    .line 48
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/sleepycat/persist/impl/EnumFormat;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "enumData"    # [Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/Format;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    .line 59
    iput-object p3, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method private initValues()V
    .locals 6

    .line 92
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/EnumFormat;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, "cls":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/sleepycat/persist/impl/EnumFormat;->values:[Ljava/lang/Object;

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/persist/impl/EnumFormat;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deletion and renaming of enum values is not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 105
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return-void
.end method


# virtual methods
.method collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V
    .locals 0
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

    .line 82
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    return-void
.end method

.method convertRawObject(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;
    .locals 4
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "rawObject"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p4, "converted"    # Ljava/util/IdentityHashMap;

    .line 154
    invoke-virtual {p3}, Lcom/sleepycat/persist/raw/RawObject;->getEnum()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 156
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/sleepycat/persist/impl/EnumFormat;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 158
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p4, p3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object v2

    .line 155
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enum constant is not defined: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method copySecKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/RecordOutput;)V
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/RecordOutput;

    .line 173
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getPackedIntByteLength()I

    move-result v0

    .line 174
    .local v0, "len":I
    nop

    .line 175
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getBufferOffset()I

    move-result v2

    invoke-virtual {p2, v1, v2, v0}, Lcom/sleepycat/persist/impl/RecordOutput;->writeFast([BII)V

    .line 176
    invoke-virtual {p1, v0}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 177
    return-void
.end method

.method evolve(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 12
    .param p1, "newFormatParam"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 181
    instance-of v0, p1, Lcom/sleepycat/persist/impl/EnumFormat;

    const-string v1, "Incompatible enum type changed detected"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 182
    nop

    .line 183
    const-string v0, "An enum class may not be changed to a non-enum type"

    invoke-virtual {p2, p0, p1, v1, v0}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return v2

    .line 195
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/impl/EnumFormat;

    .line 198
    .local v0, "newFormat":Lcom/sleepycat/persist/impl/EnumFormat;
    iget-object v3, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    iget-object v4, v0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 199
    invoke-virtual {p2, p0, v0}, Lcom/sleepycat/persist/impl/Evolver;->useOldFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)V

    .line 200
    return v4

    .line 203
    :cond_1
    iget-object v3, v0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 204
    .local v3, "newNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 205
    .local v5, "newNamesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 208
    .local v6, "oldNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 209
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 210
    .local v7, "oldNamesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enum values may not be removed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 212
    invoke-virtual {p2, p0, v0, v1, v8}, Lcom/sleepycat/persist/impl/Evolver;->addEvolveError(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v7    # "oldNamesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    .local v1, "additionalNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 228
    .local v7, "nAdditionalNames":I
    if-nez v7, :cond_3

    .line 229
    invoke-virtual {p2, p0, v0}, Lcom/sleepycat/persist/impl/Evolver;->useOldFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)V

    .line 230
    return v4

    .line 237
    :cond_3
    iget-object v8, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    array-length v8, v8

    .line 238
    .local v8, "nOldNames":I
    add-int v9, v8, v7

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, v0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    .line 239
    iget-object v10, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    invoke-static {v10, v2, v9, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_4

    .line 241
    iget-object v9, v0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    add-int v10, v8, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v9, v10

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "i":I
    :cond_4
    invoke-direct {v0}, Lcom/sleepycat/persist/impl/EnumFormat;->initValues()V

    .line 250
    invoke-virtual {p2, p0, v0, v0}, Lcom/sleepycat/persist/impl/Evolver;->useEvolvedFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Reader;Lcom/sleepycat/persist/impl/Format;)V

    .line 251
    return v4
.end method

.method public getEnumConstants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getFormatData()[Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    return-object v0
.end method

.method initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I

    .line 86
    iget-object v0, p0, Lcom/sleepycat/persist/impl/EnumFormat;->values:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/EnumFormat;->initValues()V

    .line 89
    :cond_0
    return-void
.end method

.method public isEnum()Z
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 109
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/EnumFormat;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z

    .line 114
    iget-object v0, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sleepycat/persist/impl/EntityInput;->readEnumConstant([Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "index":I
    if-eqz p2, :cond_0

    .line 116
    new-instance v1, Lcom/sleepycat/persist/raw/RawObject;

    iget-object v2, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/persist/raw/RawObject;-><init>(Lcom/sleepycat/persist/raw/RawType;Ljava/lang/String;)V

    return-object v1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/EnumFormat;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z

    .line 125
    return-object p1
.end method

.method skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .locals 1
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;

    .line 168
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->getPackedIntByteLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/persist/impl/RecordInput;->skipFast(I)V

    .line 169
    return-void
.end method

.method writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z

    .line 130
    if-eqz p3, :cond_2

    .line 131
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getEnum()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 133
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    invoke-interface {p2, v2, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeEnumConstant([Ljava/lang/String;I)V

    .line 135
    return-void

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 139
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/persist/impl/EnumFormat;->values:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 140
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/sleepycat/persist/impl/EnumFormat;->names:[Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/sleepycat/persist/impl/EntityOutput;->writeEnumConstant([Ljava/lang/String;I)V

    .line 142
    return-void

    .line 139
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "i":I
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad enum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
