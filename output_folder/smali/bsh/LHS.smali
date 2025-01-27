.class Lbsh/LHS;
.super Ljava/lang/Object;
.source "LHS.java"

# interfaces
.implements Lbsh/ParserConstants;
.implements Ljava/io/Serializable;


# static fields
.field static final FIELD:I = 0x1

.field static final INDEX:I = 0x3

.field static final METHOD_EVAL:I = 0x4

.field static final PROPERTY:I = 0x2

.field static final VARIABLE:I


# instance fields
.field field:Ljava/lang/reflect/Field;

.field index:I

.field localVar:Z

.field nameSpace:Lbsh/NameSpace;

.field object:Ljava/lang/Object;

.field propName:Ljava/lang/String;

.field type:I

.field varName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbsh/NameSpace;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "nameSpace"    # Lbsh/NameSpace;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "localVar"    # Z

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lbsh/LHS;->type:I

    .line 80
    iput-boolean p3, p0, Lbsh/LHS;->localVar:Z

    .line 81
    iput-object p2, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    if-eqz p1, :cond_0

    .line 130
    const/4 v0, 0x3

    iput v0, p0, Lbsh/LHS;->type:I

    .line 131
    iput-object p1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    .line 132
    iput p2, p0, Lbsh/LHS;->index:I

    .line 133
    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constructed empty LHS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "propName"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-eqz p1, :cond_0

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Lbsh/LHS;->type:I

    .line 118
    iput-object p1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    .line 119
    iput-object p2, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    .line 120
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constructed empty LHS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-eqz p1, :cond_0

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lbsh/LHS;->type:I

    .line 105
    iput-object p1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    .line 106
    iput-object p2, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    .line 107
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constructed empty LHS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lbsh/LHS;->type:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    .line 94
    return-void
.end method


# virtual methods
.method public assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "strictJava"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 182
    const-string v0, "LHS ("

    iget v1, p0, Lbsh/LHS;->type:I

    if-nez v1, :cond_1

    .line 185
    iget-boolean v0, p0, Lbsh/LHS;->localVar:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    iget-object v1, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lbsh/NameSpace;->setLocalVariableOrProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto/16 :goto_3

    .line 188
    :cond_0
    iget-object v0, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    iget-object v1, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lbsh/NameSpace;->setVariableOrProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto/16 :goto_3

    .line 190
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 194
    :try_start_0
    iget-object v1, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    invoke-static {v1}, Lbsh/ReflectManager;->RMSetAccessible(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    invoke-static {p1}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object p1

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e3":Ljava/lang/IllegalArgumentException;
    instance-of v1, p1, Lbsh/Primitive;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lbsh/Primitive;

    .line 209
    invoke-virtual {v1}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 211
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument type mismatch. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_3

    const-string v4, "null"

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not assignable to field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    .line 213
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    .end local v0    # "e3":Ljava/lang/IllegalArgumentException;
    .end local v1    # "type":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e2":Ljava/lang/IllegalAccessException;
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    .line 204
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") can\'t access field: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    .end local v1    # "e2":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    .line 200
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") not a static field."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_4
    const/4 v0, 0x2

    const-string v2, "Assignment: "

    if-ne v1, v0, :cond_6

    .line 219
    invoke-static {}, Lbsh/CollectionManager;->getCollectionManager()Lbsh/CollectionManager;

    move-result-object v0

    .line 220
    .local v0, "cm":Lbsh/CollectionManager;
    iget-object v1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lbsh/CollectionManager;->isMap(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 221
    iget-object v1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget-object v2, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-static {p1}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lbsh/CollectionManager;->putInMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 224
    :cond_5
    :try_start_1
    iget-object v1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget-object v3, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lbsh/Reflect;->setObjectProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_3

    .line 229
    nop

    .line 230
    .end local v0    # "cm":Lbsh/CollectionManager;
    :goto_2
    goto :goto_3

    .line 226
    .restart local v0    # "cm":Lbsh/CollectionManager;
    :catch_3
    move-exception v1

    .line 227
    .local v1, "e":Lbsh/ReflectError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lbsh/ReflectError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 228
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    .end local v0    # "cm":Lbsh/CollectionManager;
    .end local v1    # "e":Lbsh/ReflectError;
    :cond_6
    const/4 v0, 0x3

    if-ne v1, v0, :cond_7

    .line 233
    :try_start_2
    iget-object v0, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget v1, p0, Lbsh/LHS;->index:I

    invoke-static {v0, v1, p1}, Lbsh/Reflect;->setIndex(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_2
    .catch Lbsh/UtilTargetError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 238
    nop

    .line 242
    :goto_3
    return-object p1

    .line 236
    :catch_4
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 235
    .local v0, "e1":Lbsh/UtilTargetError;
    throw v0

    .line 240
    .end local v0    # "e1":Lbsh/UtilTargetError;
    :cond_7
    new-instance v0, Lbsh/InterpreterError;

    const-string/jumbo v1, "unknown lhs"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 137
    iget v0, p0, Lbsh/LHS;->type:I

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    iget-object v1, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbsh/NameSpace;->getVariableOrProperty(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    :try_start_0
    iget-object v0, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 145
    .end local v0    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e2":Ljava/lang/IllegalAccessException;
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t read field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    .end local v0    # "e2":Ljava/lang/IllegalAccessException;
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 153
    invoke-static {}, Lbsh/CollectionManager;->getCollectionManager()Lbsh/CollectionManager;

    move-result-object v0

    .line 154
    .local v0, "cm":Lbsh/CollectionManager;
    iget-object v1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lbsh/CollectionManager;->isMap(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget-object v2, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbsh/CollectionManager;->getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 158
    :cond_2
    :try_start_1
    iget-object v1, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget-object v2, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-static {v1, v2}, Lbsh/Reflect;->getObjectProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 159
    :catch_1
    move-exception v1

    .line 160
    .local v1, "e":Lbsh/ReflectError;
    invoke-virtual {v1}, Lbsh/ReflectError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 161
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsh/LHS;->propName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    .end local v0    # "cm":Lbsh/CollectionManager;
    .end local v1    # "e":Lbsh/ReflectError;
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 167
    :try_start_2
    iget-object v0, p0, Lbsh/LHS;->object:Ljava/lang/Object;

    iget v1, p0, Lbsh/LHS;->index:I

    invoke-static {v0, v1}, Lbsh/Reflect;->getIndex(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 169
    :catch_2
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array access: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "LHS type"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LHS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    const-string v2, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "field = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lbsh/LHS;->field:Ljava/lang/reflect/Field;

    .line 247
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " varName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lbsh/LHS;->varName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nameSpace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    .line 249
    invoke-virtual {v2}, Lbsh/NameSpace;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
