.class public Ljavassist/convert/TransformCallToStatic;
.super Ljavassist/convert/TransformCall;
.source "TransformCallToStatic.java"


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 1
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "origMethod"    # Ljavassist/CtMethod;
    .param p3, "substMethod"    # Ljavassist/CtMethod;

    .line 12
    invoke-direct {p0, p1, p2, p3}, Ljavassist/convert/TransformCall;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    .line 13
    invoke-virtual {p2}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformCallToStatic;->methodDescriptor:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method protected match(IILjavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)I
    .locals 4
    .param p1, "c"    # I
    .param p2, "pos"    # I
    .param p3, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "typedesc"    # I
    .param p5, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 18
    iget v0, p0, Ljavassist/convert/TransformCallToStatic;->newIndex:I

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Ljavassist/convert/TransformCallToStatic;->classname:Ljava/lang/String;

    iget-object v1, p0, Ljavassist/convert/TransformCallToStatic;->methodDescriptor:Ljava/lang/String;

    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->insertParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/convert/TransformCallToStatic;->newMethodname:Ljava/lang/String;

    invoke-virtual {p5, v1, v0}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 21
    .local v1, "nt":I
    iget-object v2, p0, Ljavassist/convert/TransformCallToStatic;->newClassname:Ljava/lang/String;

    invoke-virtual {p5, v2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v2

    .line 22
    .local v2, "ci":I
    invoke-virtual {p5, v2, v1}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result v3

    iput v3, p0, Ljavassist/convert/TransformCallToStatic;->newIndex:I

    .line 23
    iput-object p5, p0, Ljavassist/convert/TransformCallToStatic;->constPool:Ljavassist/bytecode/ConstPool;

    .line 25
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "nt":I
    .end local v2    # "ci":I
    :cond_0
    const/16 v0, 0xb8

    invoke-virtual {p3, v0, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 26
    iget v0, p0, Ljavassist/convert/TransformCallToStatic;->newIndex:I

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v0, v1}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 27
    return p2
.end method
