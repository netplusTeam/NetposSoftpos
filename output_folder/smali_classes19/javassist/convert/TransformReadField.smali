.class public Ljavassist/convert/TransformReadField;
.super Ljavassist/convert/Transformer;
.source "TransformReadField.java"


# instance fields
.field protected fieldClass:Ljavassist/CtClass;

.field protected fieldname:Ljava/lang/String;

.field protected isPrivate:Z

.field protected methodClassname:Ljava/lang/String;

.field protected methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "field"    # Ljavassist/CtField;
    .param p3, "methodClassname"    # Ljava/lang/String;
    .param p4, "methodName"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 38
    invoke-virtual {p2}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformReadField;->fieldClass:Ljavassist/CtClass;

    .line 39
    invoke-virtual {p2}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformReadField;->fieldname:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Ljavassist/convert/TransformReadField;->methodClassname:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Ljavassist/convert/TransformReadField;->methodName:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Ljavassist/CtField;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v0

    iput-boolean v0, p0, Ljavassist/convert/TransformReadField;->isPrivate:Z

    .line 43
    return-void
.end method

.method static isField(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 3
    .param p0, "pool"    # Ljavassist/ClassPool;
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "fclass"    # Ljavassist/CtClass;
    .param p3, "fname"    # Ljava/lang/String;
    .param p4, "is_private"    # Z
    .param p5, "index"    # I

    .line 47
    invoke-virtual {p1, p5}, Ljavassist/bytecode/ConstPool;->getFieldrefName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    return-object v1

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p1, p5}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 52
    .local v0, "c":Ljavassist/CtClass;
    if-eq v0, p2, :cond_1

    if-nez p4, :cond_2

    invoke-static {v0, p2, p3}, Ljavassist/convert/TransformReadField;->isFieldInSuper(Ljavassist/CtClass;Ljavassist/CtClass;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    :cond_1
    invoke-virtual {p1, p5}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 55
    .end local v0    # "c":Ljavassist/CtClass;
    :catch_0
    move-exception v0

    :cond_2
    nop

    .line 56
    return-object v1
.end method

.method static isFieldInSuper(Ljavassist/CtClass;Ljavassist/CtClass;Ljava/lang/String;)Z
    .locals 3
    .param p0, "clazz"    # Ljavassist/CtClass;
    .param p1, "fclass"    # Ljavassist/CtClass;
    .param p2, "fname"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p1}, Ljavassist/CtClass;->subclassOf(Ljavassist/CtClass;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    .line 65
    .local v0, "f":Ljavassist/CtField;
    invoke-virtual {v0}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 67
    .end local v0    # "f":Ljavassist/CtField;
    :catch_0
    move-exception v0

    .line 68
    return v1
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

    .line 75
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 76
    .local v0, "c":I
    const/16 v1, 0xb2

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_2

    .line 77
    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    .line 78
    .local v2, "index":I
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    iget-object v5, p0, Ljavassist/convert/TransformReadField;->fieldClass:Ljavassist/CtClass;

    iget-object v6, p0, Ljavassist/convert/TransformReadField;->fieldname:Ljava/lang/String;

    iget-boolean v7, p0, Ljavassist/convert/TransformReadField;->isPrivate:Z

    move-object v4, p4

    move v8, v2

    invoke-static/range {v3 .. v8}, Ljavassist/convert/TransformReadField;->isField(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "typedesc":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 81
    if-ne v0, v1, :cond_1

    .line 82
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result p2

    .line 84
    invoke-virtual {p3, v1, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 85
    invoke-virtual {p3}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p2

    .line 88
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/lang/Object;)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "type":Ljava/lang/String;
    iget-object v4, p0, Ljavassist/convert/TransformReadField;->methodClassname:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v4

    .line 90
    .local v4, "mi":I
    iget-object v5, p0, Ljavassist/convert/TransformReadField;->methodName:Ljava/lang/String;

    invoke-virtual {p4, v4, v5, v1}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 91
    .local v5, "methodref":I
    const/16 v6, 0xb8

    invoke-virtual {p3, v6, p2}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 92
    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p3, v5, v6}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 93
    return p2

    .line 97
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "typedesc":Ljava/lang/String;
    .end local v4    # "mi":I
    .end local v5    # "methodref":I
    :cond_2
    return p2
.end method
