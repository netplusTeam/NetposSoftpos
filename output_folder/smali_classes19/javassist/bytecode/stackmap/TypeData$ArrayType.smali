.class public Ljavassist/bytecode/stackmap/TypeData$ArrayType;
.super Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayType"
.end annotation


# instance fields
.field private element:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;


# direct methods
.method private constructor <init>(Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;)V
    .locals 0
    .param p1, "elementType"    # Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    .line 611
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;-><init>()V

    .line 612
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->element:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    .line 613
    return-void
.end method

.method static make(Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;
    .locals 3
    .param p0, "element"    # Ljavassist/bytecode/stackmap/TypeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 616
    instance-of v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;

    if-eqz v0, :cond_0

    .line 617
    move-object v0, p0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->arrayType()Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    move-result-object v0

    return-object v0

    .line 618
    :cond_0
    instance-of v0, p0, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    if-eqz v0, :cond_1

    .line 619
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;

    move-object v1, p0

    check-cast v1, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$ArrayType;-><init>(Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;)V

    return-object v0

    .line 620
    :cond_1
    instance-of v0, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->typeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 624
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

.method public static typeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "elementType"    # Ljava/lang/String;

    .line 655
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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

    .line 675
    .local p1, "order":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->element:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->dfs(Ljava/util/List;ILjavassist/ClassPool;)I

    move-result v0

    return v0
.end method

.method public elementType()Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;
    .locals 1

    .line 644
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->element:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    return-object v0
.end method

.method public getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;
    .locals 2
    .param p1, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->element:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 641
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->element:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->typeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is2WordType()Z
    .locals 1

    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;
    .locals 1

    .line 647
    const/4 v0, 0x0

    return-object v0
.end method

.method public merge(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 4
    .param p1, "t"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 630
    :try_start_0
    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->element:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-static {p1}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->make(Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->merge(Ljavassist/bytecode/stackmap/TypeData;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :cond_0
    nop

    .line 637
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 635
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

    .line 662
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->element:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-static {p1}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 663
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

    .line 680
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavassist/bytecode/stackmap/TypeData;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->element:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

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

    .line 666
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->element:Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->toTypeVar(I)Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    move-result-object v0

    return-object v0
.end method
