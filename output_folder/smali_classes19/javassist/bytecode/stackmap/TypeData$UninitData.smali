.class public Ljavassist/bytecode/stackmap/TypeData$UninitData;
.super Ljavassist/bytecode/stackmap/TypeData$ClassName;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninitData"
.end annotation


# instance fields
.field initialized:Z

.field offset:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "className"    # Ljava/lang/String;

    .line 935
    invoke-direct {p0, p2}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    .line 936
    iput p1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->initialized:Z

    .line 938
    return-void
.end method


# virtual methods
.method public constructorCalled(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 975
    iget v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    if-ne p1, v0, :cond_0

    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->initialized:Z

    .line 977
    :cond_0
    return-void
.end method

.method public copy()Ljavassist/bytecode/stackmap/TypeData$UninitData;
    .locals 3

    .line 940
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    iget v1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$UninitData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavassist/bytecode/stackmap/TypeData$UninitData;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public eq(Ljavassist/bytecode/stackmap/TypeData;)Z
    .locals 4
    .param p1, "d"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 964
    instance-of v0, p1, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 965
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    .line 966
    .local v0, "ud":Ljavassist/bytecode/stackmap/TypeData$UninitData;
    iget v2, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    iget v3, v0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$UninitData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData$UninitData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 968
    .end local v0    # "ud":Ljavassist/bytecode/stackmap/TypeData$UninitData;
    :cond_1
    return v1
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 949
    iget v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    return v0
.end method

.method public getTypeTag()I
    .locals 1

    .line 944
    const/16 v0, 0x8

    return v0
.end method

.method public isUninit()Z
    .locals 1

    .line 960
    const/4 v0, 0x1

    return v0
.end method

.method public join()Ljavassist/bytecode/stackmap/TypeData;
    .locals 3

    .line 954
    iget-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->initialized:Z

    if-eqz v0, :cond_0

    .line 955
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$UninitData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;-><init>(Ljavassist/bytecode/stackmap/TypeData;)V

    return-object v0

    .line 956
    :cond_0
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;

    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$UninitData;->copy()Ljavassist/bytecode/stackmap/TypeData$UninitData;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;-><init>(Ljavassist/bytecode/stackmap/TypeData$UninitData;)V

    return-object v0
.end method

.method public offset()I
    .locals 1

    .line 971
    iget v0, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    return v0
.end method

.method toString2(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 980
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavassist/bytecode/stackmap/TypeData;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$UninitData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
