.class Ljavassist/CtField$NewInitializer;
.super Ljavassist/CtField$Initializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewInitializer"
.end annotation


# instance fields
.field objectType:Ljavassist/CtClass;

.field stringParams:[Ljava/lang/String;

.field withConstructorParams:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1040
    invoke-direct {p0}, Ljavassist/CtField$Initializer;-><init>()V

    return-void
.end method

.method private getDescriptor()Ljava/lang/String;
    .locals 2

    .line 1073
    const-string v0, "(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/Object;)V"

    .line 1076
    .local v0, "desc3":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1077
    iget-boolean v1, p0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    if-eqz v1, :cond_0

    .line 1078
    const-string v1, "(Ljava/lang/Object;[Ljava/lang/Object;)V"

    return-object v1

    .line 1080
    :cond_0
    const-string v1, "(Ljava/lang/Object;)V"

    return-object v1

    .line 1082
    :cond_1
    iget-boolean v1, p0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    if-eqz v1, :cond_2

    .line 1083
    const-string v1, "(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/Object;)V"

    return-object v1

    .line 1085
    :cond_2
    const-string v1, "(Ljava/lang/Object;[Ljava/lang/String;)V"

    return-object v1
.end method


# virtual methods
.method compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .locals 4
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

    .line 1053
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1054
    iget-object v1, p0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    invoke-virtual {p3, v1}, Ljavassist/bytecode/Bytecode;->addNew(Ljavassist/CtClass;)V

    .line 1055
    const/16 v1, 0x59

    invoke-virtual {p3, v1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1056
    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1058
    iget-object v0, p0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1059
    const/4 v0, 0x4

    .local v0, "stacksize":I
    goto :goto_0

    .line 1061
    .end local v0    # "stacksize":I
    :cond_0
    invoke-virtual {p0, p3}, Ljavassist/CtField$NewInitializer;->compileStringParameter(Ljavassist/bytecode/Bytecode;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 1063
    .restart local v0    # "stacksize":I
    :goto_0
    iget-boolean v1, p0, Ljavassist/CtField$NewInitializer;->withConstructorParams:Z

    if-eqz v1, :cond_1

    .line 1064
    const/4 v1, 0x1

    invoke-static {p3, p4, v1}, Ljavassist/CtNewWrappedMethod;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1067
    :cond_1
    iget-object v1, p0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    invoke-direct {p0}, Ljavassist/CtField$NewInitializer;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    invoke-virtual {p3, v1, v3, v2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    sget-object v1, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, p2, v2}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    return v0
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 4
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "code"    # Ljavassist/bytecode/Bytecode;
    .param p4, "drv"    # Ljavassist/compiler/Javac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addNew(Ljavassist/CtClass;)V

    .line 1098
    const/16 v0, 0x59

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1100
    const/4 v0, 0x2

    .line 1101
    .local v0, "stacksize":I
    iget-object v1, p0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1102
    const-string v1, "()V"

    .local v1, "desc":Ljava/lang/String;
    goto :goto_0

    .line 1104
    .end local v1    # "desc":Ljava/lang/String;
    :cond_0
    const-string v1, "([Ljava/lang/String;)V"

    .line 1105
    .restart local v1    # "desc":Ljava/lang/String;
    invoke-virtual {p0, p3}, Ljavassist/CtField$NewInitializer;->compileStringParameter(Ljavassist/bytecode/Bytecode;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1108
    :goto_0
    iget-object v2, p0, Ljavassist/CtField$NewInitializer;->objectType:Ljavassist/CtClass;

    const-string v3, "<init>"

    invoke-virtual {p3, v2, v3, v1}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    sget-object v2, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, p2, v3}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    return v0
.end method

.method protected final compileStringParameter(Ljavassist/bytecode/Bytecode;)I
    .locals 3
    .param p1, "code"    # Ljavassist/bytecode/Bytecode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    array-length v0, v0

    .line 1117
    .local v0, "nparam":I
    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1118
    const-string v1, "java.lang.String"

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    .line 1119
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1120
    const/16 v2, 0x59

    invoke-virtual {p1, v2}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1121
    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1122
    iget-object v2, p0, Ljavassist/CtField$NewInitializer;->stringParams:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 1123
    const/16 v2, 0x53

    invoke-virtual {p1, v2}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1126
    .end local v1    # "j":I
    :cond_0
    const/4 v1, 0x4

    return v1
.end method
