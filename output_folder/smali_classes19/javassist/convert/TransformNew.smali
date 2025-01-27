.class public final Ljavassist/convert/TransformNew;
.super Ljavassist/convert/Transformer;
.source "TransformNew.java"


# instance fields
.field private classname:Ljava/lang/String;

.field private nested:I

.field private trapClass:Ljava/lang/String;

.field private trapMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "trapClass"    # Ljava/lang/String;
    .param p4, "trapMethod"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 35
    iput-object p2, p0, Ljavassist/convert/TransformNew;->classname:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Ljavassist/convert/TransformNew;->trapClass:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Ljavassist/convert/TransformNew;->trapMethod:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private computeMethodref(ILjavassist/bytecode/ConstPool;)I
    .locals 4
    .param p1, "typedesc"    # I
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 102
    iget-object v0, p0, Ljavassist/convert/TransformNew;->trapClass:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "classIndex":I
    iget-object v1, p0, Ljavassist/convert/TransformNew;->trapMethod:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, "mnameIndex":I
    iget-object v2, p0, Ljavassist/convert/TransformNew;->classname:Ljava/lang/String;

    .line 106
    invoke-virtual {p2, p1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v2, v3}, Ljavassist/bytecode/Descriptor;->changeReturnType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p2, v2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result p1

    .line 107
    nop

    .line 108
    invoke-virtual {p2, v1, p1}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(II)I

    move-result v2

    .line 107
    invoke-virtual {p2, v0, v2}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result v2

    return v2
.end method


# virtual methods
.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attr"    # Ljavassist/bytecode/CodeAttribute;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/convert/TransformNew;->nested:I

    .line 43
    return-void
.end method

.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 5
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "pos"    # I
    .param p3, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 62
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 63
    .local v0, "c":I
    const/16 v1, 0xbb

    if-ne v0, v1, :cond_3

    .line 64
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 65
    .local v1, "index":I
    invoke-virtual {p4, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavassist/convert/TransformNew;->classname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    add-int/lit8 v2, p2, 0x3

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    const/16 v3, 0x59

    if-ne v2, v3, :cond_2

    .line 70
    const/4 v2, 0x0

    invoke-virtual {p3, v2, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 71
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p3, v2, v3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 72
    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p3, v2, v3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 73
    add-int/lit8 v3, p2, 0x3

    invoke-virtual {p3, v2, v3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 74
    iget v2, p0, Ljavassist/convert/TransformNew;->nested:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavassist/convert/TransformNew;->nested:I

    .line 76
    nop

    .line 77
    invoke-virtual {p3}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    const-string v3, "StackMapTable"

    invoke-virtual {v2, v3}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/StackMapTable;

    .line 78
    .local v2, "smt":Ljavassist/bytecode/StackMapTable;
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2, p2}, Ljavassist/bytecode/StackMapTable;->removeNew(I)V

    .line 81
    :cond_0
    nop

    .line 82
    invoke-virtual {p3}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v3

    const-string v4, "StackMap"

    invoke-virtual {v3, v4}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/StackMap;

    .line 83
    .local v3, "sm":Ljavassist/bytecode/StackMap;
    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {v3, p2}, Ljavassist/bytecode/StackMap;->removeNew(I)V

    .line 85
    .end local v2    # "smt":Ljavassist/bytecode/StackMapTable;
    .end local v3    # "sm":Ljavassist/bytecode/StackMap;
    :cond_1
    goto :goto_0

    .line 67
    :cond_2
    new-instance v2, Ljavassist/CannotCompileException;

    const-string v3, "NEW followed by no DUP was found"

    invoke-direct {v2, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    .end local v1    # "index":I
    :cond_3
    const/16 v1, 0xb7

    if-ne v0, v1, :cond_4

    .line 88
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 89
    .restart local v1    # "index":I
    iget-object v2, p0, Ljavassist/convert/TransformNew;->classname:Ljava/lang/String;

    invoke-virtual {p4, v2, v1}, Ljavassist/bytecode/ConstPool;->isConstructor(Ljava/lang/String;I)I

    move-result v2

    .line 90
    .local v2, "typedesc":I
    if-eqz v2, :cond_4

    iget v3, p0, Ljavassist/convert/TransformNew;->nested:I

    if-lez v3, :cond_4

    .line 91
    invoke-direct {p0, v2, p4}, Ljavassist/convert/TransformNew;->computeMethodref(ILjavassist/bytecode/ConstPool;)I

    move-result v3

    .line 92
    .local v3, "methodref":I
    const/16 v4, 0xb8

    invoke-virtual {p3, v4, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 93
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p3, v3, v4}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 94
    iget v4, p0, Ljavassist/convert/TransformNew;->nested:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavassist/convert/TransformNew;->nested:I

    .line 98
    .end local v1    # "index":I
    .end local v2    # "typedesc":I
    .end local v3    # "methodref":I
    :cond_4
    :goto_0
    return p2
.end method
