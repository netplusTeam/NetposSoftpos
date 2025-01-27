.class public abstract Ljavassist/CtField$Initializer;
.super Ljava/lang/Object;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Initializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byCall(Ljavassist/CtClass;Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 2
    .param p0, "methodClass"    # Ljavassist/CtClass;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 703
    new-instance v0, Ljavassist/CtField$MethodInitializer;

    invoke-direct {v0}, Ljavassist/CtField$MethodInitializer;-><init>()V

    .line 704
    .local v0, "i":Ljavassist/CtField$MethodInitializer;
    iput-object p0, v0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    .line 705
    iput-object p1, v0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    .line 706
    const/4 v1, 0x0

    iput-object v1, v0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    .line 707
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    .line 708
    return-object v0
.end method

.method public static byCall(Ljavassist/CtClass;Ljava/lang/String;[Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 2
    .param p0, "methodClass"    # Ljavassist/CtClass;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "stringParams"    # [Ljava/lang/String;

    .line 737
    new-instance v0, Ljavassist/CtField$MethodInitializer;

    invoke-direct {v0}, Ljavassist/CtField$MethodInitializer;-><init>()V

    .line 738
    .local v0, "i":Ljavassist/CtField$MethodInitializer;
    iput-object p0, v0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    .line 739
    iput-object p1, v0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    .line 740
    iput-object p2, v0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    .line 741
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    .line 742
    return-object v0
.end method

.method public static byCallWithParams(Ljavassist/CtClass;Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 2
    .param p0, "methodClass"    # Ljavassist/CtClass;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 769
    new-instance v0, Ljavassist/CtField$MethodInitializer;

    invoke-direct {v0}, Ljavassist/CtField$MethodInitializer;-><init>()V

    .line 770
    .local v0, "i":Ljavassist/CtField$MethodInitializer;
    iput-object p0, v0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    .line 771
    iput-object p1, v0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    .line 772
    const/4 v1, 0x0

    iput-object v1, v0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    .line 773
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    .line 774
    return-object v0
.end method

.method public static byCallWithParams(Ljavassist/CtClass;Ljava/lang/String;[Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 2
    .param p0, "methodClass"    # Ljavassist/CtClass;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "stringParams"    # [Ljava/lang/String;

    .line 805
    new-instance v0, Ljavassist/CtField$MethodInitializer;

    invoke-direct {v0}, Ljavassist/CtField$MethodInitializer;-><init>()V

    .line 806
    .local v0, "i":Ljavassist/CtField$MethodInitializer;
    iput-object p0, v0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    .line 807
    iput-object p1, v0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    .line 808
    iput-object p2, v0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    .line 809
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    .line 810
    return-object v0
.end method

.method public static byExpr(Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .line 846
    new-instance v0, Ljavassist/CtField$CodeInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$CodeInitializer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static byExpr(Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField$Initializer;
    .locals 1
    .param p0, "source"    # Ljavassist/compiler/ast/ASTree;

    .line 850
    new-instance v0, Ljavassist/CtField$PtreeInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$PtreeInitializer;-><init>(Ljavassist/compiler/ast/ASTree;)V

    return-object v0
.end method

.method public static byNew(Ljavassist/CtClass;)Ljavassist/CtField$Initializer;
    .locals 2
    .param p0, "objectType"    # Ljavassist/CtClass;

    .line 590
    new-instance v0, Ljavassist/CtField$NewInitializer;

    invoke-direct {v0}, Ljavassist/CtField$NewInitializer;-><init>()V

    .line 591
    .local v0, "i":Ljavassist/CtField$NewInitializer;
    iput-object p0, v0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    .line 592
    const/4 v1, 0x0

    iput-object v1, v0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    .line 593
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    .line 594
    return-object v0
.end method

.method public static byNew(Ljavassist/CtClass;[Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 2
    .param p0, "objectType"    # Ljavassist/CtClass;
    .param p1, "stringParams"    # [Ljava/lang/String;

    .line 617
    new-instance v0, Ljavassist/CtField$NewInitializer;

    invoke-direct {v0}, Ljavassist/CtField$NewInitializer;-><init>()V

    .line 618
    .local v0, "i":Ljavassist/CtField$NewInitializer;
    iput-object p0, v0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    .line 619
    iput-object p1, v0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    .line 620
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    .line 621
    return-object v0
.end method

.method public static byNewArray(Ljavassist/CtClass;I)Ljavassist/CtField$Initializer;
    .locals 2
    .param p0, "type"    # Ljavassist/CtClass;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 824
    new-instance v0, Ljavassist/CtField$ArrayInitializer;

    invoke-virtual {p0}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavassist/CtField$ArrayInitializer;-><init>(Ljavassist/CtClass;I)V

    return-object v0
.end method

.method public static byNewArray(Ljavassist/CtClass;[I)Ljavassist/CtField$Initializer;
    .locals 1
    .param p0, "type"    # Ljavassist/CtClass;
    .param p1, "sizes"    # [I

    .line 837
    new-instance v0, Ljavassist/CtField$MultiArrayInitializer;

    invoke-direct {v0, p0, p1}, Ljavassist/CtField$MultiArrayInitializer;-><init>(Ljavassist/CtClass;[I)V

    return-object v0
.end method

.method public static byNewWithParams(Ljavassist/CtClass;)Ljavassist/CtField$Initializer;
    .locals 2
    .param p0, "objectType"    # Ljavassist/CtClass;

    .line 645
    new-instance v0, Ljavassist/CtField$NewInitializer;

    invoke-direct {v0}, Ljavassist/CtField$NewInitializer;-><init>()V

    .line 646
    .local v0, "i":Ljavassist/CtField$NewInitializer;
    iput-object p0, v0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    .line 647
    const/4 v1, 0x0

    iput-object v1, v0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    .line 648
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    .line 649
    return-object v0
.end method

.method public static byNewWithParams(Ljavassist/CtClass;[Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 2
    .param p0, "objectType"    # Ljavassist/CtClass;
    .param p1, "stringParams"    # [Ljava/lang/String;

    .line 675
    new-instance v0, Ljavassist/CtField$NewInitializer;

    invoke-direct {v0}, Ljavassist/CtField$NewInitializer;-><init>()V

    .line 676
    .local v0, "i":Ljavassist/CtField$NewInitializer;
    iput-object p0, v0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    .line 677
    iput-object p1, v0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    .line 678
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    .line 679
    return-object v0
.end method

.method public static byParameter(I)Ljavassist/CtField$Initializer;
    .locals 1
    .param p0, "nth"    # I

    .line 570
    new-instance v0, Ljavassist/CtField$ParamInitializer;

    invoke-direct {v0}, Ljavassist/CtField$ParamInitializer;-><init>()V

    .line 571
    .local v0, "i":Ljavassist/CtField$ParamInitializer;
    iput p0, v0, Ljavassist/CtField$ParamInitializer;->nthParam:I

    .line 572
    return-object v0
.end method

.method public static constant(D)Ljavassist/CtField$Initializer;
    .locals 1
    .param p0, "d"    # D

    .line 544
    new-instance v0, Ljavassist/CtField$DoubleInitializer;

    invoke-direct {v0, p0, p1}, Ljavassist/CtField$DoubleInitializer;-><init>(D)V

    return-object v0
.end method

.method public static constant(F)Ljavassist/CtField$Initializer;
    .locals 1
    .param p0, "l"    # F

    .line 536
    new-instance v0, Ljavassist/CtField$FloatInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$FloatInitializer;-><init>(F)V

    return-object v0
.end method

.method public static constant(I)Ljavassist/CtField$Initializer;
    .locals 1
    .param p0, "i"    # I

    .line 512
    new-instance v0, Ljavassist/CtField$IntInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$IntInitializer;-><init>(I)V

    return-object v0
.end method

.method public static constant(J)Ljavassist/CtField$Initializer;
    .locals 1
    .param p0, "l"    # J

    .line 528
    new-instance v0, Ljavassist/CtField$LongInitializer;

    invoke-direct {v0, p0, p1}, Ljavassist/CtField$LongInitializer;-><init>(J)V

    return-object v0
.end method

.method public static constant(Ljava/lang/String;)Ljavassist/CtField$Initializer;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 552
    new-instance v0, Ljavassist/CtField$StringInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$StringInitializer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static constant(Z)Ljavassist/CtField$Initializer;
    .locals 1
    .param p0, "b"    # Z

    .line 520
    new-instance v0, Ljavassist/CtField$IntInitializer;

    invoke-direct {v0, p0}, Ljavassist/CtField$IntInitializer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method check(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 855
    return-void
.end method

.method abstract compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation
.end method

.method abstract compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation
.end method

.method getConstantValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)I
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "type"    # Ljavassist/CtClass;

    .line 868
    const/4 v0, 0x0

    return v0
.end method
