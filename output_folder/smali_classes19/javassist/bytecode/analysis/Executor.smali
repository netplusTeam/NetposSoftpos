.class public Ljavassist/bytecode/analysis/Executor;
.super Ljava/lang/Object;
.source "Executor.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# instance fields
.field private final CLASS_TYPE:Ljavassist/bytecode/analysis/Type;

.field private final STRING_TYPE:Ljavassist/bytecode/analysis/Type;

.field private final THROWABLE_TYPE:Ljavassist/bytecode/analysis/Type;

.field private final classPool:Ljavassist/ClassPool;

.field private final constPool:Ljavassist/bytecode/ConstPool;

.field private lastPos:I


# direct methods
.method public constructor <init>(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;)V
    .locals 2
    .param p1, "classPool"    # Ljavassist/ClassPool;
    .param p2, "constPool"    # Ljavassist/bytecode/ConstPool;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    .line 43
    iput-object p1, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    .line 46
    :try_start_0
    const-string v0, "java.lang.String"

    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/analysis/Executor;->STRING_TYPE:Ljavassist/bytecode/analysis/Type;

    .line 47
    const-string v0, "java.lang.Class"

    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/analysis/Executor;->CLASS_TYPE:Ljavassist/bytecode/analysis/Type;

    .line 48
    const-string v0, "java.lang.Throwable"

    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/analysis/Executor;->THROWABLE_TYPE:Ljavassist/bytecode/analysis/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    nop

    .line 52
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private access(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "type"    # Ljavassist/bytecode/analysis/Type;
    .param p3, "subroutine"    # Ljavassist/bytecode/analysis/Subroutine;

    .line 997
    if-nez p3, :cond_0

    .line 998
    return-void

    .line 999
    :cond_0
    invoke-virtual {p3, p1}, Ljavassist/bytecode/analysis/Subroutine;->access(I)V

    .line 1000
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1001
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Ljavassist/bytecode/analysis/Subroutine;->access(I)V

    .line 1002
    :cond_1
    return-void
.end method

.method private evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 6
    .param p1, "expectedComponent"    # Ljavassist/bytecode/analysis/Type;
    .param p2, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 636
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 637
    .local v0, "index":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 641
    .local v1, "array":Ljavassist/bytecode/analysis/Type;
    sget-object v2, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne v1, v2, :cond_1

    .line 642
    sget-object v2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 643
    sget-object v2, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v2, :cond_0

    .line 644
    sget-object v2, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    goto :goto_0

    .line 646
    :cond_0
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 648
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Type;->getComponent()Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 653
    .local v2, "component":Ljavassist/bytecode/analysis/Type;
    if-eqz v2, :cond_2

    .line 656
    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 658
    invoke-direct {p0, p1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 659
    sget-object v3, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v3, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 660
    invoke-direct {p0, v2, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 661
    return-void

    .line 654
    :cond_2
    new-instance v3, Ljavassist/bytecode/BadBytecode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not an array! [pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 7
    .param p1, "expectedComponent"    # Ljavassist/bytecode/analysis/Type;
    .param p2, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 664
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 665
    .local v0, "value":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 666
    .local v1, "index":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 668
    .local v2, "array":Ljavassist/bytecode/analysis/Type;
    sget-object v3, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne v2, v3, :cond_0

    .line 669
    sget-object v3, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v3, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 670
    return-void

    .line 673
    :cond_0
    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->getComponent()Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    .line 675
    .local v3, "component":Ljavassist/bytecode/analysis/Type;
    if-eqz v3, :cond_2

    .line 678
    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    .line 680
    invoke-direct {p0, p1, v3}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 681
    sget-object v4, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v4, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 689
    sget-object v4, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v4, :cond_1

    .line 690
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto :goto_0

    .line 692
    :cond_1
    invoke-direct {p0, v3, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 694
    :goto_0
    return-void

    .line 676
    :cond_2
    new-instance v4, Ljavassist/bytecode/BadBytecode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not an array! [pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 2
    .param p1, "expected"    # Ljavassist/bytecode/analysis/Type;
    .param p2, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 697
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 698
    .local v0, "value2":Ljavassist/bytecode/analysis/Type;
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 700
    .local v1, "value1":Ljavassist/bytecode/analysis/Type;
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 701
    invoke-direct {p0, p1, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 702
    invoke-direct {p0, v1, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 703
    return-void
.end method

.method private evalGetField(IILjavassist/bytecode/analysis/Frame;)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "index"    # I
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "desc":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->typeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 709
    .local v1, "type":Ljavassist/bytecode/analysis/Type;
    const/16 v2, 0xb4

    if-ne p1, v2, :cond_0

    .line 710
    iget-object v2, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 711
    .local v2, "objectType":Ljavassist/bytecode/analysis/Type;
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 714
    .end local v2    # "objectType":Ljavassist/bytecode/analysis/Type;
    :cond_0
    invoke-direct {p0, v1, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 715
    return-void
.end method

.method private evalInvokeDynamic(IILjavassist/bytecode/analysis/Frame;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "index"    # I
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getInvokeDynamicType(I)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "desc":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->paramTypesFromDesc(Ljava/lang/String;)[Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 755
    .local v1, "types":[Ljavassist/bytecode/analysis/Type;
    array-length v2, v1

    .line 757
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 758
    add-int/lit8 v2, v2, -0x1

    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto :goto_0

    .line 762
    :cond_0
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->returnTypeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    .line 763
    .local v3, "returnType":Ljavassist/bytecode/analysis/Type;
    sget-object v4, Ljavassist/bytecode/analysis/Type;->VOID:Ljavassist/bytecode/analysis/Type;

    if-eq v3, v4, :cond_1

    .line 764
    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 765
    :cond_1
    return-void
.end method

.method private evalInvokeIntfMethod(IILjavassist/bytecode/analysis/Frame;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "index"    # I
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "desc":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->paramTypesFromDesc(Ljava/lang/String;)[Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 720
    .local v1, "types":[Ljavassist/bytecode/analysis/Type;
    array-length v2, v1

    .line 722
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 723
    add-int/lit8 v2, v2, -0x1

    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto :goto_0

    .line 725
    :cond_0
    iget-object v3, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v3, p2}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefClassName(I)Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, "classInfo":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    .line 727
    .local v4, "objectType":Ljavassist/bytecode/analysis/Type;
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 729
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->returnTypeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v5

    .line 730
    .local v5, "returnType":Ljavassist/bytecode/analysis/Type;
    sget-object v6, Ljavassist/bytecode/analysis/Type;->VOID:Ljavassist/bytecode/analysis/Type;

    if-eq v5, v6, :cond_1

    .line 731
    invoke-direct {p0, v5}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v6

    invoke-direct {p0, v6, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 732
    :cond_1
    return-void
.end method

.method private evalInvokeMethod(IILjavassist/bytecode/analysis/Frame;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "index"    # I
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 735
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "desc":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->paramTypesFromDesc(Ljava/lang/String;)[Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 737
    .local v1, "types":[Ljavassist/bytecode/analysis/Type;
    array-length v2, v1

    .line 739
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 740
    add-int/lit8 v2, v2, -0x1

    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    goto :goto_0

    .line 742
    :cond_0
    const/16 v3, 0xb8

    if-eq p1, v3, :cond_1

    .line 743
    iget-object v3, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v3, p2}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    .line 744
    .local v3, "objectType":Ljavassist/bytecode/analysis/Type;
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 747
    .end local v3    # "objectType":Ljavassist/bytecode/analysis/Type;
    :cond_1
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->returnTypeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    .line 748
    .local v3, "returnType":Ljavassist/bytecode/analysis/Type;
    sget-object v4, Ljavassist/bytecode/analysis/Type;->VOID:Ljavassist/bytecode/analysis/Type;

    if-eq v3, v4, :cond_2

    .line 749
    invoke-direct {p0, v3}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 750
    :cond_2
    return-void
.end method

.method private evalLDC(ILjavassist/bytecode/analysis/Frame;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getTag(I)I

    move-result v0

    .line 770
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 790
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad LDC [pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    :pswitch_0
    iget-object v1, p0, Ljavassist/bytecode/analysis/Executor;->STRING_TYPE:Ljavassist/bytecode/analysis/Type;

    .line 773
    .local v1, "type":Ljavassist/bytecode/analysis/Type;
    goto :goto_0

    .line 787
    .end local v1    # "type":Ljavassist/bytecode/analysis/Type;
    :pswitch_1
    iget-object v1, p0, Ljavassist/bytecode/analysis/Executor;->CLASS_TYPE:Ljavassist/bytecode/analysis/Type;

    .line 788
    .restart local v1    # "type":Ljavassist/bytecode/analysis/Type;
    goto :goto_0

    .line 784
    .end local v1    # "type":Ljavassist/bytecode/analysis/Type;
    :pswitch_2
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    .line 785
    .restart local v1    # "type":Ljavassist/bytecode/analysis/Type;
    goto :goto_0

    .line 781
    .end local v1    # "type":Ljavassist/bytecode/analysis/Type;
    :pswitch_3
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    .line 782
    .restart local v1    # "type":Ljavassist/bytecode/analysis/Type;
    goto :goto_0

    .line 778
    .end local v1    # "type":Ljavassist/bytecode/analysis/Type;
    :pswitch_4
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    .line 779
    .restart local v1    # "type":Ljavassist/bytecode/analysis/Type;
    goto :goto_0

    .line 775
    .end local v1    # "type":Ljavassist/bytecode/analysis/Type;
    :pswitch_5
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    .line 776
    .restart local v1    # "type":Ljavassist/bytecode/analysis/Type;
    nop

    .line 793
    :goto_0
    invoke-direct {p0, v1, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 794
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 1
    .param p1, "expected"    # Ljavassist/bytecode/analysis/Type;
    .param p2, "index"    # I
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .param p4, "subroutine"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 797
    invoke-virtual {p3, p2}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 799
    .local v0, "type":Ljavassist/bytecode/analysis/Type;
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 801
    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 802
    invoke-direct {p0, p2, v0, p4}, Ljavassist/bytecode/analysis/Executor;->access(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 803
    return-void
.end method

.method private evalNewArray(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 806
    sget-object v0, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, "type":Ljavassist/bytecode/analysis/Type;
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    .line 809
    .local v1, "typeInfo":I
    packed-switch v1, :pswitch_data_0

    .line 835
    new-instance v2, Ljavassist/bytecode/BadBytecode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid array type [pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v2

    .line 826
    :pswitch_0
    const-string v2, "long[]"

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 827
    goto :goto_0

    .line 823
    :pswitch_1
    const-string v2, "int[]"

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 824
    goto :goto_0

    .line 820
    :pswitch_2
    const-string v2, "short[]"

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 821
    goto :goto_0

    .line 817
    :pswitch_3
    const-string v2, "byte[]"

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 818
    goto :goto_0

    .line 832
    :pswitch_4
    const-string v2, "double[]"

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 833
    goto :goto_0

    .line 829
    :pswitch_5
    const-string v2, "float[]"

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 830
    goto :goto_0

    .line 814
    :pswitch_6
    const-string v2, "char[]"

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 815
    goto :goto_0

    .line 811
    :pswitch_7
    const-string v2, "boolean[]"

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 812
    nop

    .line 839
    :goto_0
    invoke-virtual {p3, v0}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 840
    return-void

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

.method private evalNewObjectArray(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 845
    .local v0, "type":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    .line 849
    .local v2, "opcode":I
    const/16 v3, 0xc5

    if-ne v2, v3, :cond_0

    .line 850
    add-int/lit8 v3, p1, 0x3

    invoke-virtual {p2, v3}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    .local v3, "dimensions":I
    goto :goto_0

    .line 852
    .end local v3    # "dimensions":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 853
    const/4 v3, 0x1

    .line 856
    .restart local v3    # "dimensions":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "dimensions":I
    .local v4, "dimensions":I
    if-lez v3, :cond_1

    .line 857
    sget-object v3, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    move v3, v4

    goto :goto_0

    .line 860
    :cond_1
    invoke-direct {p0, v1}, Ljavassist/bytecode/analysis/Executor;->getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 861
    return-void
.end method

.method private evalPutField(IILjavassist/bytecode/analysis/Frame;)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "index"    # I
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "desc":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Executor;->typeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavassist/bytecode/analysis/Executor;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 867
    .local v1, "type":Ljavassist/bytecode/analysis/Type;
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 869
    const/16 v2, 0xb5

    if-ne p1, v2, :cond_0

    .line 870
    iget-object v2, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, p2}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 871
    .local v2, "objectType":Ljavassist/bytecode/analysis/Type;
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 873
    .end local v2    # "objectType":Ljavassist/bytecode/analysis/Type;
    :cond_0
    return-void
.end method

.method private evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 3
    .param p1, "expected"    # Ljavassist/bytecode/analysis/Type;
    .param p2, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 876
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 877
    .local v0, "value2":Ljavassist/bytecode/analysis/Type;
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 879
    .local v1, "value1":Ljavassist/bytecode/analysis/Type;
    sget-object v2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 880
    invoke-direct {p0, p1, v1}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 881
    invoke-direct {p0, v1, p2}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 882
    return-void
.end method

.method private evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 2
    .param p1, "expected"    # Ljavassist/bytecode/analysis/Type;
    .param p2, "index"    # I
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .param p4, "subroutine"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 885
    invoke-direct {p0, p3}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 888
    .local v0, "type":Ljavassist/bytecode/analysis/Type;
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v1, :cond_0

    sget-object v1, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    if-eq v0, v1, :cond_1

    .line 889
    :cond_0
    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 890
    :cond_1
    invoke-direct {p0, p2, v0, p3}, Ljavassist/bytecode/analysis/Executor;->simpleSetLocal(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 891
    invoke-direct {p0, p2, v0, p4}, Ljavassist/bytecode/analysis/Executor;->access(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 892
    return-void
.end method

.method private evalWide(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .param p4, "subroutine"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 895
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 896
    .local v0, "opcode":I
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 897
    .local v1, "index":I
    sparse-switch v0, :sswitch_data_0

    .line 935
    new-instance v2, Ljavassist/bytecode/BadBytecode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid WIDE operand [pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v2

    .line 932
    :sswitch_0
    sget-object v2, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p3, v1}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 933
    goto :goto_0

    .line 929
    :sswitch_1
    sget-object v2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p3, v1}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 930
    goto :goto_0

    .line 926
    :sswitch_2
    sget-object v2, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 927
    goto :goto_0

    .line 923
    :sswitch_3
    sget-object v2, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 924
    goto :goto_0

    .line 920
    :sswitch_4
    sget-object v2, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 921
    goto :goto_0

    .line 917
    :sswitch_5
    sget-object v2, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 918
    goto :goto_0

    .line 914
    :sswitch_6
    sget-object v2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 915
    goto :goto_0

    .line 911
    :sswitch_7
    sget-object v2, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 912
    goto :goto_0

    .line 908
    :sswitch_8
    sget-object v2, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 909
    goto :goto_0

    .line 905
    :sswitch_9
    sget-object v2, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 906
    goto :goto_0

    .line 902
    :sswitch_a
    sget-object v2, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 903
    goto :goto_0

    .line 899
    :sswitch_b
    sget-object v2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v2, v1, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 900
    nop

    .line 938
    :goto_0
    return-void

    nop

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

.method private getType(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 942
    :try_start_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find class [pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private paramTypesFromDesc(Ljava/lang/String;)[Ljavassist/bytecode/analysis/Type;
    .locals 6
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 949
    const-string v0, "]: "

    const/4 v1, 0x0

    .line 951
    .local v1, "classes":[Ljavassist/CtClass;
    :try_start_0
    iget-object v2, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-static {p1, v2}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 954
    nop

    .line 956
    if-eqz v1, :cond_1

    .line 959
    array-length v0, v1

    new-array v0, v0, [Ljavassist/bytecode/analysis/Type;

    .line 960
    .local v0, "types":[Ljavassist/bytecode/analysis/Type;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 961
    aget-object v3, v1, v2

    invoke-static {v3}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    aput-object v3, v0, v2

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    .end local v2    # "i":I
    :cond_0
    return-object v0

    .line 957
    .end local v0    # "types":[Ljavassist/bytecode/analysis/Type;
    :cond_1
    new-instance v2, Ljavassist/bytecode/BadBytecode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain parameters for descriptor [pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v2

    .line 952
    :catch_0
    move-exception v2

    .line 953
    .local v2, "e":Ljavassist/NotFoundException;
    new-instance v3, Ljavassist/bytecode/BadBytecode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find class in descriptor [pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;
    .locals 6
    .param p1, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1011
    const-string v0, "]: "

    const/4 v1, 0x0

    .line 1013
    .local v1, "clazz":Ljavassist/CtClass;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 1014
    iget-object v2, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-static {p1, v2}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 1016
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1021
    :goto_0
    nop

    .line 1023
    if-eqz v1, :cond_1

    .line 1026
    invoke-static {v1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    return-object v0

    .line 1024
    :cond_1
    new-instance v2, Ljavassist/bytecode/BadBytecode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain type for descriptor [pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1019
    :catch_0
    move-exception v2

    .line 1020
    .local v2, "e":Ljavassist/NotFoundException;
    new-instance v3, Ljavassist/bytecode/BadBytecode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find class in descriptor [pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private returnTypeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;
    .locals 6
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 967
    const-string v0, "]: "

    const/4 v1, 0x0

    .line 969
    .local v1, "clazz":Ljavassist/CtClass;
    :try_start_0
    iget-object v2, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-static {p1, v2}, Ljavassist/bytecode/Descriptor;->getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 972
    nop

    .line 974
    if-eqz v1, :cond_0

    .line 977
    invoke-static {v1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    return-object v0

    .line 975
    :cond_0
    new-instance v2, Ljavassist/bytecode/BadBytecode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain return type for descriptor [pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v2

    .line 970
    :catch_0
    move-exception v2

    .line 971
    .local v2, "e":Ljavassist/NotFoundException;
    new-instance v3, Ljavassist/bytecode/BadBytecode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find class in descriptor [pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private simplePeek(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;
    .locals 2
    .param p1, "frame"    # Ljavassist/bytecode/analysis/Frame;

    .line 981
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 982
    .local v0, "type":Ljavassist/bytecode/analysis/Type;
    sget-object v1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;
    .locals 2
    .param p1, "frame"    # Ljavassist/bytecode/analysis/Frame;

    .line 986
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 987
    .local v0, "type":Ljavassist/bytecode/analysis/Type;
    sget-object v1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 2
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;
    .param p2, "frame"    # Ljavassist/bytecode/analysis/Frame;

    .line 991
    invoke-virtual {p2, p1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 992
    invoke-virtual {p1}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 993
    sget-object v0, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p2, v0}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 994
    :cond_0
    return-void
.end method

.method private simpleSetLocal(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "type"    # Ljavassist/bytecode/analysis/Type;
    .param p3, "frame"    # Ljavassist/bytecode/analysis/Frame;

    .line 1005
    invoke-virtual {p3, p1, p2}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    .line 1006
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1007
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p3, v0, v1}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    .line 1008
    :cond_0
    return-void
.end method

.method private typeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;
    .locals 6
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1030
    const-string v0, "]: "

    const/4 v1, 0x0

    .line 1032
    .local v1, "clazz":Ljavassist/CtClass;
    :try_start_0
    iget-object v2, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-static {p1, v2}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1035
    nop

    .line 1037
    if-eqz v1, :cond_0

    .line 1040
    invoke-static {v1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    return-object v0

    .line 1038
    :cond_0
    new-instance v2, Ljavassist/bytecode/BadBytecode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain type for descriptor [pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1033
    :catch_0
    move-exception v2

    .line 1034
    .local v2, "e":Ljavassist/NotFoundException;
    new-instance v3, Ljavassist/bytecode/BadBytecode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find class in descriptor [pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V
    .locals 3
    .param p1, "expected"    # Ljavassist/bytecode/analysis/Type;
    .param p2, "type"    # Ljavassist/bytecode/analysis/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1044
    invoke-virtual {p1, p2}, Ljavassist/bytecode/analysis/Type;->isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    return-void

    .line 1045
    :cond_0
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 1
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 629
    sget-object v0, Ljavassist/bytecode/analysis/Type;->SHORT:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->BYTE:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->CHAR:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->BOOLEAN:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    return-object p1

    .line 630
    :cond_1
    :goto_0
    sget-object v0, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    return-object v0
.end method


# virtual methods
.method public execute(Ljavassist/bytecode/MethodInfo;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 6
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;
    .param p2, "pos"    # I
    .param p3, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .param p5, "subroutine"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 68
    iput p2, p0, Ljavassist/bytecode/analysis/Executor;->lastPos:I

    .line 69
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 73
    .local v0, "opcode":I
    const-string v1, "DUP can not be used with a category 2 value, pos = "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 623
    :pswitch_0
    sget-object v1, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    goto/16 :goto_3

    .line 621
    :pswitch_1
    goto/16 :goto_3

    .line 618
    :pswitch_2
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 619
    goto/16 :goto_3

    .line 614
    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalNewObjectArray(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V

    .line 615
    goto/16 :goto_3

    .line 611
    :pswitch_4
    invoke-direct {p0, p2, p3, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalWide(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 612
    goto/16 :goto_3

    .line 608
    :pswitch_5
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 609
    goto/16 :goto_3

    .line 603
    :pswitch_6
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 604
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 605
    goto/16 :goto_3

    .line 599
    :pswitch_7
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 600
    iget-object v1, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ConstPool;->getClassInfoByDescriptor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavassist/bytecode/analysis/Executor;->typeFromDesc(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 601
    goto/16 :goto_3

    .line 596
    :pswitch_8
    iget-object v1, p0, Ljavassist/bytecode/analysis/Executor;->THROWABLE_TYPE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 597
    goto/16 :goto_3

    .line 589
    :pswitch_9
    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 590
    .local v1, "array":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Type;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    new-instance v2, Ljavassist/bytecode/BadBytecode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array length passed a non-array [pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v2

    .line 592
    :cond_1
    :goto_0
    sget-object v2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v2}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 593
    goto/16 :goto_3

    .line 586
    .end local v1    # "array":Ljavassist/bytecode/analysis/Type;
    :pswitch_a
    invoke-direct {p0, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalNewObjectArray(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V

    .line 587
    goto/16 :goto_3

    .line 583
    :pswitch_b
    invoke-direct {p0, p2, p3, p4}, Ljavassist/bytecode/analysis/Executor;->evalNewArray(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V

    .line 584
    goto/16 :goto_3

    .line 580
    :pswitch_c
    iget-object v1, p0, Ljavassist/bytecode/analysis/Executor;->constPool:Ljavassist/bytecode/ConstPool;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavassist/bytecode/analysis/Executor;->resolveClassInfo(Ljava/lang/String;)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 581
    goto/16 :goto_3

    .line 577
    :pswitch_d
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalInvokeDynamic(IILjavassist/bytecode/analysis/Frame;)V

    .line 578
    goto/16 :goto_3

    .line 574
    :pswitch_e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalInvokeIntfMethod(IILjavassist/bytecode/analysis/Frame;)V

    .line 575
    goto/16 :goto_3

    .line 571
    :pswitch_f
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalInvokeMethod(IILjavassist/bytecode/analysis/Frame;)V

    .line 572
    goto/16 :goto_3

    .line 566
    :pswitch_10
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalPutField(IILjavassist/bytecode/analysis/Frame;)V

    .line 567
    goto/16 :goto_3

    .line 563
    :pswitch_11
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalGetField(IILjavassist/bytecode/analysis/Frame;)V

    .line 564
    goto/16 :goto_3

    .line 560
    :pswitch_12
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalPutField(IILjavassist/bytecode/analysis/Frame;)V

    .line 561
    goto/16 :goto_3

    .line 557
    :pswitch_13
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalGetField(IILjavassist/bytecode/analysis/Frame;)V

    .line 558
    goto/16 :goto_3

    .line 555
    :pswitch_14
    goto/16 :goto_3

    .line 548
    :pswitch_15
    :try_start_0
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavassist/bytecode/analysis/Executor;->classPool:Ljavassist/ClassPool;

    invoke-static {v1, v2}, Ljavassist/bytecode/Descriptor;->getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v1

    .line 549
    .local v1, "returnType":Ljavassist/CtClass;
    invoke-static {v1}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v1    # "returnType":Ljavassist/CtClass;
    goto/16 :goto_3

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Ljavassist/NotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 544
    .end local v1    # "e":Ljavassist/NotFoundException;
    :pswitch_16
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 545
    goto/16 :goto_3

    .line 541
    :pswitch_17
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 542
    goto/16 :goto_3

    .line 538
    :pswitch_18
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 539
    goto/16 :goto_3

    .line 535
    :pswitch_19
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 536
    goto/16 :goto_3

    .line 530
    :pswitch_1a
    sget-object v1, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-virtual {p4, v2}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 531
    goto/16 :goto_3

    .line 527
    :pswitch_1b
    sget-object v1, Ljavassist/bytecode/analysis/Type;->RETURN_ADDRESS:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 528
    goto/16 :goto_3

    .line 525
    :pswitch_1c
    goto/16 :goto_3

    .line 521
    :pswitch_1d
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 522
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 523
    goto/16 :goto_3

    .line 516
    :pswitch_1e
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 517
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 518
    goto/16 :goto_3

    .line 508
    :pswitch_1f
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 509
    goto/16 :goto_3

    .line 496
    :pswitch_20
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 497
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 498
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 499
    goto/16 :goto_3

    .line 490
    :pswitch_21
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 491
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 492
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 493
    goto/16 :goto_3

    .line 484
    :pswitch_22
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 485
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 486
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 487
    goto/16 :goto_3

    .line 481
    :pswitch_23
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 482
    goto/16 :goto_3

    .line 475
    :pswitch_24
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 476
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 477
    goto/16 :goto_3

    .line 471
    :pswitch_25
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 472
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 473
    goto/16 :goto_3

    .line 467
    :pswitch_26
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 468
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 469
    goto/16 :goto_3

    .line 463
    :pswitch_27
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 464
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 465
    goto/16 :goto_3

    .line 459
    :pswitch_28
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 460
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 461
    goto/16 :goto_3

    .line 455
    :pswitch_29
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 456
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 457
    goto/16 :goto_3

    .line 451
    :pswitch_2a
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 452
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 453
    goto/16 :goto_3

    .line 447
    :pswitch_2b
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 448
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 449
    goto/16 :goto_3

    .line 443
    :pswitch_2c
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 444
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 445
    goto/16 :goto_3

    .line 439
    :pswitch_2d
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 440
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 441
    goto/16 :goto_3

    .line 435
    :pswitch_2e
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 436
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 437
    goto/16 :goto_3

    .line 431
    :pswitch_2f
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePop(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 432
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->simplePush(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 433
    goto/16 :goto_3

    .line 423
    :pswitch_30
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    .line 424
    .local v1, "index":I
    sget-object v2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 425
    sget-object v2, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, v2, p5}, Ljavassist/bytecode/analysis/Executor;->access(ILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 426
    goto/16 :goto_3

    .line 419
    .end local v1    # "index":I
    :pswitch_31
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 420
    goto/16 :goto_3

    .line 416
    :pswitch_32
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 417
    goto/16 :goto_3

    .line 413
    :pswitch_33
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 414
    goto/16 :goto_3

    .line 410
    :pswitch_34
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 411
    goto/16 :goto_3

    .line 407
    :pswitch_35
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 408
    goto/16 :goto_3

    .line 404
    :pswitch_36
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 405
    goto/16 :goto_3

    .line 399
    :pswitch_37
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 400
    goto/16 :goto_3

    .line 396
    :pswitch_38
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 397
    goto/16 :goto_3

    .line 393
    :pswitch_39
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 394
    goto/16 :goto_3

    .line 390
    :pswitch_3a
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 391
    goto/16 :goto_3

    .line 387
    :pswitch_3b
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 388
    goto/16 :goto_3

    .line 384
    :pswitch_3c
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalShift(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 385
    goto/16 :goto_3

    .line 379
    :pswitch_3d
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePeek(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 380
    goto/16 :goto_3

    .line 376
    :pswitch_3e
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePeek(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 377
    goto/16 :goto_3

    .line 373
    :pswitch_3f
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePeek(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 374
    goto/16 :goto_3

    .line 370
    :pswitch_40
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, p4}, Ljavassist/bytecode/analysis/Executor;->simplePeek(Ljavassist/bytecode/analysis/Frame;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavassist/bytecode/analysis/Executor;->verifyAssignable(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Type;)V

    .line 371
    goto/16 :goto_3

    .line 365
    :pswitch_41
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 366
    goto/16 :goto_3

    .line 362
    :pswitch_42
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 363
    goto/16 :goto_3

    .line 359
    :pswitch_43
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 360
    goto/16 :goto_3

    .line 356
    :pswitch_44
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 357
    goto/16 :goto_3

    .line 353
    :pswitch_45
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 354
    goto/16 :goto_3

    .line 350
    :pswitch_46
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 351
    goto/16 :goto_3

    .line 347
    :pswitch_47
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 348
    goto/16 :goto_3

    .line 344
    :pswitch_48
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 345
    goto/16 :goto_3

    .line 341
    :pswitch_49
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 342
    goto/16 :goto_3

    .line 338
    :pswitch_4a
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 339
    goto/16 :goto_3

    .line 335
    :pswitch_4b
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 336
    goto/16 :goto_3

    .line 332
    :pswitch_4c
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 333
    goto/16 :goto_3

    .line 329
    :pswitch_4d
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 330
    goto/16 :goto_3

    .line 326
    :pswitch_4e
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 327
    goto/16 :goto_3

    .line 323
    :pswitch_4f
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 324
    goto/16 :goto_3

    .line 320
    :pswitch_50
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 321
    goto/16 :goto_3

    .line 317
    :pswitch_51
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 318
    goto/16 :goto_3

    .line 314
    :pswitch_52
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 315
    goto/16 :goto_3

    .line 311
    :pswitch_53
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 312
    goto/16 :goto_3

    .line 308
    :pswitch_54
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalBinaryMath(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 309
    goto/16 :goto_3

    .line 297
    :pswitch_55
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    .line 298
    .local v1, "type1":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 299
    .local v2, "type2":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 301
    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 302
    invoke-virtual {p4, v2}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 303
    goto/16 :goto_3

    .line 300
    :cond_2
    new-instance v3, Ljavassist/bytecode/BadBytecode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Swap can not be used with category 2 values, pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    .end local v1    # "type1":Ljavassist/bytecode/analysis/Type;
    .end local v2    # "type2":Ljavassist/bytecode/analysis/Type;
    :pswitch_56
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result v1

    .line 283
    .local v1, "end":I
    add-int/lit8 v2, v0, -0x5d

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, -0x1

    .line 284
    .local v2, "insert":I
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p4, v3}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    .line 285
    .local v3, "type1":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    .line 286
    .local v4, "type2":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p4, v3}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 287
    invoke-virtual {p4, v4}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 288
    :goto_1
    if-le v1, v2, :cond_3

    .line 289
    add-int/lit8 v5, v1, -0x2

    invoke-virtual {p4, v5}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v5

    invoke-virtual {p4, v1, v5}, Ljavassist/bytecode/analysis/Frame;->setStack(ILjavassist/bytecode/analysis/Type;)V

    .line 290
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 292
    :cond_3
    invoke-virtual {p4, v2, v4}, Ljavassist/bytecode/analysis/Frame;->setStack(ILjavassist/bytecode/analysis/Type;)V

    .line 293
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p4, v5, v3}, Ljavassist/bytecode/analysis/Frame;->setStack(ILjavassist/bytecode/analysis/Type;)V

    .line 294
    goto/16 :goto_3

    .line 277
    .end local v1    # "end":I
    .end local v2    # "insert":I
    .end local v3    # "type1":Ljavassist/bytecode/analysis/Type;
    .end local v4    # "type2":Ljavassist/bytecode/analysis/Type;
    :pswitch_57
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 278
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 279
    goto/16 :goto_3

    .line 262
    :pswitch_58
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 263
    .local v2, "type":Ljavassist/bytecode/analysis/Type;
    sget-object v3, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-eq v2, v3, :cond_5

    .line 265
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->getTopIndex()I

    move-result v1

    .line 266
    .restart local v1    # "end":I
    add-int/lit8 v3, v0, -0x5a

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, -0x1

    .line 267
    .local v3, "insert":I
    invoke-virtual {p4, v2}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 269
    :goto_2
    if-le v1, v3, :cond_4

    .line 270
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p4, v4}, Ljavassist/bytecode/analysis/Frame;->getStack(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    invoke-virtual {p4, v1, v4}, Ljavassist/bytecode/analysis/Frame;->setStack(ILjavassist/bytecode/analysis/Type;)V

    .line 271
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 273
    :cond_4
    invoke-virtual {p4, v3, v2}, Ljavassist/bytecode/analysis/Frame;->setStack(ILjavassist/bytecode/analysis/Type;)V

    .line 274
    goto/16 :goto_3

    .line 264
    .end local v1    # "end":I
    .end local v3    # "insert":I
    :cond_5
    new-instance v3, Ljavassist/bytecode/BadBytecode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    .end local v2    # "type":Ljavassist/bytecode/analysis/Type;
    :pswitch_59
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    .line 254
    .restart local v2    # "type":Ljavassist/bytecode/analysis/Type;
    sget-object v3, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-eq v2, v3, :cond_6

    .line 257
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->peek()Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 258
    goto/16 :goto_3

    .line 255
    :cond_6
    new-instance v3, Ljavassist/bytecode/BadBytecode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    .end local v2    # "type":Ljavassist/bytecode/analysis/Type;
    :pswitch_5a
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    .line 250
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    .line 251
    goto/16 :goto_3

    .line 245
    :pswitch_5b
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->pop()Ljavassist/bytecode/analysis/Type;

    move-result-object v1

    sget-object v2, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    if-eq v1, v2, :cond_7

    goto/16 :goto_3

    .line 246
    :cond_7
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POP can not be used with a category 2 value, pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :pswitch_5c
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 243
    goto/16 :goto_3

    .line 237
    :pswitch_5d
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 238
    goto/16 :goto_3

    .line 234
    :pswitch_5e
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 235
    goto/16 :goto_3

    .line 231
    :pswitch_5f
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 232
    goto/16 :goto_3

    .line 228
    :pswitch_60
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 229
    goto/16 :goto_3

    .line 225
    :pswitch_61
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayStore(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 226
    goto/16 :goto_3

    .line 222
    :pswitch_62
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, v0, -0x4b

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 223
    goto/16 :goto_3

    .line 216
    :pswitch_63
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, v0, -0x47

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 217
    goto/16 :goto_3

    .line 210
    :pswitch_64
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, v0, -0x43

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 211
    goto/16 :goto_3

    .line 204
    :pswitch_65
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, v0, -0x3f

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 205
    goto/16 :goto_3

    .line 198
    :pswitch_66
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, v0, -0x3b

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 199
    goto/16 :goto_3

    .line 192
    :pswitch_67
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 193
    goto/16 :goto_3

    .line 189
    :pswitch_68
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 190
    goto/16 :goto_3

    .line 186
    :pswitch_69
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 187
    goto/16 :goto_3

    .line 183
    :pswitch_6a
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 184
    goto/16 :goto_3

    .line 180
    :pswitch_6b
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalStore(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 181
    goto/16 :goto_3

    .line 177
    :pswitch_6c
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 178
    goto/16 :goto_3

    .line 172
    :pswitch_6d
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 173
    goto/16 :goto_3

    .line 169
    :pswitch_6e
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 170
    goto/16 :goto_3

    .line 166
    :pswitch_6f
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 167
    goto/16 :goto_3

    .line 163
    :pswitch_70
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 164
    goto/16 :goto_3

    .line 160
    :pswitch_71
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalArrayLoad(Ljavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Frame;)V

    .line 161
    goto/16 :goto_3

    .line 157
    :pswitch_72
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, v0, -0x2a

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 158
    goto/16 :goto_3

    .line 151
    :pswitch_73
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, v0, -0x26

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 152
    goto/16 :goto_3

    .line 145
    :pswitch_74
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, v0, -0x22

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 146
    goto/16 :goto_3

    .line 139
    :pswitch_75
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, v0, -0x1e

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 140
    goto/16 :goto_3

    .line 133
    :pswitch_76
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, v0, -0x1a

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 134
    goto/16 :goto_3

    .line 127
    :pswitch_77
    sget-object v1, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 128
    goto/16 :goto_3

    .line 124
    :pswitch_78
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 125
    goto/16 :goto_3

    .line 121
    :pswitch_79
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 122
    goto :goto_3

    .line 118
    :pswitch_7a
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 119
    goto :goto_3

    .line 115
    :pswitch_7b
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p4, p5}, Ljavassist/bytecode/analysis/Executor;->evalLoad(Ljavassist/bytecode/analysis/Type;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 116
    goto :goto_3

    .line 112
    :pswitch_7c
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalLDC(ILjavassist/bytecode/analysis/Frame;)V

    .line 113
    goto :goto_3

    .line 108
    :pswitch_7d
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/analysis/Executor;->evalLDC(ILjavassist/bytecode/analysis/Frame;)V

    .line 109
    goto :goto_3

    .line 105
    :pswitch_7e
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 106
    goto :goto_3

    .line 100
    :pswitch_7f
    sget-object v1, Ljavassist/bytecode/analysis/Type;->DOUBLE:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 101
    sget-object v1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 102
    goto :goto_3

    .line 96
    :pswitch_80
    sget-object v1, Ljavassist/bytecode/analysis/Type;->FLOAT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 97
    goto :goto_3

    .line 90
    :pswitch_81
    sget-object v1, Ljavassist/bytecode/analysis/Type;->LONG:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 91
    sget-object v1, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 92
    goto :goto_3

    .line 86
    :pswitch_82
    sget-object v1, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 87
    goto :goto_3

    .line 77
    :pswitch_83
    sget-object v1, Ljavassist/bytecode/analysis/Type;->UNINIT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 78
    goto :goto_3

    .line 75
    :pswitch_84
    nop

    .line 626
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_81
        :pswitch_81
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_7f
        :pswitch_7f
        :pswitch_7e
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
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
        :pswitch_f
        :pswitch_f
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
