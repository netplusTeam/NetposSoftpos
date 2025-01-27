.class Ljavassist/CtField$ArrayInitializer;
.super Ljavassist/CtField$Initializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayInitializer"
.end annotation


# instance fields
.field size:I

.field type:Ljavassist/CtClass;


# direct methods
.method constructor <init>(Ljavassist/CtClass;I)V
    .locals 0
    .param p1, "t"    # Ljavassist/CtClass;
    .param p2, "s"    # I

    .line 1402
    invoke-direct {p0}, Ljavassist/CtField$Initializer;-><init>()V

    iput-object p1, p0, Ljavassist/CtField$ArrayInitializer;->type:Ljavassist/CtClass;

    iput p2, p0, Ljavassist/CtField$ArrayInitializer;->size:I

    return-void
.end method

.method private addNewarray(Ljavassist/bytecode/Bytecode;)V
    .locals 2
    .param p1, "code"    # Ljavassist/bytecode/Bytecode;

    .line 1405
    iget-object v0, p0, Ljavassist/CtField$ArrayInitializer;->type:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Ljavassist/CtField$ArrayInitializer;->type:Ljavassist/CtClass;

    check-cast v0, Ljavassist/CtPrimitiveType;

    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getArrayType()I

    move-result v0

    iget v1, p0, Ljavassist/CtField$ArrayInitializer;->size:I

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/Bytecode;->addNewarray(II)V

    goto :goto_0

    .line 1409
    :cond_0
    iget-object v0, p0, Ljavassist/CtField$ArrayInitializer;->type:Ljavassist/CtClass;

    iget v1, p0, Ljavassist/CtField$ArrayInitializer;->size:I

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljavassist/CtClass;I)V

    .line 1410
    :goto_0
    return-void
.end method


# virtual methods
.method compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .locals 2
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "code"    # Ljavassist/bytecode/Bytecode;
    .param p4, "parameters"    # [Ljavassist/CtClass;
    .param p5, "drv"    # Ljavassist/compiler/Javac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1417
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1418
    invoke-direct {p0, p3}, Ljavassist/CtField$ArrayInitializer;->addNewarray(Ljavassist/bytecode/Bytecode;)V

    .line 1419
    sget-object v0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, p2, v1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const/4 v0, 0x2

    return v0
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 2
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "code"    # Ljavassist/bytecode/Bytecode;
    .param p4, "drv"    # Ljavassist/compiler/Javac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1427
    invoke-direct {p0, p3}, Ljavassist/CtField$ArrayInitializer;->addNewarray(Ljavassist/bytecode/Bytecode;)V

    .line 1428
    sget-object v0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, p2, v1}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const/4 v0, 0x1

    return v0
.end method
