.class Lbsh/BSHPrimarySuffix;
.super Lbsh/SimpleNode;
.source "BSHPrimarySuffix.java"


# static fields
.field public static final CLASS:I = 0x0

.field public static final INDEX:I = 0x1

.field public static final NAME:I = 0x2

.field public static final PROPERTY:I = 0x3


# instance fields
.field public field:Ljava/lang/String;

.field index:Ljava/lang/Object;

.field public operation:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 47
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private doIndex(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toLHS"    # Z
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;,
            Lbsh/ReflectError;
        }
    .end annotation

    .line 239
    invoke-static {p1, p3, p4, p0}, Lbsh/BSHPrimarySuffix;->getIndexAux(Ljava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;Lbsh/SimpleNode;)I

    move-result v0

    .line 240
    .local v0, "index":I
    if-eqz p2, :cond_0

    .line 241
    new-instance v1, Lbsh/LHS;

    invoke-direct {v1, p1, v0}, Lbsh/LHS;-><init>(Ljava/lang/Object;I)V

    return-object v1

    .line 244
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Lbsh/Reflect;->getIndex(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Lbsh/UtilEvalError;
    invoke-virtual {v1, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v2

    throw v2
.end method

.method private doName(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toLHS"    # Z
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;,
            Lbsh/ReflectError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 145
    :try_start_0
    iget-object v0, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    const-string v1, "length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    if-nez p2, :cond_0

    .line 150
    new-instance v0, Lbsh/Primitive;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Lbsh/EvalError;

    const-string v1, "Can\'t assign array length"

    invoke-direct {v0, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    .end local p1    # "obj":Ljava/lang/Object;
    .end local p2    # "toLHS":Z
    .end local p3    # "callstack":Lbsh/CallStack;
    .end local p4    # "interpreter":Lbsh/Interpreter;
    throw v0

    .line 153
    .restart local p1    # "obj":Ljava/lang/Object;
    .restart local p2    # "toLHS":Z
    .restart local p3    # "callstack":Lbsh/CallStack;
    .restart local p4    # "interpreter":Lbsh/Interpreter;
    :cond_1
    invoke-virtual {p0}, Lbsh/BSHPrimarySuffix;->jjtGetNumChildren()I

    move-result v0

    if-nez v0, :cond_3

    .line 154
    if-eqz p2, :cond_2

    .line 155
    iget-object v0, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-static {p1, v0}, Lbsh/Reflect;->getLHSObjectField(Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v0

    return-object v0

    .line 157
    :cond_2
    iget-object v0, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-static {p1, v0}, Lbsh/Reflect;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 161
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHPrimarySuffix;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHArguments;

    invoke-virtual {v0, p3, p4}, Lbsh/BSHArguments;->getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_2

    .line 170
    .local v3, "oa":[Ljava/lang/Object;
    :try_start_1
    iget-object v2, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lbsh/Reflect;->invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method Invocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 186
    .local v1, "te":Ljava/lang/Throwable;
    const/4 v2, 0x1

    .line 187
    .local v2, "isNative":Z
    instance-of v4, v1, Lbsh/EvalError;

    if-eqz v4, :cond_5

    .line 188
    instance-of v4, v1, Lbsh/TargetError;

    if-eqz v4, :cond_4

    .line 189
    move-object v4, v1

    check-cast v4, Lbsh/TargetError;

    invoke-virtual {v4}, Lbsh/TargetError;->inNativeCode()Z

    move-result v4

    move v2, v4

    goto :goto_0

    .line 191
    :cond_4
    const/4 v2, 0x0

    .line 193
    :cond_5
    :goto_0
    new-instance v10, Lbsh/TargetError;

    move-object v4, v10

    move-object v6, v1

    move-object v7, p0

    move-object v8, p3

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    .end local p1    # "obj":Ljava/lang/Object;
    .end local p2    # "toLHS":Z
    .end local p3    # "callstack":Lbsh/CallStack;
    .end local p4    # "interpreter":Lbsh/Interpreter;
    throw v10

    .line 172
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "te":Ljava/lang/Throwable;
    .end local v2    # "isNative":Z
    .end local v5    # "msg":Ljava/lang/String;
    .restart local p1    # "obj":Ljava/lang/Object;
    .restart local p2    # "toLHS":Z
    .restart local p3    # "callstack":Lbsh/CallStack;
    .restart local p4    # "interpreter":Lbsh/Interpreter;
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Lbsh/ReflectError;
    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in method invocation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 174
    invoke-virtual {v0}, Lbsh/ReflectError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    .end local p1    # "obj":Ljava/lang/Object;
    .end local p2    # "toLHS":Z
    .end local p3    # "callstack":Lbsh/CallStack;
    .end local p4    # "interpreter":Lbsh/Interpreter;
    throw v1
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_2

    .line 196
    .end local v0    # "e":Lbsh/ReflectError;
    .end local v3    # "oa":[Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    .restart local p2    # "toLHS":Z
    .restart local p3    # "callstack":Lbsh/CallStack;
    .restart local p4    # "interpreter":Lbsh/Interpreter;
    :catch_2
    move-exception v0

    .line 197
    .local v0, "e":Lbsh/UtilEvalError;
    invoke-virtual {v0, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v1

    throw v1
.end method

.method private doProperty(ZLjava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6
    .param p1, "toLHS"    # Z
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 258
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p2, v0, :cond_5

    .line 263
    instance-of v0, p2, Lbsh/Primitive;

    if-nez v0, :cond_4

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHPrimarySuffix;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p3, p4}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 275
    if-eqz p1, :cond_0

    .line 276
    new-instance v1, Lbsh/LHS;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lbsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 279
    :cond_0
    invoke-static {}, Lbsh/CollectionManager;->getCollectionManager()Lbsh/CollectionManager;

    move-result-object v1

    .line 280
    .local v1, "cm":Lbsh/CollectionManager;
    invoke-virtual {v1, p2}, Lbsh/CollectionManager;->isMap(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    invoke-virtual {v1, p2, v0}, Lbsh/CollectionManager;->getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 283
    .local v2, "val":Ljava/lang/Object;
    if-nez v2, :cond_1

    sget-object v3, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    return-object v3

    .line 287
    .end local v2    # "val":Ljava/lang/Object;
    :cond_2
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {p2, v2}, Lbsh/Reflect;->getObjectProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 293
    :catch_0
    move-exception v2

    .line 295
    .local v2, "e":Lbsh/ReflectError;
    new-instance v3, Lbsh/EvalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    .line 289
    .end local v2    # "e":Lbsh/ReflectError;
    :catch_1
    move-exception v2

    .line 291
    .local v2, "e":Lbsh/UtilEvalError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v3

    throw v3

    .line 271
    .end local v1    # "cm":Lbsh/CollectionManager;
    .end local v2    # "e":Lbsh/UtilEvalError;
    :cond_3
    new-instance v1, Lbsh/EvalError;

    const-string v2, "Property expression must be a String or identifier."

    invoke-direct {v1, v2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    .line 264
    .end local v0    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v0, Lbsh/EvalError;

    const-string v1, "Attempt to access property on a primitive"

    invoke-direct {v0, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    .line 259
    :cond_5
    new-instance v0, Lbsh/EvalError;

    const-string v1, "Attempt to access property on undefined variable or class name"

    invoke-direct {v0, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
.end method

.method static getIndexAux(Ljava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;Lbsh/SimpleNode;)I
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "callerInfo"    # Lbsh/SimpleNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const/4 v0, 0x0

    .line 214
    :try_start_0
    invoke-virtual {p3, v0}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, "indexVal":Ljava/lang/Object;
    instance-of v1, v0, Lbsh/Primitive;

    if-nez v1, :cond_0

    .line 217
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 219
    :cond_0
    move-object v1, v0

    check-cast v1, Lbsh/Primitive;

    invoke-virtual {v1}, Lbsh/Primitive;->intValue()I

    move-result v1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 225
    .local v0, "index":I
    nop

    .line 227
    return v0

    .line 220
    .end local v0    # "index":I
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Lbsh/UtilEvalError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 222
    const-string v1, "Arrays may only be indexed by integer types."

    invoke-virtual {v0, v1, p3, p1}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v1

    throw v1

    .line 209
    .end local v0    # "e":Lbsh/UtilEvalError;
    :cond_1
    new-instance v0, Lbsh/EvalError;

    const-string v1, "Not an array"

    invoke-direct {v0, v1, p3, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
.end method


# virtual methods
.method public doSuffix(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toLHS"    # Z
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 69
    iget v0, p0, Lbsh/BSHPrimarySuffix;->operation:I

    if-nez v0, :cond_2

    .line 70
    instance-of v0, p1, Lbsh/BSHType;

    if-eqz v0, :cond_1

    .line 71
    if-nez p2, :cond_0

    .line 74
    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    .line 75
    .local v0, "namespace":Lbsh/NameSpace;
    move-object v1, p1

    check-cast v1, Lbsh/BSHType;

    invoke-virtual {v1, p3, p4}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 72
    .end local v0    # "namespace":Lbsh/NameSpace;
    :cond_0
    new-instance v0, Lbsh/EvalError;

    const-string v1, "Can\'t assign .class"

    invoke-direct {v0, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Lbsh/EvalError;

    const-string v1, "Attempt to use .class suffix on non class."

    invoke-direct {v0, v1, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    .line 93
    :cond_2
    instance-of v0, p1, Lbsh/SimpleNode;

    if-eqz v0, :cond_4

    .line 94
    instance-of v0, p1, Lbsh/BSHAmbiguousName;

    if-eqz v0, :cond_3

    .line 95
    move-object v0, p1

    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p3, p4}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 97
    :cond_3
    move-object v0, p1

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p3, p4}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_4
    instance-of v0, p1, Lbsh/LHS;

    if-eqz v0, :cond_5

    .line 101
    :try_start_0
    move-object v0, p1

    check-cast v0, Lbsh/LHS;

    invoke-virtual {v0}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lbsh/UtilEvalError;
    invoke-virtual {v0, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v1

    throw v1

    .line 108
    .end local v0    # "e":Lbsh/UtilEvalError;
    :cond_5
    :goto_0
    :try_start_1
    iget v0, p0, Lbsh/BSHPrimarySuffix;->operation:I

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Lbsh/InterpreterError;

    goto :goto_1

    .line 117
    :pswitch_0
    invoke-direct {p0, p2, p1, p3, p4}, Lbsh/BSHPrimarySuffix;->doProperty(ZLjava/lang/Object;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 114
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lbsh/BSHPrimarySuffix;->doName(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lbsh/BSHPrimarySuffix;->doIndex(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 120
    :goto_1
    const-string v1, "Unknown suffix type"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Ljava/lang/Object;
    .end local p2    # "toLHS":Z
    .end local p3    # "callstack":Lbsh/CallStack;
    .end local p4    # "interpreter":Lbsh/Interpreter;
    throw v0
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    .restart local p1    # "obj":Ljava/lang/Object;
    .restart local p2    # "toLHS":Z
    .restart local p3    # "callstack":Lbsh/CallStack;
    .restart local p4    # "interpreter":Lbsh/Interpreter;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Lbsh/TargetError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    const/4 v6, 0x1

    const-string/jumbo v2, "target exception"

    move-object v1, v7

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw v7

    .line 123
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 125
    .local v0, "e":Lbsh/ReflectError;
    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reflection error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
