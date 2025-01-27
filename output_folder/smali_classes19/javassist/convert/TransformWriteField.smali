.class public final Ljavassist/convert/TransformWriteField;
.super Ljavassist/convert/TransformReadField;
.source "TransformWriteField.java"


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "field"    # Ljavassist/CtField;
    .param p3, "methodClassname"    # Ljava/lang/String;
    .param p4, "methodName"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/convert/TransformReadField;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 9
    .param p1, "tclazz"    # Ljavassist/CtClass;
    .param p2, "pos"    # I
    .param p3, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 37
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 38
    .local v0, "c":I
    const/16 v1, 0xb3

    const/16 v2, 0xb5

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_4

    .line 39
    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    .line 40
    .local v2, "index":I
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    iget-object v5, p0, Ljavassist/convert/TransformWriteField;->fieldClass:Ljavassist/CtClass;

    iget-object v6, p0, Ljavassist/convert/TransformWriteField;->fieldname:Ljava/lang/String;

    iget-boolean v7, p0, Ljavassist/convert/TransformWriteField;->isPrivate:Z

    move-object v4, p4

    move v8, v2

    invoke-static/range {v3 .. v8}, Ljavassist/convert/TransformWriteField;->isField(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "typedesc":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 43
    if-ne v0, v1, :cond_3

    .line 44
    invoke-virtual {p3}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    .line 45
    .local v1, "ca":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 46
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 47
    .local v4, "c0":C
    const/16 v5, 0x4a

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    const/16 v5, 0x44

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p3, v6}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result p2

    .line 58
    invoke-virtual {p3, v7, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 59
    const/16 v5, 0x5f

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p3, v5, v6}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 60
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v1, v5}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    const/4 v5, 0x3

    invoke-virtual {p3, v5}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result p2

    .line 50
    invoke-virtual {p3, v7, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 51
    const/16 v5, 0x5b

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {p3, v5, v7}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 52
    const/16 v5, 0x57

    add-int/lit8 v7, p2, 0x2

    invoke-virtual {p3, v5, v7}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 53
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 63
    :goto_1
    invoke-virtual {p3}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p2

    .line 66
    .end local v1    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v4    # "c0":C
    :cond_3
    iget-object v1, p0, Ljavassist/convert/TransformWriteField;->methodClassname:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, "mi":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Ljava/lang/Object;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "type":Ljava/lang/String;
    iget-object v5, p0, Ljavassist/convert/TransformWriteField;->methodName:Ljava/lang/String;

    invoke-virtual {p4, v1, v5, v4}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 69
    .local v5, "methodref":I
    const/16 v6, 0xb8

    invoke-virtual {p3, v6, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 70
    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p3, v5, v6}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 74
    .end local v1    # "mi":I
    .end local v2    # "index":I
    .end local v3    # "typedesc":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "methodref":I
    :cond_4
    return p2
.end method
