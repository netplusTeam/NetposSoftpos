.class Lbsh/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static FINISHED:Ljava/lang/String;


# instance fields
.field asClass:Ljava/lang/Class;

.field private callstackDepth:I

.field classOfStaticMethod:Ljava/lang/Class;

.field private evalBaseObject:Ljava/lang/Object;

.field private evalName:Ljava/lang/String;

.field private lastEvalName:Ljava/lang/String;

.field public namespace:Lbsh/NameSpace;

.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lbsh/Name;->FINISHED:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lbsh/NameSpace;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Lbsh/NameSpace;
    .param p2, "s"    # Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Name;->value:Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    .line 152
    iput-object p2, p0, Lbsh/Name;->value:Ljava/lang/String;

    .line 153
    return-void
.end method

.method private completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "lastEvalName"    # Ljava/lang/String;
    .param p2, "nextEvalName"    # Ljava/lang/String;
    .param p3, "returnObject"    # Ljava/lang/Object;

    .line 208
    if-eqz p3, :cond_0

    .line 210
    iput-object p1, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    .line 213
    return-object p3

    .line 209
    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastEvalName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consumeNextObjectField(Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;
    .locals 8
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "forceClass"    # Z
    .param p4, "autoAllocateThis"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 236
    iget-object v3, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iget-object v5, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lbsh/Name;->resolveThisFieldReference(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 239
    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    sget-object v2, Lbsh/Name;->FINISHED:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 248
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbsh/Name;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "varName":Ljava/lang/String;
    iget-object v2, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-eqz v2, :cond_1

    instance-of v2, v2, Lbsh/This;

    if-eqz v2, :cond_5

    :cond_1
    if-nez p3, :cond_5

    .line 252
    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trying to resolve variable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 257
    :cond_2
    iget-object v2, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 258
    iget-object v4, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lbsh/Name;->resolveThisFieldReference(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .local v2, "obj":Ljava/lang/Object;
    goto :goto_0

    .line 261
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_3
    check-cast v2, Lbsh/This;

    iget-object v4, v2, Lbsh/This;->namespace:Lbsh/NameSpace;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lbsh/Name;->resolveThisFieldReference(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 266
    .restart local v2    # "obj":Ljava/lang/Object;
    :goto_0
    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v2, v3, :cond_5

    .line 269
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolved variable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in namespace: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 273
    :cond_4
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v1}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 281
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_5
    iget-object v2, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-nez v2, :cond_a

    .line 283
    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trying class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 289
    :cond_6
    const/4 v2, 0x0

    .line 290
    .local v2, "clas":Ljava/lang/Class;
    const/4 v3, 0x1

    .line 291
    .local v3, "i":I
    const/4 v4, 0x0

    .line 292
    .local v4, "className":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v5}, Lbsh/Name;->countParts(Ljava/lang/String;)I

    move-result v5

    if-gt v3, v5, :cond_8

    .line 294
    iget-object v5, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v5, v3}, Lbsh/Name;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 295
    iget-object v5, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v5, v4}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v2, v5

    if-eqz v5, :cond_7

    .line 296
    goto :goto_2

    .line 292
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 299
    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 300
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    .line 302
    invoke-static {v1}, Lbsh/Name;->countParts(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v1, v5}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lbsh/ClassIdentifier;

    invoke-direct {v5, v2}, Lbsh/ClassIdentifier;-><init>(Ljava/lang/Class;)V

    .line 300
    invoke-direct {p0, v4, v1, v5}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 307
    :cond_9
    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_a

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not a class, trying var prefix "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 313
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v3    # "i":I
    .end local v4    # "className":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-eqz v2, :cond_b

    instance-of v3, v2, Lbsh/This;

    if-eqz v3, :cond_e

    :cond_b
    if-nez p3, :cond_e

    if-eqz p4, :cond_e

    .line 316
    if-nez v2, :cond_c

    iget-object v2, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    goto :goto_3

    :cond_c
    check-cast v2, Lbsh/This;

    iget-object v2, v2, Lbsh/This;->namespace:Lbsh/NameSpace;

    .line 319
    .local v2, "targetNameSpace":Lbsh/NameSpace;
    :goto_3
    new-instance v3, Lbsh/NameSpace;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v3, p2}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v3

    .line 321
    .local v3, "obj":Ljava/lang/Object;
    iget-object v4, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v4, :cond_d

    goto :goto_4

    :cond_d
    move v1, v5

    :goto_4
    invoke-virtual {v2, v0, v3, v5, v1}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 322
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v1}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 333
    .end local v2    # "targetNameSpace":Lbsh/NameSpace;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_e
    if-nez v2, :cond_10

    .line 334
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 335
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    sget-object v2, Lbsh/Name;->FINISHED:Ljava/lang/String;

    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    invoke-direct {p0, v1, v2, v3}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 337
    :cond_f
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class or variable not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_10
    sget-object v3, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq v2, v3, :cond_1d

    .line 356
    iget-object v2, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v2, v3, :cond_1c

    .line 360
    iget-object v2, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    instance-of v3, v2, Lbsh/Primitive;

    if-nez v3, :cond_1b

    .line 368
    instance-of v3, v2, Lbsh/ClassIdentifier;

    if-eqz v3, :cond_18

    .line 370
    check-cast v2, Lbsh/ClassIdentifier;

    invoke-virtual {v2}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v2

    .line 371
    .local v2, "clas":Ljava/lang/Class;
    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v3, v1}, Lbsh/Name;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "field":Ljava/lang/String;
    const-string/jumbo v3, "this"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 378
    iget-object v3, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    .line 379
    .local v3, "ns":Lbsh/NameSpace;
    :goto_5
    if-eqz v3, :cond_12

    .line 382
    iget-object v4, v3, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    if-eqz v4, :cond_11

    iget-object v4, v3, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    .line 383
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v2, :cond_11

    .line 385
    iget-object v4, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    .line 386
    invoke-static {v4}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    .line 385
    invoke-direct {p0, v1, v4, v5}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 387
    :cond_11
    invoke-virtual {v3}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v3

    goto :goto_5

    .line 389
    :cond_12
    new-instance v4, Lbsh/UtilEvalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find enclosing \'this\' instance of class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    .end local v3    # "ns":Lbsh/NameSpace;
    :cond_13
    const/4 v3, 0x0

    .line 396
    .local v3, "obj":Ljava/lang/Object;
    :try_start_0
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_14

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name call to getStaticFieldValue, class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", field:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 399
    :cond_14
    invoke-static {v2, v1}, Lbsh/Reflect;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 403
    goto :goto_6

    .line 400
    :catch_0
    move-exception v4

    .line 401
    .local v4, "e":Lbsh/ReflectError;
    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_15

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "field reflect error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 406
    .end local v4    # "e":Lbsh/ReflectError;
    :cond_15
    :goto_6
    if-nez v3, :cond_16

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "iclass":Ljava/lang/String;
    iget-object v5, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v5, v4}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 409
    .local v5, "c":Ljava/lang/Class;
    if-eqz v5, :cond_16

    .line 410
    new-instance v6, Lbsh/ClassIdentifier;

    invoke-direct {v6, v5}, Lbsh/ClassIdentifier;-><init>(Ljava/lang/Class;)V

    move-object v3, v6

    .line 413
    .end local v4    # "iclass":Ljava/lang/String;
    .end local v5    # "c":Ljava/lang/Class;
    :cond_16
    if-eqz v3, :cond_17

    .line 418
    iget-object v4, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v4}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v3}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 414
    :cond_17
    new-instance v4, Lbsh/UtilEvalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No static field or inner class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 425
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_18
    if-nez p3, :cond_1a

    .line 433
    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v2, v1}, Lbsh/Name;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 436
    .restart local v1    # "field":Ljava/lang/String;
    const-string v2, "length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 438
    new-instance v2, Lbsh/Primitive;

    iget-object v3, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {v2, v3}, Lbsh/Primitive;-><init>(I)V

    .line 439
    .local v2, "obj":Ljava/lang/Object;
    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v3}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 445
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_19
    :try_start_1
    iget-object v2, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    invoke-static {v2, v1}, Lbsh/Reflect;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 446
    .restart local v2    # "obj":Ljava/lang/Object;
    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v3}, Lbsh/Name;->suffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lbsh/Name;->completeRound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Lbsh/ReflectError; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 447
    .end local v2    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 450
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot access field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", on object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    .end local v1    # "field":Ljava/lang/String;
    :cond_1a
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not resolve to a class name."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_1b
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t treat primitive like an object. Error while evaluating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_1c
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined variable or class name while evaluating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_1d
    new-instance v1, Lbsh/UtilTargetError;

    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null Pointer while evaluating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static countParts(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 1002
    if-nez p0, :cond_0

    .line 1003
    const/4 v0, 0x0

    return v0

    .line 1005
    :cond_0
    const/4 v0, 0x0

    .line 1006
    .local v0, "count":I
    const/4 v1, -0x1

    .line 1007
    .local v1, "index":I
    :goto_0
    const/16 v2, 0x2e

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1009
    :cond_1
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method static getClassNameSpace(Lbsh/NameSpace;)Lbsh/NameSpace;
    .locals 1
    .param p0, "thisNameSpace"    # Lbsh/NameSpace;

    .line 604
    iget-boolean v0, p0, Lbsh/NameSpace;->isClass:Z

    if-eqz v0, :cond_0

    .line 605
    return-object p0

    .line 607
    :cond_0
    iget-boolean v0, p0, Lbsh/NameSpace;->isMethod:Z

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    iget-boolean v0, v0, Lbsh/NameSpace;->isClass:Z

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    return-object v0

    .line 614
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private invokeLocalMethod(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 19
    .param p1, "interpreter"    # Lbsh/Interpreter;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "callerInfo"    # Lbsh/SimpleNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 891
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "Local method invocation"

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeLocalMethod: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v1, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 893
    :cond_0
    if-eqz v2, :cond_6

    .line 897
    iget-object v7, v1, Lbsh/Name;->value:Ljava/lang/String;

    .line 898
    .local v7, "commandName":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v8

    .line 901
    .local v8, "argTypes":[Ljava/lang/Class;
    const/4 v9, 0x0

    .line 903
    .local v9, "meth":Lbsh/BshMethod;
    :try_start_0
    iget-object v0, v1, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v0, v7, v8}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_3

    move-object v9, v0

    .line 907
    nop

    .line 910
    if-eqz v9, :cond_1

    .line 911
    invoke-virtual {v9, v3, v2, v4, v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 913
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v10

    .line 919
    .local v10, "bcm":Lbsh/BshClassManager;
    :try_start_1
    iget-object v0, v1, Lbsh/Name;->namespace:Lbsh/NameSpace;

    invoke-virtual {v0, v7, v8, v2}, Lbsh/NameSpace;->getCommand(Ljava/lang/String;[Ljava/lang/Class;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v11, v0

    .line 924
    .local v11, "commandObject":Ljava/lang/Object;
    nop

    .line 927
    if-nez v11, :cond_3

    .line 932
    const/4 v12, 0x0

    .line 934
    .local v12, "invokeMethod":Lbsh/BshMethod;
    :try_start_2
    iget-object v0, v1, Lbsh/Name;->namespace:Lbsh/NameSpace;

    const-string v13, "invoke"

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Class;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const/16 v18, 0x1

    aput-object v16, v15, v18

    invoke-virtual {v0, v13, v15}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_0

    .line 939
    .end local v12    # "invokeMethod":Lbsh/BshMethod;
    .local v0, "invokeMethod":Lbsh/BshMethod;
    nop

    .line 941
    if-eqz v0, :cond_2

    .line 942
    new-array v6, v14, [Ljava/lang/Object;

    aput-object v7, v6, v17

    aput-object v3, v6, v18

    invoke-virtual {v0, v6, v2, v4, v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 946
    :cond_2
    new-instance v6, Lbsh/EvalError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Command not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 947
    invoke-static {v7, v8}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12, v5, v4}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v6

    .line 936
    .end local v0    # "invokeMethod":Lbsh/BshMethod;
    .restart local v12    # "invokeMethod":Lbsh/BshMethod;
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Lbsh/UtilEvalError;
    invoke-virtual {v0, v6, v5, v4}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v6

    throw v6

    .line 951
    .end local v0    # "e":Lbsh/UtilEvalError;
    .end local v12    # "invokeMethod":Lbsh/BshMethod;
    :cond_3
    instance-of v0, v11, Lbsh/BshMethod;

    if-eqz v0, :cond_4

    .line 952
    move-object v0, v11

    check-cast v0, Lbsh/BshMethod;

    invoke-virtual {v0, v3, v2, v4, v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 955
    :cond_4
    instance-of v0, v11, Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 957
    :try_start_3
    move-object v0, v11

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v3, v2, v4}, Lbsh/Reflect;->invokeCompiledCommand(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    .line 959
    :catch_1
    move-exception v0

    .line 960
    .restart local v0    # "e":Lbsh/UtilEvalError;
    const-string v6, "Error invoking compiled command: "

    invoke-virtual {v0, v6, v5, v4}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v6

    throw v6

    .line 964
    .end local v0    # "e":Lbsh/UtilEvalError;
    :cond_5
    new-instance v0, Lbsh/InterpreterError;

    const-string v6, "invalid command type"

    invoke-direct {v0, v6}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    .end local v11    # "commandObject":Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 922
    .restart local v0    # "e":Lbsh/UtilEvalError;
    const-string v6, "Error loading command: "

    invoke-virtual {v0, v6, v5, v4}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v6

    throw v6

    .line 904
    .end local v0    # "e":Lbsh/UtilEvalError;
    .end local v10    # "bcm":Lbsh/BshClassManager;
    :catch_3
    move-exception v0

    .line 905
    .restart local v0    # "e":Lbsh/UtilEvalError;
    invoke-virtual {v0, v6, v5, v4}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v6

    throw v6

    .line 894
    .end local v0    # "e":Lbsh/UtilEvalError;
    .end local v7    # "commandName":Ljava/lang/String;
    .end local v8    # "argTypes":[Ljava/lang/Class;
    .end local v9    # "meth":Lbsh/BshMethod;
    :cond_6
    new-instance v0, Lbsh/InterpreterError;

    const-string v6, "invokeLocalMethod: interpreter = null"

    invoke-direct {v0, v6}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isCompound(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 996
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 1014
    invoke-static {p0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    const/4 v0, 0x0

    return-object v0

    .line 1017
    :cond_0
    invoke-static {p0}, Lbsh/Name;->countParts(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lbsh/Name;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static prefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parts"    # I

    .line 1022
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1023
    const/4 v0, 0x0

    return-object v0

    .line 1025
    :cond_0
    const/4 v0, 0x0

    .line 1026
    .local v0, "count":I
    const/4 v1, -0x1

    .line 1028
    .local v1, "index":I
    :goto_0
    const/16 v2, 0x2e

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p1, :cond_1

    goto :goto_0

    .line 1032
    :cond_1
    if-ne v1, v3, :cond_2

    move-object v2, p0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method private reset()V
    .locals 1

    .line 138
    iget-object v0, p0, Lbsh/Name;->value:Ljava/lang/String;

    iput-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lbsh/Name;->callstackDepth:I

    .line 141
    return-void
.end method

.method static suffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1037
    invoke-static {p0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    const/4 v0, 0x0

    return-object v0

    .line 1040
    :cond_0
    invoke-static {p0}, Lbsh/Name;->countParts(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static suffix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parts"    # I

    .line 1045
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1046
    const/4 v0, 0x0

    return-object v0

    .line 1048
    :cond_0
    const/4 v1, 0x0

    .line 1049
    .local v1, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 1051
    .local v2, "index":I
    :goto_0
    const/16 v0, 0x2e

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    move v2, v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_1

    .line 1052
    goto :goto_0

    .line 1054
    :cond_1
    if-ne v2, v3, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public invokeMethod(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 16
    .param p1, "interpreter"    # Lbsh/Interpreter;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "callerInfo"    # Lbsh/SimpleNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/EvalError;,
            Lbsh/ReflectError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 784
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v1, v0, Lbsh/Name;->value:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 785
    .local v9, "methodName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v10

    .line 786
    .local v10, "bcm":Lbsh/BshClassManager;
    invoke-virtual/range {p3 .. p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v11

    .line 791
    .local v11, "namespace":Lbsh/NameSpace;
    iget-object v1, v0, Lbsh/Name;->classOfStaticMethod:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 793
    invoke-static {v10, v1, v9, v8}, Lbsh/Reflect;->invokeStaticMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 797
    :cond_0
    iget-object v1, v0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-static {v1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 798
    invoke-direct/range {p0 .. p4}, Lbsh/Name;->invokeLocalMethod(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 807
    :cond_1
    iget-object v1, v0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-static {v1}, Lbsh/Name;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 810
    .local v12, "prefix":Ljava/lang/String;
    const-string/jumbo v1, "super"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-static {v1}, Lbsh/Name;->countParts(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 813
    invoke-virtual {v11, v7}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v1

    .line 814
    .local v1, "ths":Lbsh/This;
    invoke-virtual {v1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v2

    .line 815
    .local v2, "thisNameSpace":Lbsh/NameSpace;
    invoke-static {v2}, Lbsh/Name;->getClassNameSpace(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-result-object v3

    .line 816
    .local v3, "classNameSpace":Lbsh/NameSpace;
    if-eqz v3, :cond_2

    .line 818
    invoke-virtual {v3}, Lbsh/NameSpace;->getClassInstance()Ljava/lang/Object;

    move-result-object v4

    .line 819
    .local v4, "instance":Ljava/lang/Object;
    invoke-static {}, Lbsh/ClassGenerator;->getClassGenerator()Lbsh/ClassGenerator;

    move-result-object v5

    .line 820
    invoke-virtual {v5, v10, v4, v9, v8}, Lbsh/ClassGenerator;->invokeSuperclassMethod(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 825
    .end local v1    # "ths":Lbsh/This;
    .end local v2    # "thisNameSpace":Lbsh/NameSpace;
    .end local v3    # "classNameSpace":Lbsh/NameSpace;
    .end local v4    # "instance":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v11, v12}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v13

    .line 826
    .local v13, "targetName":Lbsh/Name;
    move-object/from16 v14, p3

    invoke-virtual {v13, v14, v7}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v15

    .line 828
    .local v15, "obj":Ljava/lang/Object;
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v15, v1, :cond_8

    .line 833
    instance-of v1, v15, Lbsh/ClassIdentifier;

    if-nez v1, :cond_5

    .line 835
    instance-of v1, v15, Lbsh/Primitive;

    if-eqz v1, :cond_4

    .line 837
    sget-object v1, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq v15, v1, :cond_3

    .line 845
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 846
    const-string v1, "Attempt to access method on primitive... allowing bsh.Primitive to peek through for debugging"

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_3
    new-instance v1, Lbsh/UtilTargetError;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Null Pointer in Method Invocation"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 852
    :cond_4
    :goto_0
    move-object v1, v15

    move-object v2, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lbsh/Reflect;->invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 859
    :cond_5
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeMethod: trying static - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 862
    :cond_6
    move-object v1, v15

    check-cast v1, Lbsh/ClassIdentifier;

    invoke-virtual {v1}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    .line 865
    .local v1, "clas":Ljava/lang/Class;
    iput-object v1, v0, Lbsh/Name;->classOfStaticMethod:Ljava/lang/Class;

    .line 867
    if-eqz v1, :cond_7

    .line 868
    invoke-static {v10, v1, v9, v8}, Lbsh/Reflect;->invokeStaticMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 871
    :cond_7
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeMethod: unknown target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    .end local v1    # "clas":Ljava/lang/Class;
    :cond_8
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to resolve method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() on undefined variable or class name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method resolveThisFieldReference(Lbsh/CallStack;Lbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "thisNameSpace"    # Lbsh/NameSpace;
    .param p3, "interpreter"    # Lbsh/Interpreter;
    .param p4, "varName"    # Ljava/lang/String;
    .param p5, "specialFieldsVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 475
    const-string/jumbo v0, "this"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 483
    if-nez p5, :cond_2

    .line 489
    invoke-virtual {p2, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    .line 490
    .local v0, "ths":Lbsh/This;
    invoke-virtual {v0}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object p2

    .line 491
    move-object v1, v0

    .line 493
    .local v1, "result":Ljava/lang/Object;
    invoke-static {p2}, Lbsh/Name;->getClassNameSpace(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-result-object v2

    .line 494
    .local v2, "classNameSpace":Lbsh/NameSpace;
    if-eqz v2, :cond_1

    .line 496
    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v3}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    invoke-virtual {v2, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v1

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {v2}, Lbsh/NameSpace;->getClassInstance()Ljava/lang/Object;

    move-result-object v1

    .line 502
    :cond_1
    :goto_0
    return-object v1

    .line 484
    .end local v0    # "ths":Lbsh/This;
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "classNameSpace":Lbsh/NameSpace;
    :cond_2
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Redundant to call .this on This type"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_3
    const-string/jumbo v1, "super"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 516
    invoke-virtual {p2, p3}, Lbsh/NameSpace;->getSuper(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    .line 517
    .restart local v0    # "ths":Lbsh/This;
    invoke-virtual {v0}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object p2

    .line 524
    nop

    .line 525
    invoke-virtual {p2}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 526
    invoke-virtual {p2}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v1

    iget-boolean v1, v1, Lbsh/NameSpace;->isClass:Z

    if-eqz v1, :cond_4

    .line 528
    invoke-virtual {p2}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v1

    invoke-virtual {v1, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    .line 530
    :cond_4
    return-object v0

    .line 533
    .end local v0    # "ths":Lbsh/This;
    :cond_5
    const/4 v1, 0x0

    .line 535
    .local v1, "obj":Ljava/lang/Object;
    const-string v2, "global"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 536
    invoke-virtual {p2, p3}, Lbsh/NameSpace;->getGlobal(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v1

    .line 538
    :cond_6
    if-nez v1, :cond_b

    if-eqz p5, :cond_b

    .line 540
    const-string v2, "namespace"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 541
    move-object v1, p2

    goto :goto_1

    .line 542
    :cond_7
    const-string/jumbo v2, "variables"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 543
    invoke-virtual {p2}, Lbsh/NameSpace;->getVariableNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 544
    :cond_8
    const-string v2, "methods"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 545
    invoke-virtual {p2}, Lbsh/NameSpace;->getMethodNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 546
    :cond_9
    const-string v2, "interpreter"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 547
    iget-object v2, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 548
    move-object v1, p3

    goto :goto_1

    .line 550
    :cond_a
    new-instance v0, Lbsh/UtilEvalError;

    const-string v2, "Can only call .interpreter on literal \'this\'"

    invoke-direct {v0, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_b
    :goto_1
    const-string v2, "no callstack"

    const/4 v3, 0x1

    if-nez v1, :cond_f

    if-eqz p5, :cond_f

    const-string v4, "caller"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 556
    iget-object v5, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    .line 565
    :cond_c
    new-instance v0, Lbsh/UtilEvalError;

    const-string v2, "Can only call .caller on literal \'this\' or literal \'.caller\'"

    invoke-direct {v0, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_d
    :goto_2
    if-eqz p1, :cond_e

    .line 561
    iget v0, p0, Lbsh/Name;->callstackDepth:I

    add-int/2addr v0, v3

    iput v0, p0, Lbsh/Name;->callstackDepth:I

    invoke-virtual {p1, v0}, Lbsh/CallStack;->get(I)Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    .line 569
    .end local v1    # "obj":Ljava/lang/Object;
    .local v0, "obj":Ljava/lang/Object;
    return-object v0

    .line 560
    .end local v0    # "obj":Ljava/lang/Object;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_e
    new-instance v0, Lbsh/InterpreterError;

    invoke-direct {v0, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_f
    if-nez v1, :cond_12

    if-eqz p5, :cond_12

    .line 573
    const-string v4, "callstack"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 575
    iget-object v4, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 578
    if-eqz p1, :cond_10

    .line 580
    move-object v1, p1

    goto :goto_3

    .line 579
    :cond_10
    new-instance v0, Lbsh/InterpreterError;

    invoke-direct {v0, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_11
    new-instance v0, Lbsh/UtilEvalError;

    const-string v2, "Can only call .callstack on literal \'this\'"

    invoke-direct {v0, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_12
    :goto_3
    if-nez v1, :cond_14

    .line 589
    iget-object v0, p0, Lbsh/Name;->evalBaseObject:Ljava/lang/Object;

    if-nez v0, :cond_13

    goto :goto_4

    :cond_13
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p2, p4, v3}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 591
    :cond_14
    if-eqz v1, :cond_15

    .line 594
    return-object v1

    .line 592
    :cond_15
    new-instance v0, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null this field ref:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized toClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lbsh/UtilEvalError;
        }
    .end annotation

    monitor-enter p0

    .line 628
    :try_start_0
    iget-object v0, p0, Lbsh/Name;->asClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 629
    monitor-exit p0

    return-object v0

    .line 631
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lbsh/Name;->reset()V

    .line 634
    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string/jumbo v1, "var"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 635
    iput-object v1, p0, Lbsh/Name;->asClass:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 638
    .end local p0    # "this":Lbsh/Name;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 640
    .local v0, "clas":Ljava/lang/Class;
    if-nez v0, :cond_2

    .line 646
    const/4 v2, 0x0

    .line 650
    .local v2, "obj":Ljava/lang/Object;
    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {p0, v1, v1, v3}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v1

    goto :goto_0

    .line 651
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 653
    :try_start_4
    instance-of v1, v2, Lbsh/ClassIdentifier;

    if-eqz v1, :cond_2

    .line 654
    move-object v1, v2

    check-cast v1, Lbsh/ClassIdentifier;

    invoke-virtual {v1}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 657
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    if-eqz v0, :cond_3

    .line 661
    iput-object v0, p0, Lbsh/Name;->asClass:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 662
    monitor-exit p0

    return-object v0

    .line 658
    :cond_3
    :try_start_5
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in namespace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 627
    .end local v0    # "clas":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;
    .locals 5
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    monitor-enter p0

    .line 672
    :try_start_0
    invoke-direct {p0}, Lbsh/Name;->reset()V

    .line 676
    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v0}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 678
    iget-object v0, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string/jumbo v2, "this"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    new-instance v0, Lbsh/LHS;

    iget-object v2, p0, Lbsh/Name;->namespace:Lbsh/NameSpace;

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lbsh/LHS;-><init>(Lbsh/NameSpace;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    .local v0, "lhs":Lbsh/LHS;
    monitor-exit p0

    return-object v0

    .line 679
    .end local v0    # "lhs":Lbsh/LHS;
    .end local p0    # "this":Lbsh/Name;
    :cond_0
    :try_start_1
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can\'t assign to \'this\'."

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    :cond_1
    const/4 v0, 0x0

    .line 689
    .local v0, "obj":Ljava/lang/Object;
    :goto_0
    :try_start_2
    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-static {v2}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 691
    invoke-direct {p0, p1, p2, v1, v3}, Lbsh/Name;->consumeNextObjectField(Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 697
    :cond_2
    nop

    .line 700
    :try_start_3
    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    if-nez v2, :cond_4

    instance-of v4, v0, Lbsh/ClassIdentifier;

    if-nez v4, :cond_3

    goto :goto_1

    .line 701
    :cond_3
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t assign to class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 703
    :cond_4
    :goto_1
    if-eqz v0, :cond_a

    .line 707
    instance-of v4, v0, Lbsh/This;

    if-eqz v4, :cond_7

    .line 710
    const-string v4, "namespace"

    .line 711
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string/jumbo v4, "variables"

    .line 712
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string v4, "methods"

    .line 713
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    const-string v4, "caller"

    .line 714
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 719
    const-string v2, "found This reference evaluating LHS"

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 730
    iget-object v2, p0, Lbsh/Name;->lastEvalName:Ljava/lang/String;

    const-string/jumbo v4, "super"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v1, v3

    .line 731
    .local v1, "localVar":Z
    :cond_5
    new-instance v2, Lbsh/LHS;

    move-object v3, v0

    check-cast v3, Lbsh/This;

    iget-object v3, v3, Lbsh/This;->namespace:Lbsh/NameSpace;

    iget-object v4, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lbsh/LHS;-><init>(Lbsh/NameSpace;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    .line 716
    .end local v1    # "localVar":Z
    :cond_6
    :try_start_4
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t assign to special variable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 734
    :cond_7
    if-eqz v2, :cond_9

    .line 737
    :try_start_5
    instance-of v1, v0, Lbsh/ClassIdentifier;

    if-eqz v1, :cond_8

    .line 739
    move-object v1, v0

    check-cast v1, Lbsh/ClassIdentifier;

    invoke-virtual {v1}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    .line 740
    .local v1, "clas":Ljava/lang/Class;
    iget-object v2, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    invoke-static {v1, v2}, Lbsh/Reflect;->getLHSStaticField(Ljava/lang/Class;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v2
    :try_end_5
    .catch Lbsh/ReflectError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 741
    .local v2, "lhs":Lbsh/LHS;
    monitor-exit p0

    return-object v2

    .line 743
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v2    # "lhs":Lbsh/LHS;
    :cond_8
    :try_start_6
    invoke-static {v0, v2}, Lbsh/Reflect;->getLHSObjectField(Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v1
    :try_end_6
    .catch Lbsh/ReflectError; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 744
    .local v1, "lhs":Lbsh/LHS;
    monitor-exit p0

    return-object v1

    .line 746
    .end local v1    # "lhs":Lbsh/LHS;
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Lbsh/ReflectError;
    :try_start_7
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field access: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 751
    .end local v1    # "e":Lbsh/ReflectError;
    :cond_9
    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "Internal error in lhs..."

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 704
    :cond_a
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in LHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsh/Name;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    :catch_1
    move-exception v1

    .line 696
    .local v1, "e":Lbsh/UtilEvalError;
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LHS evaluation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 671
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "e":Lbsh/UtilEvalError;
    .end local p1    # "callstack":Lbsh/CallStack;
    .end local p2    # "interpreter":Lbsh/Interpreter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "forceClass"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-direct {p0}, Lbsh/Name;->reset()V

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "obj":Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lbsh/Name;->evalName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lbsh/Name;->consumeNextObjectField(Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 199
    .end local p0    # "this":Lbsh/Name;
    :cond_0
    if-eqz v0, :cond_1

    .line 202
    monitor-exit p0

    return-object v0

    .line 200
    :cond_1
    :try_start_1
    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "null value in toObject()"

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v0    # "obj":Ljava/lang/Object;
    .end local p1    # "callstack":Lbsh/CallStack;
    .end local p2    # "interpreter":Lbsh/Interpreter;
    .end local p3    # "forceClass":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1060
    iget-object v0, p0, Lbsh/Name;->value:Ljava/lang/String;

    return-object v0
.end method
