.class Lbsh/BSHType;
.super Lbsh/SimpleNode;
.source "BSHType.java"

# interfaces
.implements Lbsh/BshClassManager$Listener;


# instance fields
.field private arrayDims:I

.field private baseType:Ljava/lang/Class;

.field descriptor:Ljava/lang/String;

.field private type:Ljava/lang/Class;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 56
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    .line 57
    return-void
.end method

.method public static getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .param p0, "clas"    # Ljava/lang/Class;

    .line 195
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-string v0, "Z"

    return-object v0

    .line 196
    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-string v0, "C"

    return-object v0

    .line 197
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-string v0, "B"

    return-object v0

    .line 198
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-string v0, "S"

    return-object v0

    .line 199
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-string v0, "I"

    return-object v0

    .line 200
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-string v0, "J"

    return-object v0

    .line 201
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-string v0, "F"

    return-object v0

    .line 202
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-string v0, "D"

    return-object v0

    .line 203
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-string v0, "V"

    return-object v0

    .line 205
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "name":Ljava/lang/String;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_0

    .line 210
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 208
    :cond_a
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addArrayDimension()V
    .locals 1

    .line 64
    iget v0, p0, Lbsh/BSHType;->arrayDims:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/BSHType;->arrayDims:I

    .line 65
    return-void
.end method

.method public classLoaderChanged()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/BSHType;->type:Ljava/lang/Class;

    .line 190
    iput-object v0, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    .line 191
    return-void
.end method

.method public getArrayDims()I
    .locals 1

    .line 185
    iget v0, p0, Lbsh/BSHType;->arrayDims:I

    return v0
.end method

.method public getBaseType()Ljava/lang/Class;
    .locals 1

    .line 178
    iget-object v0, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    return-object v0
.end method

.method public getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 4
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lbsh/BSHType;->type:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 141
    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lbsh/BSHType;->getTypeNode()Lbsh/SimpleNode;

    move-result-object v0

    .line 145
    .local v0, "node":Lbsh/SimpleNode;
    instance-of v1, v0, Lbsh/BSHPrimitiveType;

    if-eqz v1, :cond_1

    .line 146
    move-object v1, v0

    check-cast v1, Lbsh/BSHPrimitiveType;

    invoke-virtual {v1}, Lbsh/BSHPrimitiveType;->getType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    goto :goto_0

    .line 148
    :cond_1
    move-object v1, v0

    check-cast v1, Lbsh/BSHAmbiguousName;

    invoke-virtual {v1, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    .line 151
    :goto_0
    iget v1, p0, Lbsh/BSHType;->arrayDims:I

    if-lez v1, :cond_2

    .line 155
    :try_start_0
    new-array v1, v1, [I

    .line 156
    .local v1, "dims":[I
    iget-object v2, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    .line 157
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lbsh/BSHType;->type:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "dims":[I
    .end local v2    # "obj":Ljava/lang/Object;
    goto :goto_1

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lbsh/EvalError;

    const-string v3, "Couldn\'t construct array type"

    invoke-direct {v2, v3, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    iput-object v1, p0, Lbsh/BSHType;->type:Ljava/lang/Class;

    .line 167
    :goto_1
    invoke-virtual {p2}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbsh/BshClassManager;->addListener(Lbsh/BshClassManager$Listener;)V

    .line 169
    iget-object v1, p0, Lbsh/BSHType;->type:Ljava/lang/Class;

    return-object v1
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "defaultPackage"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lbsh/BSHType;->descriptor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    return-object v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lbsh/BSHType;->getTypeNode()Lbsh/SimpleNode;

    move-result-object v0

    .line 88
    .local v0, "node":Lbsh/SimpleNode;
    instance-of v1, v0, Lbsh/BSHPrimitiveType;

    if-eqz v1, :cond_1

    .line 89
    move-object v1, v0

    check-cast v1, Lbsh/BSHPrimitiveType;

    iget-object v1, v1, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    invoke-static {v1}, Lbsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .local v1, "descriptor":Ljava/lang/String;
    goto/16 :goto_3

    .line 92
    .end local v1    # "descriptor":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Lbsh/BSHAmbiguousName;

    iget-object v1, v1, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    .line 93
    .local v1, "clasName":Ljava/lang/String;
    invoke-virtual {p2}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v2

    .line 98
    .local v2, "bcm":Lbsh/BshClassManager;
    invoke-virtual {v2, v1}, Lbsh/BshClassManager;->getClassBeingDefined(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "definingClass":Ljava/lang/String;
    const/4 v4, 0x0

    .line 101
    .local v4, "clas":Ljava/lang/Class;
    if-nez v3, :cond_2

    .line 104
    :try_start_0
    move-object v5, v0

    check-cast v5, Lbsh/BSHAmbiguousName;

    invoke-virtual {v5, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 106
    :catch_0
    move-exception v5

    .line 110
    :goto_0
    goto :goto_1

    .line 112
    :cond_2
    move-object v1, v3

    .line 114
    :goto_1
    if-eqz v4, :cond_3

    .line 117
    invoke-static {v4}, Lbsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .local v5, "descriptor":Ljava/lang/String;
    goto :goto_3

    .line 120
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_3
    const-string v5, ";"

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    const-string v8, "L"

    if-eqz p3, :cond_5

    invoke-static {v1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 123
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 124
    invoke-virtual {p3, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .restart local v5    # "descriptor":Ljava/lang/String;
    goto :goto_3

    .line 121
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_5
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 128
    .end local v2    # "bcm":Lbsh/BshClassManager;
    .end local v3    # "definingClass":Ljava/lang/String;
    .end local v4    # "clas":Ljava/lang/Class;
    .local v1, "descriptor":Ljava/lang/String;
    :goto_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget v3, p0, Lbsh/BSHType;->arrayDims:I

    if-ge v2, v3, :cond_6

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 131
    .end local v2    # "i":I
    :cond_6
    iput-object v1, p0, Lbsh/BSHType;->descriptor:Ljava/lang/String;

    .line 133
    return-object v1
.end method

.method getTypeNode()Lbsh/SimpleNode;
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHType;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    return-object v0
.end method
