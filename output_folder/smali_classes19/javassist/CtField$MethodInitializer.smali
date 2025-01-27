.class Ljavassist/CtField$MethodInitializer;
.super Ljavassist/CtField$NewInitializer;
.source "CtField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodInitializer"
.end annotation


# instance fields
.field methodName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1138
    invoke-direct {p0}, Ljavassist/CtField$NewInitializer;-><init>()V

    return-void
.end method

.method private getDescriptor()Ljava/lang/String;
    .locals 2

    .line 1171
    const-string v0, "(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/Object;)"

    .line 1174
    .local v0, "desc3":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1175
    iget-boolean v1, p0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    if-eqz v1, :cond_0

    .line 1176
    const-string v1, "(Ljava/lang/Object;[Ljava/lang/Object;)"

    return-object v1

    .line 1178
    :cond_0
    const-string v1, "(Ljava/lang/Object;)"

    return-object v1

    .line 1180
    :cond_1
    iget-boolean v1, p0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    if-eqz v1, :cond_2

    .line 1181
    const-string v1, "(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/Object;)"

    return-object v1

    .line 1183
    :cond_2
    const-string v1, "(Ljava/lang/Object;[Ljava/lang/String;)"

    return-object v1
.end method


# virtual methods
.method compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I
    .locals 5
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

    .line 1151
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1152
    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1154
    iget-object v0, p0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1155
    const/4 v0, 0x2

    .local v0, "stacksize":I
    goto :goto_0

    .line 1157
    .end local v0    # "stacksize":I
    :cond_0
    invoke-virtual {p0, p3}, Ljavassist/CtField$MethodInitializer;->compileStringParameter(Ljavassist/bytecode/Bytecode;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 1159
    .restart local v0    # "stacksize":I
    :goto_0
    iget-boolean v1, p0, Ljavassist/CtField$MethodInitializer;->withConstructorParams:Z

    if-eqz v1, :cond_1

    .line 1160
    const/4 v1, 0x1

    invoke-static {p3, p4, v1}, Ljavassist/CtNewWrappedMethod;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1163
    :cond_1
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "typeDesc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ljavassist/CtField$MethodInitializer;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1165
    .local v2, "mDesc":Ljava/lang/String;
    iget-object v3, p0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    iget-object v4, p0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    invoke-virtual {p3, v3, v4, v2}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    sget-object v3, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {p3, v3, p2, v1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    return v0
.end method

.method compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I
    .locals 6
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "code"    # Ljavassist/bytecode/Bytecode;
    .param p4, "drv"    # Ljavassist/compiler/Javac;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1195
    const/4 v0, 0x1

    .line 1196
    .local v0, "stacksize":I
    iget-object v1, p0, Ljavassist/CtField$MethodInitializer;->stringParams:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1197
    const-string v1, "()"

    .local v1, "desc":Ljava/lang/String;
    goto :goto_0

    .line 1199
    .end local v1    # "desc":Ljava/lang/String;
    :cond_0
    const-string v1, "([Ljava/lang/String;)"

    .line 1200
    .restart local v1    # "desc":Ljava/lang/String;
    invoke-virtual {p0, p3}, Ljavassist/CtField$MethodInitializer;->compileStringParameter(Ljavassist/bytecode/Bytecode;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1203
    :goto_0
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v2

    .line 1204
    .local v2, "typeDesc":Ljava/lang/String;
    iget-object v3, p0, Ljavassist/CtField$MethodInitializer;->objectType:Ljavassist/CtClass;

    iget-object v4, p0, Ljavassist/CtField$MethodInitializer;->methodName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v3, v4, v5}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    sget-object v3, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    invoke-virtual {p3, v3, p2, v2}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    return v0
.end method
