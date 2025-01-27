.class public Ljavassist/bytecode/annotation/CharMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "CharMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(CLjavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 51
    const/16 v0, 0x43

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 52
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/CharMemberValue;->setValue(C)V

    .line 53
    return-void
.end method

.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 41
    const/16 v0, 0x43

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 42
    iput p1, p0, Ljavassist/bytecode/annotation/CharMemberValue;->valueIndex:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 59
    const/16 v0, 0x43

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/annotation/CharMemberValue;->setValue(C)V

    .line 61
    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0
    .param p1, "visitor"    # Ljavassist/bytecode/annotation/MemberValueVisitor;

    .line 108
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitCharMemberValue(Ljavassist/bytecode/annotation/CharMemberValue;)V

    .line 109
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

    .line 70
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()C
    .locals 2

    .line 77
    iget-object v0, p0, Ljavassist/bytecode/annotation/CharMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/CharMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "m"    # Ljava/lang/reflect/Method;

    .line 65
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/CharMemberValue;->getValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public setValue(C)V
    .locals 1
    .param p1, "newValue"    # C

    .line 84
    iget-object v0, p0, Ljavassist/bytecode/annotation/CharMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/annotation/CharMemberValue;->valueIndex:I

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/CharMemberValue;->getValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

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

    .line 100
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/CharMemberValue;->getValue()C

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(C)V

    .line 101
    return-void
.end method
