.class public Ljavassist/bytecode/annotation/ByteMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "ByteMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(BLjavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 50
    const/16 v0, 0x42

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 51
    invoke-virtual {p0, p1}, Ljavassist/bytecode/annotation/ByteMemberValue;->setValue(B)V

    .line 52
    return-void
.end method

.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 40
    const/16 v0, 0x42

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 41
    iput p1, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->valueIndex:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 58
    const/16 v0, 0x42

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/annotation/ByteMemberValue;->setValue(B)V

    .line 60
    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0
    .param p1, "visitor"    # Ljavassist/bytecode/annotation/MemberValueVisitor;

    .line 107
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitByteMemberValue(Ljavassist/bytecode/annotation/ByteMemberValue;)V

    .line 108
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

    .line 69
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()B
    .locals 2

    .line 76
    iget-object v0, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "m"    # Ljava/lang/reflect/Method;

    .line 64
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ByteMemberValue;->getValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public setValue(B)V
    .locals 1
    .param p1, "newValue"    # B

    .line 83
    iget-object v0, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/annotation/ByteMemberValue;->valueIndex:I

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ByteMemberValue;->getValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

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

    .line 99
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/ByteMemberValue;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(B)V

    .line 100
    return-void
.end method
