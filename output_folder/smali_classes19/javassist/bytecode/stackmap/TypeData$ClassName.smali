.class public Ljavassist/bytecode/stackmap/TypeData$ClassName;
.super Ljavassist/bytecode/stackmap/TypeData;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassName"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .line 832
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData;-><init>()V

    .line 833
    iput-object p1, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    .line 834
    return-void
.end method


# virtual methods
.method public eq(Ljavassist/bytecode/stackmap/TypeData;)Z
    .locals 2
    .param p1, "d"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 856
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;
    .locals 7
    .param p1, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 863
    if-nez p1, :cond_0

    .line 864
    return-object p0

    .line 865
    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    const/16 v2, 0x5b

    if-lez p1, :cond_3

    .line 866
    new-array v3, p1, [C

    .line 867
    .local v3, "dimType":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 868
    aput-char v2, v3, v4

    .line 867
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 870
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;->getName()Ljava/lang/String;

    move-result-object v4

    .line 871
    .local v4, "elementType":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v2, :cond_2

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 874
    :cond_2
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 877
    .end local v3    # "dimType":[C
    .end local v4    # "elementType":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    neg-int v4, p1

    if-ge v3, v4, :cond_5

    .line 878
    iget-object v4, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_4

    .line 877
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 879
    :cond_4
    new-instance v0, Ljavassist/NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dimensional array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    neg-int v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 882
    .local v3, "type":C
    if-ne v3, v2, :cond_6

    .line 883
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    neg-int v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 884
    :cond_6
    const/16 v2, 0x4c

    if-ne v3, v2, :cond_7

    .line 885
    new-instance v2, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    iget-object v4, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    neg-int v5, p1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 886
    :cond_7
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData$BasicType;->access$100(Ljavassist/bytecode/stackmap/TypeData$BasicType;)C

    move-result v0

    if-ne v3, v0, :cond_8

    .line 887
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->DOUBLE:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    return-object v0

    .line 888
    :cond_8
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData$BasicType;->access$100(Ljavassist/bytecode/stackmap/TypeData$BasicType;)C

    move-result v0

    if-ne v3, v0, :cond_9

    .line 889
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->FLOAT:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    return-object v0

    .line 890
    :cond_9
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData$BasicType;->access$100(Ljavassist/bytecode/stackmap/TypeData$BasicType;)C

    move-result v0

    if-ne v3, v0, :cond_a

    .line 891
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->LONG:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    return-object v0

    .line 893
    :cond_a
    sget-object v0, Ljavassist/bytecode/stackmap/TypeTag;->INTEGER:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 838
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 852
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTypeTag()I
    .locals 1

    .line 848
    const/4 v0, 0x7

    return v0
.end method

.method public is2WordType()Z
    .locals 1

    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;
    .locals 1

    .line 842
    const/4 v0, 0x0

    return-object v0
.end method

.method public setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 0
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 859
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

    .line 899
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavassist/bytecode/stackmap/TypeData;>;"
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;->name:Ljava/lang/String;

    return-object v0
.end method
