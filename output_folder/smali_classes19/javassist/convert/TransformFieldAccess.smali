.class public final Ljavassist/convert/TransformFieldAccess;
.super Ljavassist/convert/Transformer;
.source "TransformFieldAccess.java"


# instance fields
.field private constPool:Ljavassist/bytecode/ConstPool;

.field private fieldClass:Ljavassist/CtClass;

.field private fieldname:Ljava/lang/String;

.field private isPrivate:Z

.field private newClassname:Ljava/lang/String;

.field private newFieldname:Ljava/lang/String;

.field private newIndex:I


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "field"    # Ljavassist/CtField;
    .param p3, "newClassname"    # Ljava/lang/String;
    .param p4, "newFieldname"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Ljavassist/convert/Transformer;-><init>(Ljavassist/convert/Transformer;)V

    .line 40
    invoke-virtual {p2}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformFieldAccess;->fieldClass:Ljavassist/CtClass;

    .line 41
    invoke-virtual {p2}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformFieldAccess;->fieldname:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Ljavassist/CtField;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v0

    iput-boolean v0, p0, Ljavassist/convert/TransformFieldAccess;->isPrivate:Z

    .line 43
    iput-object p3, p0, Ljavassist/convert/TransformFieldAccess;->newClassname:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Ljavassist/convert/TransformFieldAccess;->newFieldname:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/convert/TransformFieldAccess;->constPool:Ljavassist/bytecode/ConstPool;

    .line 46
    return-void
.end method


# virtual methods
.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attr"    # Ljavassist/bytecode/CodeAttribute;

    .line 50
    iget-object v0, p0, Ljavassist/convert/TransformFieldAccess;->constPool:Ljavassist/bytecode/ConstPool;

    if-eq v0, p1, :cond_0

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/convert/TransformFieldAccess;->newIndex:I

    .line 52
    :cond_0
    return-void
.end method

.method public transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .locals 8
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "pos"    # I
    .param p3, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 64
    invoke-virtual {p3, p2}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 65
    .local v0, "c":I
    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb3

    if-ne v0, v1, :cond_2

    .line 67
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 68
    .local v1, "index":I
    nop

    .line 69
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    iget-object v4, p0, Ljavassist/convert/TransformFieldAccess;->fieldClass:Ljavassist/CtClass;

    iget-object v5, p0, Ljavassist/convert/TransformFieldAccess;->fieldname:Ljava/lang/String;

    iget-boolean v6, p0, Ljavassist/convert/TransformFieldAccess;->isPrivate:Z

    move-object v3, p4

    move v7, v1

    invoke-static/range {v2 .. v7}, Ljavassist/convert/TransformReadField;->isField(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "typedesc":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 72
    iget v3, p0, Ljavassist/convert/TransformFieldAccess;->newIndex:I

    if-nez v3, :cond_1

    .line 73
    iget-object v3, p0, Ljavassist/convert/TransformFieldAccess;->newFieldname:Ljava/lang/String;

    invoke-virtual {p4, v3, v2}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 75
    .local v3, "nt":I
    iget-object v4, p0, Ljavassist/convert/TransformFieldAccess;->newClassname:Ljava/lang/String;

    .line 76
    invoke-virtual {p4, v4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v4

    .line 75
    invoke-virtual {p4, v4, v3}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(II)I

    move-result v4

    iput v4, p0, Ljavassist/convert/TransformFieldAccess;->newIndex:I

    .line 77
    iput-object p4, p0, Ljavassist/convert/TransformFieldAccess;->constPool:Ljavassist/bytecode/ConstPool;

    .line 80
    .end local v3    # "nt":I
    :cond_1
    iget v3, p0, Ljavassist/convert/TransformFieldAccess;->newIndex:I

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p3, v3, v4}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 84
    .end local v1    # "index":I
    .end local v2    # "typedesc":Ljava/lang/String;
    :cond_2
    return p2
.end method
