.class public final Ljavassist/convert/TransformNewClass;
.super Ljavassist/convert/Transformer;
.source "TransformNewClass.java"


# instance fields
.field private classname:Ljava/lang/String;

.field private nested:I

.field private newClassIndex:I

.field private newClassName:Ljava/lang/String;

.field private newMethodIndex:I

.field private newMethodNTIndex:I


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "newClassName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 33
    iput-object p2, p0, Ljavassist/convert/TransformNewClass;->classname:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Ljavassist/convert/TransformNewClass;->newClassName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attr"    # Ljavassist/bytecode/CodeAttribute;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/convert/TransformNewClass;->nested:I

    .line 40
    iput v0, p0, Ljavassist/convert/TransformNewClass;->newMethodIndex:I

    iput v0, p0, Ljavassist/convert/TransformNewClass;->newMethodNTIndex:I

    iput v0, p0, Ljavassist/convert/TransformNewClass;->newClassIndex:I

    .line 41
    return-void
.end method

.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 6
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "pos"    # I
    .param p3, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 55
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 56
    .local v0, "c":I
    const/16 v1, 0xbb

    if-ne v0, v1, :cond_2

    .line 57
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 58
    .local v1, "index":I
    invoke-virtual {p4, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavassist/convert/TransformNewClass;->classname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    add-int/lit8 v2, p2, 0x3

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    const/16 v3, 0x59

    if-ne v2, v3, :cond_1

    .line 63
    iget v2, p0, Ljavassist/convert/TransformNewClass;->newClassIndex:I

    if-nez v2, :cond_0

    .line 64
    iget-object v2, p0, Ljavassist/convert/TransformNewClass;->newClassName:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/convert/TransformNewClass;->newClassIndex:I

    .line 66
    :cond_0
    iget v2, p0, Ljavassist/convert/TransformNewClass;->newClassIndex:I

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p3, v2, v3}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 67
    iget v2, p0, Ljavassist/convert/TransformNewClass;->nested:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavassist/convert/TransformNewClass;->nested:I

    goto :goto_0

    .line 60
    :cond_1
    new-instance v2, Ljavassist/CannotCompileException;

    const-string v3, "NEW followed by no DUP was found"

    invoke-direct {v2, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    .end local v1    # "index":I
    :cond_2
    const/16 v1, 0xb7

    if-ne v0, v1, :cond_4

    .line 71
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 72
    .restart local v1    # "index":I
    iget-object v2, p0, Ljavassist/convert/TransformNewClass;->classname:Ljava/lang/String;

    invoke-virtual {p4, v2, v1}, Ljavassist/bytecode/ConstPool;->isConstructor(Ljava/lang/String;I)I

    move-result v2

    .line 73
    .local v2, "typedesc":I
    if-eqz v2, :cond_4

    iget v3, p0, Ljavassist/convert/TransformNewClass;->nested:I

    if-lez v3, :cond_4

    .line 74
    invoke-virtual {p4, v1}, Ljavassist/bytecode/ConstPool;->getMethodrefNameAndType(I)I

    move-result v3

    .line 75
    .local v3, "nt":I
    iget v4, p0, Ljavassist/convert/TransformNewClass;->newMethodNTIndex:I

    if-eq v4, v3, :cond_3

    .line 76
    iput v3, p0, Ljavassist/convert/TransformNewClass;->newMethodNTIndex:I

    .line 77
    iget v4, p0, Ljavassist/convert/TransformNewClass;->newClassIndex:I

    invoke-virtual {p4, v4, v3}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result v4

    iput v4, p0, Ljavassist/convert/TransformNewClass;->newMethodIndex:I

    .line 80
    :cond_3
    iget v4, p0, Ljavassist/convert/TransformNewClass;->newMethodIndex:I

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p3, v4, v5}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 81
    iget v4, p0, Ljavassist/convert/TransformNewClass;->nested:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavassist/convert/TransformNewClass;->nested:I

    .line 85
    .end local v1    # "index":I
    .end local v2    # "typedesc":I
    .end local v3    # "nt":I
    :cond_4
    :goto_0
    return p2
.end method
