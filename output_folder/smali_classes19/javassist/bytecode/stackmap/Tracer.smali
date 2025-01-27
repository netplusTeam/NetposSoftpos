.class public abstract Ljavassist/bytecode/stackmap/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Ljavassist/bytecode/stackmap/TypeTag;


# instance fields
.field protected classPool:Ljavassist/ClassPool;

.field protected cpool:Ljavassist/bytecode/ConstPool;

.field protected localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

.field protected returnType:Ljava/lang/String;

.field protected stackTop:I

.field protected stackTypes:[Ljavassist/bytecode/stackmap/TypeData;


# direct methods
.method public constructor <init>(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;IILjava/lang/String;)V
    .locals 1
    .param p1, "classes"    # Ljavassist/ClassPool;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p3, "maxStack"    # I
    .param p4, "maxLocals"    # I
    .param p5, "retType"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    .line 43
    iput-object p2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    .line 44
    iput-object p5, p0, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 46
    invoke-static {p3}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 47
    invoke-static {p4}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/stackmap/Tracer;)V
    .locals 1
    .param p1, "t"    # Ljavassist/bytecode/stackmap/Tracer;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    .line 52
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    .line 53
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    .line 54
    iget v0, p1, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 55
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 56
    iget-object v0, p1, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 57
    return-void
.end method

.method private checkParamTypes(Ljava/lang/String;I)V
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 903
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 904
    .local v0, "c":C
    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    .line 905
    return-void

    .line 907
    :cond_0
    move v1, p2

    .line 908
    .local v1, "k":I
    const/4 v2, 0x0

    .line 909
    .local v2, "array":Z
    :goto_0
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_1

    .line 910
    const/4 v2, 0x1

    .line 911
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 914
    :cond_1
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_3

    .line 915
    const/16 v4, 0x3b

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 916
    .end local v1    # "k":I
    .local v4, "k":I
    if-lez v4, :cond_2

    goto :goto_1

    .line 917
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "bad descriptor"

    invoke-direct {v1, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    .end local v4    # "k":I
    .restart local v1    # "k":I
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .line 922
    .end local v1    # "k":I
    .restart local v4    # "k":I
    :goto_1
    invoke-direct {p0, p1, v4}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    .line 923
    if-nez v2, :cond_5

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x44

    if-ne v0, v1, :cond_5

    .line 924
    :cond_4
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    goto :goto_2

    .line 926
    :cond_5
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 928
    :goto_2
    if-eqz v2, :cond_6

    .line 929
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v1, v1, v3

    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v3, v5}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    goto :goto_3

    .line 930
    :cond_6
    if-ne v0, v3, :cond_7

    .line 931
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v1, v1, v3

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v3, v5}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 933
    :cond_7
    :goto_3
    return-void
.end method

.method private constructorCalled(Ljavassist/bytecode/stackmap/TypeData;I)V
    .locals 3
    .param p1, "target"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "offset"    # I

    .line 824
    invoke-virtual {p1, p2}, Ljavassist/bytecode/stackmap/TypeData;->constructorCalled(I)V

    .line 825
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    if-ge v0, v1, :cond_0

    .line 826
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljavassist/bytecode/stackmap/TypeData;->constructorCalled(I)V

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 829
    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljavassist/bytecode/stackmap/TypeData;->constructorCalled(I)V

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 830
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private doALOAD(I)I
    .locals 3
    .param p1, "localVar"    # I

    .line 288
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    .line 289
    const/4 v0, 0x2

    return v0
.end method

.method private doASTORE(I)I
    .locals 3
    .param p1, "index"    # I

    .line 424
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 426
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v0, v2, v0

    aput-object v0, v1, p1

    .line 427
    const/4 v0, 0x2

    return v0
.end method

.method private doDUP_XX(II)V
    .locals 5
    .param p1, "delta"    # I
    .param p2, "len"    # I

    .line 431
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 432
    .local v0, "types":[Ljavassist/bytecode/stackmap/TypeData;
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x1

    .line 433
    .local v1, "sp":I
    sub-int v2, v1, p2

    .line 434
    .local v2, "end":I
    :goto_0
    if-le v1, v2, :cond_0

    .line 435
    add-int v3, v1, p1

    aget-object v4, v0, v1

    aput-object v4, v0, v3

    .line 436
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 438
    :cond_0
    return-void
.end method

.method private doGetField(I[BZ)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "notStatic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 739
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 740
    .local v0, "index":I
    invoke-direct {p0, p3, v0}, Ljavassist/bytecode/stackmap/Tracer;->setFieldTarget(ZI)V

    .line 741
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "desc":Ljava/lang/String;
    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    .line 743
    const/4 v2, 0x3

    return v2
.end method

.method private doInvokeDynamic(I[B)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 843
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 844
    .local v0, "i":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getInvokeDynamicType(I)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "desc":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    .line 853
    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    .line 854
    const/4 v2, 0x5

    return v2
.end method

.method private doInvokeIntfMethod(I[B)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 833
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 834
    .local v0, "i":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefType(I)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "desc":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    .line 836
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v3, v0}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefClassName(I)Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, "className":Ljava/lang/String;
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v5, v2

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v2, v4, v5

    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, v3, v4}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 838
    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    .line 839
    const/4 v2, 0x5

    return v2
.end method

.method private doInvokeMethod(I[BZ)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "notStatic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 800
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 801
    .local v0, "i":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "desc":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/stackmap/Tracer;->checkParamTypes(Ljava/lang/String;I)V

    .line 803
    if-eqz p3, :cond_2

    .line 804
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v3, v0}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "className":Ljava/lang/String;
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v5, v2

    iput v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v2, v4, v5

    .line 806
    .local v2, "target":Ljavassist/bytecode/stackmap/TypeData;
    instance-of v4, v2, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->isUninit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 807
    move-object v4, v2

    check-cast v4, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;

    invoke-virtual {v4}, Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;->offset()I

    move-result v4

    invoke-direct {p0, v2, v4}, Ljavassist/bytecode/stackmap/Tracer;->constructorCalled(Ljavassist/bytecode/stackmap/TypeData;I)V

    goto :goto_0

    .line 808
    :cond_0
    instance-of v4, v2, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    if-eqz v4, :cond_1

    .line 809
    move-object v4, v2

    check-cast v4, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    invoke-virtual {v4}, Ljavassist/bytecode/stackmap/TypeData$UninitData;->offset()I

    move-result v4

    invoke-direct {p0, v2, v4}, Ljavassist/bytecode/stackmap/Tracer;->constructorCalled(Ljavassist/bytecode/stackmap/TypeData;I)V

    .line 811
    :cond_1
    :goto_0
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, v3, v4}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 814
    .end local v2    # "target":Ljavassist/bytecode/stackmap/TypeData;
    .end local v3    # "className":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    .line 815
    const/4 v2, 0x3

    return v2
.end method

.method private doLDC(I)V
    .locals 5
    .param p1, "index"    # I

    .line 248
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 249
    .local v0, "stackTypes":[Ljavassist/bytecode/stackmap/TypeData;
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->getTag(I)I

    move-result v1

    .line 250
    .local v1, "tag":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 251
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    const-string v4, "java.lang.String"

    invoke-direct {v3, v4}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    goto/16 :goto_0

    .line 252
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 253
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v0, v2

    goto :goto_0

    .line 254
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 255
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v0, v2

    goto :goto_0

    .line 256
    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 257
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v0, v2

    .line 258
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v0, v2

    goto :goto_0

    .line 260
    :cond_3
    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 261
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v0, v2

    .line 262
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v0, v2

    goto :goto_0

    .line 264
    :cond_4
    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 265
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    const-string v4, "java.lang.Class"

    invoke-direct {v3, v4}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    goto :goto_0

    .line 266
    :cond_5
    const/16 v2, 0x11

    if-ne v1, v2, :cond_6

    .line 267
    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, p1}, Ljavassist/bytecode/ConstPool;->getDynamicType(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "desc":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljavassist/bytecode/stackmap/Tracer;->pushMemberType(Ljava/lang/String;)V

    .line 269
    .end local v2    # "desc":Ljava/lang/String;
    nop

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad LDC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doMultiANewArray(I[B)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "code"    # [B

    .line 790
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 791
    .local v0, "i":I
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    .line 792
    .local v1, "dim":I
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 794
    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 795
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v5, v2}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 796
    const/4 v3, 0x4

    return v3
.end method

.method private doNEWARRAY(I[B)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "code"    # [B

    .line 754
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    .line 756
    .local v0, "s":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 782
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad newarray"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :pswitch_0
    const-string v1, "[J"

    .line 780
    .local v1, "type":Ljava/lang/String;
    goto :goto_0

    .line 776
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_1
    const-string v1, "[I"

    .line 777
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 773
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_2
    const-string v1, "[S"

    .line 774
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 770
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_3
    const-string v1, "[B"

    .line 771
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 767
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_4
    const-string v1, "[D"

    .line 768
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 764
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_5
    const-string v1, "[F"

    .line 765
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 761
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_6
    const-string v1, "[C"

    .line 762
    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0

    .line 758
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_7
    const-string v1, "[Z"

    .line 759
    .restart local v1    # "type":Ljava/lang/String;
    nop

    .line 785
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v3, v1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    .line 786
    const/4 v2, 0x2

    return v2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doOpcode0_53(I[BI)I
    .locals 5
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "op"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 132
    .local v0, "stackTypes":[Ljavassist/bytecode/stackmap/TypeData;
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p3, :pswitch_data_0

    .line 241
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "fatal"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :pswitch_0
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v3

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v3

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 239
    goto/16 :goto_1

    .line 231
    :pswitch_1
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v3

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v3

    .line 232
    .local v1, "s":I
    aget-object v2, v0, v1

    .line 233
    .local v2, "data":Ljavassist/bytecode/stackmap/TypeData;
    invoke-static {v2}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->make(Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v4

    aput-object v4, v0, v1

    .line 234
    goto/16 :goto_1

    .line 227
    .end local v1    # "s":I
    .end local v2    # "data":Ljavassist/bytecode/stackmap/TypeData;
    :pswitch_2
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v2

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 228
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v3

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 229
    goto/16 :goto_1

    .line 224
    :pswitch_3
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v3

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v3

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 225
    goto/16 :goto_1

    .line 220
    :pswitch_4
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v2

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 221
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v3

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 222
    goto/16 :goto_1

    .line 217
    :pswitch_5
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v3

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v3

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 218
    goto/16 :goto_1

    .line 213
    :pswitch_6
    add-int/lit8 v1, p3, -0x2a

    .line 214
    .local v1, "reg":I
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v4, v4, v1

    aput-object v4, v0, v2

    .line 215
    goto/16 :goto_1

    .line 206
    .end local v1    # "reg":I
    :pswitch_7
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 207
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 208
    goto/16 :goto_1

    .line 200
    :pswitch_8
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 201
    goto/16 :goto_1

    .line 193
    :pswitch_9
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 194
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 195
    goto/16 :goto_1

    .line 187
    :pswitch_a
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 188
    goto/16 :goto_1

    .line 182
    :pswitch_b
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/Tracer;->doALOAD(I)I

    move-result v1

    return v1

    .line 180
    :pswitch_c
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, v1, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result v1

    return v1

    .line 178
    :pswitch_d
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, v1, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result v1

    return v1

    .line 176
    :pswitch_e
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, v1, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result v1

    return v1

    .line 174
    :pswitch_f
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, v1, p2, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I

    move-result v1

    return v1

    .line 171
    :pswitch_10
    add-int/lit8 v2, p1, 0x1

    invoke-static {p2, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v2

    invoke-direct {p0, v2}, Ljavassist/bytecode/stackmap/Tracer;->doLDC(I)V

    .line 172
    return v1

    .line 167
    :pswitch_11
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/Tracer;->doLDC(I)V

    .line 168
    return v2

    .line 164
    :pswitch_12
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v4, v0, v3

    .line 165
    const/16 v3, 0x11

    if-ne p3, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 159
    :pswitch_13
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 160
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 161
    goto :goto_1

    .line 155
    :pswitch_14
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 156
    goto :goto_1

    .line 149
    :pswitch_15
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 150
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 151
    goto :goto_1

    .line 145
    :pswitch_16
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 146
    goto :goto_1

    .line 136
    :pswitch_17
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v2, Ljavassist/bytecode/stackmap/TypeData$NullType;

    invoke-direct {v2}, Ljavassist/bytecode/stackmap/TypeData$NullType;-><init>()V

    aput-object v2, v0, v1

    .line 137
    goto :goto_1

    .line 134
    :pswitch_18
    nop

    .line 244
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doOpcode148_201(I[BI)I
    .locals 13
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "op"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 506
    move-object v6, p0

    move v7, p1

    move-object v8, p2

    const/4 v0, 0x5

    const/16 v1, 0x5b

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    .line 660
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitJSR(I[B)V

    .line 661
    return v0

    .line 657
    :pswitch_1
    add-int/lit8 v1, v7, 0x1

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->visitGoto(I[BI)V

    .line 658
    return v0

    .line 653
    :pswitch_2
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v10

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 654
    add-int/lit8 v0, v7, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->visitBranch(I[BI)V

    .line 655
    return v9

    .line 650
    :pswitch_3
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doMultiANewArray(I[B)I

    move-result v0

    return v0

    .line 648
    :pswitch_4
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE(I[B)I

    move-result v0

    return v0

    .line 644
    :pswitch_5
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v10

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 646
    goto/16 :goto_1

    .line 640
    :pswitch_6
    iget-object v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v10

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 641
    return v9

    .line 631
    :pswitch_7
    add-int/lit8 v0, v7, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 632
    .local v0, "i":I
    iget-object v4, v6, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v4, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 633
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_0

    .line 634
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 636
    :cond_0
    iget-object v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v10

    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v3, v4}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 637
    return v9

    .line 626
    .end local v0    # "i":I
    .end local v4    # "type":Ljava/lang/String;
    :pswitch_8
    iget-object v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v10

    iput v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v0, v0, v1

    iget-object v1, v6, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    const-string v2, "java.lang.Throwable"

    invoke-virtual {v0, v2, v1}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 627
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitThrow(I[B)V

    .line 628
    goto/16 :goto_1

    .line 622
    :pswitch_9
    iget-object v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v10

    aget-object v0, v0, v1

    iget-object v1, v6, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    const-string v2, "[Ljava.lang.Object;"

    invoke-virtual {v0, v2, v1}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 623
    iget-object v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v10

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 624
    goto/16 :goto_1

    .line 611
    :pswitch_a
    add-int/lit8 v0, v7, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 612
    .restart local v0    # "i":I
    iget-object v4, v6, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v4, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_1

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v2    # "type":Ljava/lang/String;
    .local v1, "type":Ljava/lang/String;
    goto :goto_0

    .line 616
    .end local v1    # "type":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[L"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 618
    .end local v2    # "type":Ljava/lang/String;
    .restart local v1    # "type":Ljava/lang/String;
    :goto_0
    iget-object v2, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v3, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v3, v10

    new-instance v4, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v4, v1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 620
    return v9

    .line 609
    .end local v0    # "i":I
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doNEWARRAY(I[B)I

    move-result v0

    return v0

    .line 604
    :pswitch_c
    add-int/lit8 v0, v7, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 605
    .restart local v0    # "i":I
    iget-object v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    new-instance v3, Ljavassist/bytecode/stackmap/TypeData$UninitData;

    iget-object v4, v6, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    .line 606
    invoke-virtual {v4, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljavassist/bytecode/stackmap/TypeData$UninitData;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    .line 607
    return v9

    .line 602
    .end local v0    # "i":I
    :pswitch_d
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeDynamic(I[B)I

    move-result v0

    return v0

    .line 600
    :pswitch_e
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeIntfMethod(I[B)I

    move-result v0

    return v0

    .line 598
    :pswitch_f
    invoke-direct {p0, p1, p2, v5}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeMethod(I[BZ)I

    move-result v0

    return v0

    .line 596
    :pswitch_10
    invoke-direct {p0, p1, p2, v10}, Ljavassist/bytecode/stackmap/Tracer;->doInvokeMethod(I[BZ)I

    move-result v0

    return v0

    .line 593
    :pswitch_11
    invoke-direct {p0, p1, p2, v10}, Ljavassist/bytecode/stackmap/Tracer;->doPutField(I[BZ)I

    move-result v0

    return v0

    .line 591
    :pswitch_12
    invoke-direct {p0, p1, p2, v10}, Ljavassist/bytecode/stackmap/Tracer;->doGetField(I[BZ)I

    move-result v0

    return v0

    .line 589
    :pswitch_13
    invoke-direct {p0, p1, p2, v5}, Ljavassist/bytecode/stackmap/Tracer;->doPutField(I[BZ)I

    move-result v0

    return v0

    .line 587
    :pswitch_14
    invoke-direct {p0, p1, p2, v5}, Ljavassist/bytecode/stackmap/Tracer;->doGetField(I[BZ)I

    move-result v0

    return v0

    .line 584
    :pswitch_15
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    .line 585
    goto/16 :goto_1

    .line 580
    :pswitch_16
    iget-object v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v10

    iput v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v0, v0, v1

    iget-object v1, v6, Ljavassist/bytecode/stackmap/Tracer;->returnType:Ljava/lang/String;

    iget-object v2, v6, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 581
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    .line 582
    goto/16 :goto_1

    .line 576
    :pswitch_17
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v4

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 577
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    .line 578
    goto/16 :goto_1

    .line 572
    :pswitch_18
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v10

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 573
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    .line 574
    goto/16 :goto_1

    .line 568
    :pswitch_19
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v4

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 569
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    .line 570
    goto/16 :goto_1

    .line 564
    :pswitch_1a
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v10

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 565
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitReturn(I[B)V

    .line 566
    goto/16 :goto_1

    .line 558
    :pswitch_1b
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v10

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 559
    and-int/lit8 v0, v7, -0x4

    add-int/lit8 v9, v0, 0x8

    .line 560
    .local v9, "pos2":I
    invoke-static {p2, v9}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v10

    .line 561
    .local v10, "n":I
    add-int/lit8 v4, v9, 0x4

    add-int/lit8 v0, v9, -0x4

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/stackmap/Tracer;->visitLookupSwitch(I[BIII)V

    .line 562
    mul-int/lit8 v0, v10, 0x8

    add-int/lit8 v0, v0, 0xc

    and-int/lit8 v1, v7, 0x3

    sub-int/2addr v0, v1

    return v0

    .line 550
    .end local v9    # "pos2":I
    .end local v10    # "n":I
    :pswitch_1c
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v10

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 551
    and-int/lit8 v0, v7, -0x4

    add-int/lit8 v9, v0, 0x8

    .line 552
    .restart local v9    # "pos2":I
    invoke-static {p2, v9}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v11

    .line 553
    .local v11, "low":I
    add-int/lit8 v0, v9, 0x4

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v12

    .line 554
    .local v12, "high":I
    sub-int v0, v12, v11

    add-int/2addr v10, v0

    .line 555
    .restart local v10    # "n":I
    add-int/lit8 v4, v9, 0x8

    add-int/lit8 v0, v9, -0x4

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->read32bit([BI)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/stackmap/Tracer;->visitTableSwitch(I[BIII)V

    .line 556
    mul-int/lit8 v0, v10, 0x4

    add-int/lit8 v0, v0, 0x10

    and-int/lit8 v1, v7, 0x3

    sub-int/2addr v0, v1

    return v0

    .line 547
    .end local v9    # "pos2":I
    .end local v10    # "n":I
    .end local v11    # "low":I
    .end local v12    # "high":I
    :pswitch_1d
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitRET(I[B)V

    .line 548
    return v4

    .line 544
    :pswitch_1e
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitJSR(I[B)V

    .line 545
    return v9

    .line 541
    :pswitch_1f
    add-int/lit8 v0, v7, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->visitGoto(I[BI)V

    .line 542
    return v9

    .line 537
    :pswitch_20
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v4

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 538
    add-int/lit8 v0, v7, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->visitBranch(I[BI)V

    .line 539
    return v9

    .line 526
    :pswitch_21
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v10

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 527
    add-int/lit8 v0, v7, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readS16bit([BI)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->visitBranch(I[BI)V

    .line 528
    return v9

    .line 517
    :pswitch_22
    iget-object v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x4

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 518
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v9

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 519
    goto :goto_1

    .line 513
    :pswitch_23
    iget-object v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v10

    iput v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v10

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 514
    goto :goto_1

    .line 508
    :pswitch_24
    iget-object v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v1, v1, -0x4

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 509
    iget v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v9

    iput v0, v6, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 510
    nop

    .line 663
    :goto_1
    return v10

    :pswitch_data_0
    .packed-switch 0x94
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doOpcode54_95(I[BI)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "op"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 293
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p3, :pswitch_data_0

    .line 401
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :pswitch_0
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v2

    .line 396
    .local v0, "sp":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v3, v1, v0

    .line 397
    .local v3, "t":Ljavassist/bytecode/stackmap/TypeData;
    add-int/lit8 v4, v0, -0x1

    aget-object v4, v1, v4

    aput-object v4, v1, v0

    .line 398
    add-int/lit8 v4, v0, -0x1

    aput-object v3, v1, v4

    .line 399
    goto/16 :goto_0

    .line 387
    .end local v0    # "sp":I
    .end local v3    # "t":Ljavassist/bytecode/stackmap/TypeData;
    :pswitch_1
    add-int/lit8 v3, p3, -0x5d

    add-int/2addr v3, v0

    .line 388
    .local v3, "len":I
    invoke-direct {p0, v1, v3}, Ljavassist/bytecode/stackmap/Tracer;->doDUP_XX(II)V

    .line 389
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 390
    .restart local v0    # "sp":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sub-int v4, v0, v3

    aget-object v5, v1, v0

    aput-object v5, v1, v4

    .line 391
    sub-int v4, v0, v3

    add-int/2addr v4, v2

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v1, v5

    aput-object v5, v1, v4

    .line 392
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 393
    goto/16 :goto_0

    .line 382
    .end local v0    # "sp":I
    .end local v3    # "len":I
    :pswitch_2
    invoke-direct {p0, v1, v1}, Ljavassist/bytecode/stackmap/Tracer;->doDUP_XX(II)V

    .line 383
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 384
    goto/16 :goto_0

    .line 375
    :pswitch_3
    add-int/lit8 v0, p3, -0x5a

    add-int/2addr v0, v1

    .line 376
    .local v0, "len":I
    invoke-direct {p0, v2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doDUP_XX(II)V

    .line 377
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 378
    .local v1, "sp":I
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sub-int v4, v1, v0

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    .line 379
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 380
    goto/16 :goto_0

    .line 369
    .end local v0    # "len":I
    .end local v1    # "sp":I
    :pswitch_4
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 370
    .local v0, "sp":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v1, v3

    aput-object v3, v1, v0

    .line 371
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 372
    goto/16 :goto_0

    .line 366
    .end local v0    # "sp":I
    :pswitch_5
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 367
    goto/16 :goto_0

    .line 363
    :pswitch_6
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 364
    goto/16 :goto_0

    .line 360
    :pswitch_7
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v0

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 361
    goto/16 :goto_0

    .line 352
    :pswitch_8
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v4, v3, -0x3

    aget-object v4, v1, v4

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-static {v4, v1, v3}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->aastore(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;Ljavassist/ClassPool;)V

    .line 355
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v0

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 356
    goto :goto_0

    .line 349
    :pswitch_9
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    const/16 v3, 0x50

    if-eq p3, v3, :cond_0

    const/16 v3, 0x52

    if-ne p3, v3, :cond_1

    :cond_0
    const/4 v0, 0x4

    :cond_1
    sub-int/2addr v1, v0

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 350
    goto :goto_0

    .line 342
    :pswitch_a
    add-int/lit8 v0, p3, -0x4b

    .line 343
    .local v0, "var":I
    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/Tracer;->doASTORE(I)I

    .line 344
    goto :goto_0

    .line 333
    .end local v0    # "var":I
    :pswitch_b
    add-int/lit8 v0, p3, -0x47

    .line 334
    .restart local v0    # "var":I
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v4, v3, v0

    .line 335
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v5, v3, v4

    .line 336
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v3, v1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 337
    .end local v0    # "var":I
    goto :goto_0

    .line 325
    :pswitch_c
    add-int/lit8 v0, p3, -0x43

    .line 326
    .restart local v0    # "var":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v0

    .line 327
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 328
    .end local v0    # "var":I
    goto :goto_0

    .line 316
    :pswitch_d
    add-int/lit8 v0, p3, -0x3f

    .line 317
    .restart local v0    # "var":I
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v4, v3, v0

    .line 318
    iget-object v3, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v5, v3, v4

    .line 319
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v3, v1

    iput v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 320
    .end local v0    # "var":I
    goto :goto_0

    .line 308
    :pswitch_e
    add-int/lit8 v0, p3, -0x3b

    .line 309
    .restart local v0    # "var":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v0

    .line 310
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 311
    .end local v0    # "var":I
    nop

    .line 404
    :goto_0
    return v2

    .line 303
    :pswitch_f
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/Tracer;->doASTORE(I)I

    move-result v0

    return v0

    .line 301
    :pswitch_10
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result v0

    return v0

    .line 299
    :pswitch_11
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result v0

    return v0

    .line 297
    :pswitch_12
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result v0

    return v0

    .line 295
    :pswitch_13
    sget-object v0, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doOpcode96_147(I[BI)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "op"    # I

    .line 441
    const/4 v0, 0x1

    const/16 v1, 0x83

    if-gt p3, v1, :cond_0

    .line 442
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/Opcode;->STACK_GROW:[I

    aget v2, v2, p3

    add-int/2addr v1, v2

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 443
    return v0

    .line 446
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :pswitch_0
    goto/16 :goto_0

    .line 492
    :pswitch_1
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 493
    goto/16 :goto_0

    .line 489
    :pswitch_2
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x2

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 490
    goto/16 :goto_0

    .line 486
    :pswitch_3
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 487
    goto/16 :goto_0

    .line 481
    :pswitch_4
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 482
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 483
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/2addr v1, v0

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 484
    goto/16 :goto_0

    .line 476
    :pswitch_5
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 477
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 478
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/2addr v1, v0

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 479
    goto :goto_0

    .line 473
    :pswitch_6
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 474
    goto :goto_0

    .line 470
    :pswitch_7
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x2

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 471
    goto :goto_0

    .line 467
    :pswitch_8
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 468
    goto :goto_0

    .line 464
    :pswitch_9
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 465
    goto :goto_0

    .line 459
    :pswitch_a
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 460
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 461
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/2addr v1, v0

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 462
    goto :goto_0

    .line 456
    :pswitch_b
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 457
    goto :goto_0

    .line 451
    :pswitch_c
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sub-int/2addr v2, v0

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 452
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v3, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v3, v1, v2

    .line 453
    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/2addr v1, v0

    iput v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 454
    nop

    .line 502
    :goto_0
    return v0

    .line 449
    :pswitch_d
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x84
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doPutField(I[BZ)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "notStatic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 725
    add-int/lit8 v0, p1, 0x1

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 726
    .local v0, "index":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "desc":Ljava/lang/String;
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 728
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 729
    .local v3, "c":C
    const/16 v4, 0x4c

    if-ne v3, v4, :cond_0

    .line 730
    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v5, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v4, v4, v5

    invoke-static {v1, v2}, Ljavassist/bytecode/stackmap/Tracer;->getFieldClassName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v4, v2, v5}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    goto :goto_0

    .line 731
    :cond_0
    const/16 v2, 0x5b

    if-ne v3, v2, :cond_1

    .line 732
    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v2, v2, v4

    iget-object v4, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, v1, v4}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 734
    :cond_1
    :goto_0
    invoke-direct {p0, p3, v0}, Ljavassist/bytecode/stackmap/Tracer;->setFieldTarget(ZI)V

    .line 735
    const/4 v2, 0x3

    return v2
.end method

.method private doWIDE(I[B)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 667
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 668
    .local v0, "op":I
    sparse-switch v0, :sswitch_data_0

    .line 708
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad WIDE instruction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 705
    :sswitch_0
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/Tracer;->visitRET(I[B)V

    .line 706
    goto :goto_0

    .line 703
    :sswitch_1
    const/4 v1, 0x6

    return v1

    .line 698
    :sswitch_2
    add-int/lit8 v1, p1, 0x2

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 699
    .local v1, "index":I
    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/Tracer;->doASTORE(I)I

    .line 700
    goto :goto_0

    .line 695
    .end local v1    # "index":I
    :sswitch_3
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    .line 696
    goto :goto_0

    .line 692
    :sswitch_4
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    .line 693
    goto :goto_0

    .line 689
    :sswitch_5
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    .line 690
    goto :goto_0

    .line 686
    :sswitch_6
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V

    .line 687
    goto :goto_0

    .line 682
    :sswitch_7
    add-int/lit8 v1, p1, 0x2

    invoke-static {p2, v1}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    .line 683
    .restart local v1    # "index":I
    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/Tracer;->doALOAD(I)I

    .line 684
    goto :goto_0

    .line 679
    .end local v1    # "index":I
    :sswitch_8
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    .line 680
    goto :goto_0

    .line 676
    :sswitch_9
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    .line 677
    goto :goto_0

    .line 673
    :sswitch_a
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    .line 674
    goto :goto_0

    .line 670
    :sswitch_b
    sget-object v1, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-direct {p0, p1, p2, v1}, Ljavassist/bytecode/stackmap/Tracer;->doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V

    .line 671
    nop

    .line 711
    :goto_0
    const/4 v1, 0x4

    return v1

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_b
        0x16 -> :sswitch_a
        0x17 -> :sswitch_9
        0x18 -> :sswitch_8
        0x19 -> :sswitch_7
        0x36 -> :sswitch_6
        0x37 -> :sswitch_5
        0x38 -> :sswitch_4
        0x39 -> :sswitch_3
        0x3a -> :sswitch_2
        0x84 -> :sswitch_1
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method private doWIDE_STORE(I[BLjavassist/bytecode/stackmap/TypeData;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "type"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 720
    add-int/lit8 v0, p1, 0x2

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 721
    .local v0, "index":I
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(ILjavassist/bytecode/stackmap/TypeData;)I

    .line 722
    return-void
.end method

.method private doWIDE_XLOAD(I[BLjavassist/bytecode/stackmap/TypeData;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "type"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 715
    add-int/lit8 v0, p1, 0x2

    invoke-static {p2, v0}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v0

    .line 716
    .local v0, "index":I
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(ILjavassist/bytecode/stackmap/TypeData;)I

    .line 717
    return-void
.end method

.method private doXLOAD(ILjavassist/bytecode/stackmap/TypeData;)I
    .locals 3
    .param p1, "localVar"    # I
    .param p2, "type"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 280
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aput-object p2, v0, v1

    .line 281
    invoke-virtual {p2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 284
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private doXLOAD(Ljavassist/bytecode/stackmap/TypeData;[BI)I
    .locals 2
    .param p1, "type"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "code"    # [B
    .param p3, "pos"    # I

    .line 275
    add-int/lit8 v0, p3, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 276
    .local v0, "localVar":I
    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/stackmap/Tracer;->doXLOAD(ILjavassist/bytecode/stackmap/TypeData;)I

    move-result v1

    return v1
.end method

.method private doXSTORE(ILjavassist/bytecode/stackmap/TypeData;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "type"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 413
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 414
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aput-object p2, v0, p1

    .line 415
    invoke-virtual {p2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 417
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    add-int/lit8 v1, p1, 0x1

    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 420
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private doXSTORE(I[BLjavassist/bytecode/stackmap/TypeData;)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "type"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 408
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 409
    .local v0, "index":I
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/stackmap/Tracer;->doXSTORE(ILjavassist/bytecode/stackmap/TypeData;)I

    move-result v1

    return v1
.end method

.method private static getFieldClassName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 899
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pushMemberType(Ljava/lang/String;)V
    .locals 6
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, "top":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x28

    if-ne v1, v3, :cond_1

    .line 860
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 861
    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 862
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad descriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 866
    :cond_1
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    .line 867
    .local v1, "types":[Ljavassist/bytecode/stackmap/TypeData;
    iget v3, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 868
    .local v3, "index":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 891
    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v4, v1, v3

    goto :goto_1

    .line 870
    :sswitch_0
    new-instance v4, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v3

    .line 871
    goto :goto_1

    .line 889
    :sswitch_1
    return-void

    .line 873
    :sswitch_2
    new-instance v4, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-static {p1, v0}, Ljavassist/bytecode/stackmap/Tracer;->getFieldClassName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v3

    .line 874
    goto :goto_1

    .line 876
    :sswitch_3
    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v1, v3

    .line 877
    add-int/lit8 v2, v3, 0x1

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v4, v1, v2

    .line 878
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 879
    return-void

    .line 881
    :sswitch_4
    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v4, v1, v3

    .line 882
    goto :goto_1

    .line 884
    :sswitch_5
    sget-object v2, Ljavassist/bytecode/stackmap/Tracer;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v1, v3

    .line 885
    add-int/lit8 v2, v3, 0x1

    sget-object v4, Ljavassist/bytecode/stackmap/Tracer;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v4, v1, v2

    .line 886
    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 887
    return-void

    .line 895
    :goto_1
    iget v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/2addr v4, v2

    iput v4, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    .line 896
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4c -> :sswitch_2
        0x56 -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private setFieldTarget(ZI)V
    .locals 3
    .param p1, "notStatic"    # Z
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 747
    if-eqz p1, :cond_0

    .line 748
    iget-object v0, p0, Ljavassist/bytecode/stackmap/Tracer;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljavassist/bytecode/stackmap/Tracer;->stackTop:I

    aget-object v1, v1, v2

    iget-object v2, p0, Ljavassist/bytecode/stackmap/Tracer;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v0, v2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 751
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected doOpcode(I[B)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 71
    :try_start_0
    aget-byte v0, p2, p1

    and-int/lit16 v0, v0, 0xff

    .line 72
    .local v0, "op":I
    const/16 v1, 0x36

    if-ge v0, v1, :cond_0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode0_53(I[BI)I

    move-result v1

    return v1

    .line 74
    :cond_0
    const/16 v1, 0x60

    if-ge v0, v1, :cond_1

    .line 75
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode54_95(I[BI)I

    move-result v1

    return v1

    .line 76
    :cond_1
    const/16 v1, 0x94

    if-ge v0, v1, :cond_2

    .line 77
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode96_147(I[BI)I

    move-result v1

    return v1

    .line 78
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/stackmap/Tracer;->doOpcode148_201(I[BI)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 80
    .end local v0    # "op":I
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inconsistent stack height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected visitBranch(I[BI)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 85
    return-void
.end method

.method protected visitGoto(I[BI)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 86
    return-void
.end method

.method protected visitJSR(I[B)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 121
    return-void
.end method

.method protected visitLookupSwitch(I[BIII)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "n"    # I
    .param p4, "pairsPos"    # I
    .param p5, "defaultOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 108
    return-void
.end method

.method protected visitRET(I[B)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 127
    return-void
.end method

.method protected visitReturn(I[B)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 87
    return-void
.end method

.method protected visitTableSwitch(I[BIII)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .param p3, "n"    # I
    .param p4, "offsetPos"    # I
    .param p5, "defaultOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 98
    return-void
.end method

.method protected visitThrow(I[B)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 88
    return-void
.end method
