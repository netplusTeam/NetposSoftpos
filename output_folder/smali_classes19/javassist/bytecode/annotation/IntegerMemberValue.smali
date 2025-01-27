.class public Ljavassist/bytecode/annotation/IntegerMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "IntegerMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 41
    const/16 v0, 0x49

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 42
    iput p1, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->valueIndex:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 65
    const/16 v0, 0x49

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/annotation/IntegerMemberValue;->setValue(I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;I)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "value"    # I

    .line 57
    const/16 v0, 0x49

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 58
    invoke-virtual {p0, p2}, Ljavassist/bytecode/annotation/IntegerMemberValue;->setValue(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0
    .param p1, "visitor"    # Ljavassist/bytecode/annotation/MemberValueVisitor;

    .line 114
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitIntegerMemberValue(Ljavassist/bytecode/annotation/IntegerMemberValue;)V

    .line 115
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

    .line 76
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()I
    .locals 2

    .line 83
    iget-object v0, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    return v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "m"    # Ljava/lang/reflect/Method;

    .line 71
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/IntegerMemberValue;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "newValue"    # I

    .line 90
    iget-object v0, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/annotation/IntegerMemberValue;->valueIndex:I

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/IntegerMemberValue;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V
    .locals 1
    .param p1, "writer"    # Ljavassist/bytecode/annotation/AnnotationsWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/IntegerMemberValue;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(I)V

    .line 107
    return-void
.end method
