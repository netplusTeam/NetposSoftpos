.class public Ljavassist/bytecode/stackmap/TypeData$ArrayElement;
.super Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayElement"
.end annotation


# instance fields
.field private array:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;


# direct methods
.method private constructor <init>(Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;)V
    .locals 0
    .param p1, "a"    # Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    .line 690
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;-><init>()V

    .line 691
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    .line 692
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 687
    invoke-static {p0}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->typeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static make(Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;
    .locals 3
    .param p0, "array"    # Ljavassist/bytecode/stackmap/TypeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 695
    instance-of v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;

    if-eqz v0, :cond_0

    .line 696
    move-object v0, p0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->elementType()Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    move-result-object v0

    return-object v0

    .line 697
    :cond_0
    instance-of v0, p0, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    if-eqz v0, :cond_1

    .line 698
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;

    move-object v1, p0

    check-cast v1, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;-><init>(Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;)V

    return-object v0

    .line 699
    :cond_1
    instance-of v0, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    if-eqz v0, :cond_2

    .line 700
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v0

    if-nez v0, :cond_2

    .line 701
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->typeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 703
    :cond_2
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad AASTORE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static typeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "arrayType"    # Ljava/lang/String;

    .line 736
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    .line 737
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 738
    .local v0, "c":C
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_0

    .line 739
    const/4 v2, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 740
    :cond_0
    if-ne v0, v2, :cond_1

    .line 741
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 744
    .end local v0    # "c":C
    :cond_1
    const-string v0, "java.lang.Object"

    return-object v0
.end method


# virtual methods
.method public arrayType()Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;
    .locals 1

    .line 723
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    return-object v0
.end method

.method public dfs(Ljava/util/List;ILjavassist/ClassPool;)I
    .locals 1
    .param p2, "index"    # I
    .param p3, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;I",
            "Ljavassist/ClassPool;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 762
    .local p1, "order":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->dfs(Ljava/util/List;ILjavassist/ClassPool;)I

    move-result v0

    return v0
.end method

.method public getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;
    .locals 2
    .param p1, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 720
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->typeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is2WordType()Z
    .locals 1

    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;
    .locals 1

    .line 730
    const/4 v0, 0x0

    return-object v0
.end method

.method public merge(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 4
    .param p1, "t"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 709
    :try_start_0
    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-static {p1}, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->make(Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->merge(Ljavassist/bytecode/stackmap/TypeData;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_0
    nop

    .line 716
    return-void

    .line 712
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fatal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-static {p1}, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->typeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 750
    return-void
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

    .line 767
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavassist/bytecode/stackmap/TypeData;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->toString2(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toTypeVar(I)Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    .locals 2
    .param p1, "dim"    # I

    .line 753
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->array:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->toTypeVar(I)Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    move-result-object v0

    return-object v0
.end method
