.class public abstract Ljavassist/convert/Transformer;
.super Ljava/lang/Object;
.source "Transformer.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# instance fields
.field private next:Ljavassist/convert/Transformer;


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;)V
    .locals 0
    .param p1, "t"    # Ljavassist/convert/Transformer;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ljavassist/convert/Transformer;->next:Ljavassist/convert/Transformer;

    .line 39
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    .line 49
    return-void
.end method

.method public extraLocals()I
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public extraStack()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getNext()Ljavassist/convert/Transformer;
    .locals 1

    .line 41
    iget-object v0, p0, Ljavassist/convert/Transformer;->next:Ljavassist/convert/Transformer;

    return-object v0
.end method

.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "clazz"    # Ljavassist/CtClass;
    .param p3, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 46
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavassist/convert/Transformer;->initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V

    .line 47
    return-void
.end method

.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attr"    # Ljavassist/bytecode/CodeAttribute;

    .line 43
    return-void
.end method

.method public abstract transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation
.end method
