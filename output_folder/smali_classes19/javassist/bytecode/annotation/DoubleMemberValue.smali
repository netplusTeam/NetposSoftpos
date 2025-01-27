.class public Ljavassist/bytecode/annotation/DoubleMemberValue;
.super Ljavassist/bytecode/annotation/MemberValue;
.source "DoubleMemberValue.java"


# instance fields
.field valueIndex:I


# direct methods
.method public constructor <init>(DLjavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "d"    # D
    .param p3, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 52
    const/16 v0, 0x44

    invoke-direct {p0, v0, p3}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 53
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/annotation/DoubleMemberValue;->setValue(D)V

    .line 54
    return-void
.end method

.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 42
    const/16 v0, 0x44

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 43
    iput p1, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->valueIndex:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 60
    const/16 v0, 0x44

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/MemberValue;-><init>(CLjavassist/bytecode/ConstPool;)V

    .line 61
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/annotation/DoubleMemberValue;->setValue(D)V

    .line 62
    return-void
.end method


# virtual methods
.method public accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
    .locals 0
    .param p1, "visitor"    # Ljavassist/bytecode/annotation/MemberValueVisitor;

    .line 109
    invoke-interface {p1, p0}, Ljavassist/bytecode/annotation/MemberValueVisitor;->visitDoubleMemberValue(Ljavassist/bytecode/annotation/DoubleMemberValue;)V

    .line 110
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

    .line 71
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 78
    iget-object v0, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->valueIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getDoubleInfo(I)D

    move-result-wide v0

    return-wide v0
.end method

.method getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p3, "m"    # Ljava/lang/reflect/Method;

    .line 66
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/DoubleMemberValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "newValue"    # D

    .line 85
    iget-object v0, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->cp:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/annotation/DoubleMemberValue;->valueIndex:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/DoubleMemberValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

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

    .line 101
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/DoubleMemberValue;->getValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->constValueIndex(D)V

    .line 102
    return-void
.end method
