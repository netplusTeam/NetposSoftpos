.class public Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;
.super Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninitTypeVar"
.end annotation


# instance fields
.field protected type:Ljavassist/bytecode/stackmap/TypeData;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/stackmap/TypeData$UninitData;)V
    .locals 0
    .param p1, "t"    # Ljavassist/bytecode/stackmap/TypeData$UninitData;

    .line 774
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;-><init>()V

    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    return-void
.end method


# virtual methods
.method public constructorCalled(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 808
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/stackmap/TypeData;->constructorCalled(I)V

    .line 809
    return-void
.end method

.method public eq(Ljavassist/bytecode/stackmap/TypeData;)Z
    .locals 1
    .param p1, "d"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 786
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/stackmap/TypeData;->eq(Ljavassist/bytecode/stackmap/TypeData;)Z

    move-result v0

    return v0
.end method

.method public getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;
    .locals 1
    .param p1, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/stackmap/TypeData;->getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 778
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v0

    return v0
.end method

.method public getTypeTag()I
    .locals 1

    .line 776
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result v0

    return v0
.end method

.method public is2WordType()Z
    .locals 1

    .line 782
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v0

    return v0
.end method

.method public isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;
    .locals 1

    .line 780
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;

    move-result-object v0

    return-object v0
.end method

.method public isUninit()Z
    .locals 1

    .line 784
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->isUninit()Z

    move-result v0

    return v0
.end method

.method public join()Ljavassist/bytecode/stackmap/TypeData;
    .locals 1

    .line 793
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->join()Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    return-object v0
.end method

.method public merge(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 1
    .param p1, "t"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 802
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/stackmap/TypeData;->eq(Ljavassist/bytecode/stackmap/TypeData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    .line 804
    :cond_0
    return-void
.end method

.method public offset()I
    .locals 2

    .line 812
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    instance-of v1, v0, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    if-eqz v1, :cond_0

    .line 813
    check-cast v0, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    iget v0, v0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    return v0

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->type:Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 798
    return-void
.end method

.method toString2(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 823
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavassist/bytecode/stackmap/TypeData;>;"
    const-string v0, ""

    return-object v0
.end method

.method protected toTypeVar(I)Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    .locals 1
    .param p1, "dim"    # I

    .line 791
    const/4 v0, 0x0

    return-object v0
.end method
