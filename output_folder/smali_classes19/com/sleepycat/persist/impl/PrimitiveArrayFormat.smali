.class public Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;
.super Lcom/sleepycat/persist/impl/Format;
.source "PrimitiveArrayFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x72fb4c6231e9d5f7L


# instance fields
.field private componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "type"    # Ljava/lang/Class;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/Format;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    .line 38
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

    .line 59
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
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

    .line 126
    new-instance v6, Lcom/sleepycat/persist/impl/RawArrayInput;

    iget-object v5, p0, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/persist/impl/RawArrayInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;Lcom/sleepycat/persist/raw/RawObject;Lcom/sleepycat/persist/impl/Format;)V

    .line 128
    .local v0, "input":Lcom/sleepycat/persist/impl/RawArrayInput;
    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, "a":Ljava/lang/Object;
    invoke-virtual {p4, p3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p0, v1, v0, p2}, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method copySecMultiKey(Lcom/sleepycat/persist/impl/RecordInput;Lcom/sleepycat/persist/impl/Format;Ljava/util/Set;)V
    .locals 2
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;
    .param p2, "keyFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "results"    # Ljava/util/Set;

    .line 141
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v0

    .line 142
    .local v0, "len":I
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    invoke-virtual {v1, v0, p1, p3}, Lcom/sleepycat/persist/impl/SimpleFormat;->copySecMultiKeyPrimitiveArray(ILcom/sleepycat/persist/impl/RecordInput;Ljava/util/Set;)V

    .line 143
    return-void
.end method

.method evolve(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Evolver;)Z
    .locals 1
    .param p1, "newFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "evolver"    # Lcom/sleepycat/persist/impl/Evolver;

    .line 147
    invoke-virtual {p2, p0, p1}, Lcom/sleepycat/persist/impl/Evolver;->useOldFormat(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public getComponentType()Lcom/sleepycat/persist/impl/Format;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    return-object v0
.end method

.method public bridge synthetic getComponentType()Lcom/sleepycat/persist/raw/RawType;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->getComponentType()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()I
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method initialize(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;I)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "initVersion"    # I

    .line 68
    nop

    .line 69
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->getExistingType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/SimpleFormat;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    .line 70
    return-void
.end method

.method public isArray()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "len"    # I

    .line 74
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p2, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Lcom/sleepycat/persist/impl/EntityInput;->readArrayLength()I

    move-result v0

    .line 82
    .local v0, "len":I
    if-eqz p2, :cond_0

    .line 83
    new-instance v1, Lcom/sleepycat/persist/raw/RawObject;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/persist/raw/RawObject;-><init>(Lcom/sleepycat/persist/raw/RawType;[Ljava/lang/Object;)V

    return-object v1

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    invoke-virtual {v1, v0, p1}, Lcom/sleepycat/persist/impl/SimpleFormat;->newPrimitiveArray(ILcom/sleepycat/persist/impl/EntityInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 93
    if-eqz p3, :cond_0

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getElements()[Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/sleepycat/persist/impl/SimpleFormat;->newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 97
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    aget-object v4, v0, v1

    invoke-virtual {v2, v4, p2, v3}, Lcom/sleepycat/persist/impl/SimpleFormat;->readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    return-object p1
.end method

.method skipContents(Lcom/sleepycat/persist/impl/RecordInput;)V
    .locals 2
    .param p1, "input"    # Lcom/sleepycat/persist/impl/RecordInput;

    .line 135
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/RecordInput;->readPackedInt()I

    move-result v0

    .line 136
    .local v0, "len":I
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    invoke-virtual {v1, v0, p1}, Lcom/sleepycat/persist/impl/SimpleFormat;->skipPrimitiveArray(ILcom/sleepycat/persist/impl/RecordInput;)V

    .line 137
    return-void
.end method

.method writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .param p3, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 108
    if-eqz p3, :cond_1

    .line 109
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getElements()[Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    invoke-interface {p2, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeArrayLength(I)V

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4}, Lcom/sleepycat/persist/impl/SimpleFormat;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;->componentFormat:Lcom/sleepycat/persist/impl/SimpleFormat;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/persist/impl/SimpleFormat;->writePrimitiveArray(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V

    .line 117
    :goto_1
    return-void
.end method
