.class public Ljavassist/bytecode/annotation/ClassMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "ClassMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 44
    const/16 v0, 0x63

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 45
    iput p1, p0, Ljavassist/bytecode/annotation/ClassMemberValue;->valueIndex:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 54
    const/16 v0, 0x63

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 55
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/ClassMemberValue;->setValue(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 63
    const/16 v0, 0x63

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 64
    const-string v0, "java.lang.Class"

    invoke-virtual {p0, v0}, Ljavassist/bytecode/annotation/ClassMemberValue;->setValue(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0
    .param p1, "visitor"    # Ljavassist/bytecode/annotation/MemberValueVisitor;

    .line 143
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitClassMemberValue(Ljavassist/bytecode/annotation/ClassMemberValue;)V

    .line 144
    return-void
.end method

.method getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 95
    const-string v0, "java.lang.Class"

    invoke-static {p1, v0}, Ljavassist/bytecode/annotation/ClassMemberValue;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ClassMemberValue;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "classname":Ljava/lang/String;
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 73
    :cond_0
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 75
    :cond_1
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 77
    :cond_2
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 79
    :cond_3
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 81
    :cond_4
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 83
    :cond_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 85
    :cond_6
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 86
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 87
    :cond_7
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 88
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 90
    :cond_8
    invoke-static {p1, v0}, Ljavassist/bytecode/annotation/ClassMemberValue;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 104
    iget-object v0, p0, Ljavassist/bytecode/annotation/ClassMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/ClassMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljavassist/bytecode/SignatureAttribute;->toTypeSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/SignatureAttribute$Type;->jvmTypeName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "newClassName"    # Ljava/lang/String;

    .line 118
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "setTo":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/bytecode/annotation/ClassMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/annotation/ClassMemberValue;->valueIndex:I

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ClassMemberValue;->getValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V
    .locals 2
    .param p1, "writer"    # Ljavassist/bytecode/annotation/AnnotationsWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Ljavassist/bytecode/annotation/ClassMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/ClassMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->classInfoIndex(Ljava/lang/String;)V

    .line 136
    return-void
.end method
