.class Lbsh/Types;
.super Ljava/lang/Object;
.source "Types.java"


# static fields
.field static final ASSIGNMENT:I = 0x1

.field static final BSH_ASSIGNABLE:I = 0x4

.field static final CAST:I = 0x0

.field static final FIRST_ROUND_ASSIGNABLE:I = 0x1

.field static INVALID_CAST:Lbsh/Primitive; = null

.field static final JAVA_BASE_ASSIGNABLE:I = 0x1

.field static final JAVA_BOX_TYPES_ASSIGABLE:I = 0x2

.field static final JAVA_VARARGS_ASSIGNABLE:I = 0x3

.field static final LAST_ROUND_ASSIGNABLE:I = 0x4

.field static VALID_CAST:Lbsh/Primitive;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lbsh/Primitive;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    sput-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    .line 64
    new-instance v0, Lbsh/Primitive;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    sput-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static areSignaturesEqual([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .param p0, "from"    # [Ljava/lang/Class;
    .param p1, "to"    # [Ljava/lang/Class;

    .line 132
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 133
    return v2

    .line 135
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 136
    aget-object v1, p0, v0

    aget-object v3, p1, v0

    if-eq v1, v3, :cond_1

    .line 137
    return v2

    .line 135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;
    .locals 2
    .param p0, "lhsType"    # Ljava/lang/Class;
    .param p1, "rhsType"    # Ljava/lang/Class;
    .param p2, "operation"    # I

    .line 523
    nop

    .line 524
    invoke-static {p0}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {p1}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {v0, v1, p2}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    return-object v0
.end method

.method static castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;
    .locals 4
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;
    .param p2, "operation"    # I

    .line 531
    const-string v0, " to "

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 532
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t assign "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 535
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot cast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 537
    .local v0, "cce":Ljava/lang/Exception;
    new-instance v1, Lbsh/UtilTargetError;

    invoke-direct {v1, v0}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static castObject(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 3
    .param p0, "toType"    # Ljava/lang/Class;
    .param p1, "fromType"    # Ljava/lang/Class;
    .param p2, "fromValue"    # Ljava/lang/Object;
    .param p3, "operation"    # I
    .param p4, "checkOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 395
    if-eqz p4, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast params 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    :goto_0
    if-nez p4, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 398
    :cond_2
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast params 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_3
    :goto_1
    const-class v0, Lbsh/Primitive;

    if-eq p1, v0, :cond_1f

    .line 401
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v0, :cond_5

    if-nez p1, :cond_4

    goto :goto_2

    .line 402
    :cond_4
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_5
    :goto_2
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v0, :cond_7

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    goto :goto_3

    .line 404
    :cond_6
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_7
    :goto_3
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1e

    .line 409
    if-eqz p0, :cond_1c

    if-ne p0, p1, :cond_8

    goto/16 :goto_c

    .line 414
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 416
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_d

    if-eqz p1, :cond_d

    .line 417
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    .line 425
    :cond_9
    invoke-static {p1}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 431
    invoke-static {p1}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 433
    .local v0, "unboxedFromType":Ljava/lang/Class;
    if-eqz p4, :cond_a

    .line 434
    const/4 v1, 0x0

    .local v1, "primFromValue":Lbsh/Primitive;
    goto :goto_4

    .line 436
    .end local v1    # "primFromValue":Lbsh/Primitive;
    :cond_a
    invoke-static {p2, v0}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/Primitive;

    .line 439
    .restart local v1    # "primFromValue":Lbsh/Primitive;
    :goto_4
    invoke-static {p0, v0, v1, p4, p3}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v2

    return-object v2

    .line 445
    .end local v0    # "unboxedFromType":Ljava/lang/Class;
    .end local v1    # "primFromValue":Lbsh/Primitive;
    :cond_b
    if-eqz p4, :cond_c

    .line 446
    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    return-object v0

    .line 448
    :cond_c
    invoke-static {p0, p1, p3}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    .line 420
    :cond_d
    :goto_5
    move-object v0, p2

    check-cast v0, Lbsh/Primitive;

    invoke-static {p0, p1, v0, p4, p3}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    return-object v0

    .line 456
    :cond_e
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_17

    if-eqz p1, :cond_17

    .line 457
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_9

    .line 489
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 490
    if-eqz p4, :cond_10

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_6

    :cond_10
    move-object v0, p2

    :goto_6
    return-object v0

    .line 495
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_13

    const-class v0, Lbsh/This;

    .line 496
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 497
    invoke-static {}, Lbsh/Capabilities;->canGenerateInterfaces()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 499
    if-eqz p4, :cond_12

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_7

    :cond_12
    move-object v0, p2

    check-cast v0, Lbsh/This;

    .line 500
    invoke-virtual {v0, p0}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_7
    return-object v0

    .line 504
    :cond_13
    invoke-static {p0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 505
    invoke-static {p1}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 507
    if-eqz p4, :cond_14

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_8

    .line 508
    :cond_14
    invoke-static {p0, p2}, Lbsh/Primitive;->castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0

    .line 510
    :cond_15
    if-eqz p4, :cond_16

    .line 511
    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    return-object v0

    .line 513
    :cond_16
    invoke-static {p0, p1, p3}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    .line 460
    :cond_17
    :goto_9
    invoke-static {p0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_19

    if-eqz p1, :cond_19

    .line 464
    if-eqz p4, :cond_18

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_a

    .line 466
    :cond_18
    invoke-static {p0}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lbsh/Primitive;

    .line 467
    invoke-virtual {v1}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 465
    invoke-static {v0, v1}, Lbsh/Primitive;->castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    .line 471
    :cond_19
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1b

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1b

    if-eqz p1, :cond_1b

    .line 475
    if-eqz p4, :cond_1a

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_b

    :cond_1a
    move-object v0, p2

    check-cast v0, Lbsh/Primitive;

    .line 476
    invoke-virtual {v0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_b
    return-object v0

    .line 482
    :cond_1b
    move-object v0, p2

    check-cast v0, Lbsh/Primitive;

    invoke-static {p0, p1, v0, p4, p3}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    return-object v0

    .line 410
    :cond_1c
    :goto_c
    if-eqz p4, :cond_1d

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_d

    :cond_1d
    move-object v0, p2

    :goto_d
    return-object v0

    .line 406
    :cond_1e
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "loose toType should be null"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_1f
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad from Type, need to unwrap"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2
    .param p0, "fromValue"    # Ljava/lang/Object;
    .param p1, "toType"    # Ljava/lang/Class;
    .param p2, "operation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 312
    if-eqz p0, :cond_1

    .line 315
    instance-of v0, p0, Lbsh/Primitive;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lbsh/Primitive;

    .line 317
    invoke-virtual {v0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    nop

    .line 320
    .local v0, "fromType":Ljava/lang/Class;
    const/4 v1, 0x0

    invoke-static {p1, v0, p0, p2, v1}, Lbsh/Types;->castObject(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 313
    .end local v0    # "fromType":Ljava/lang/Class;
    :cond_1
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null fromValue"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .param p0, "args"    # [Ljava/lang/Object;

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    return-object v0

    .line 74
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    .line 76
    .local v0, "types":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 78
    aget-object v2, p0, v1

    if-nez v2, :cond_1

    .line 79
    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_1

    .line 81
    :cond_1
    aget-object v2, p0, v1

    instance-of v2, v2, Lbsh/Primitive;

    if-eqz v2, :cond_2

    .line 82
    aget-object v2, p0, v1

    check-cast v2, Lbsh/Primitive;

    invoke-virtual {v2}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 84
    :cond_2
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 76
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method static isBshAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .param p0, "toType"    # Ljava/lang/Class;
    .param p1, "fromType"    # Ljava/lang/Class;

    .line 279
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v0, v1, v1}, Lbsh/Types;->castObject(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 283
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Lbsh/UtilEvalError;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err in cast check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isJavaAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "lhsType"    # Ljava/lang/Class;
    .param p1, "rhsType"    # Ljava/lang/Class;

    .line 174
    invoke-static {p0, p1}, Lbsh/Types;->isJavaBaseAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-static {p0, p1}, Lbsh/Types;->isJavaBoxTypesAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isJavaBaseAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .param p0, "lhsType"    # Ljava/lang/Class;
    .param p1, "rhsType"    # Ljava/lang/Class;

    .line 192
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 193
    return v0

    .line 197
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 198
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 200
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 202
    if-ne p0, p1, :cond_2

    .line 203
    return v1

    .line 206
    :cond_2
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_4

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_4

    .line 210
    :cond_3
    return v1

    .line 212
    :cond_4
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_6

    .line 215
    :cond_5
    return v1

    .line 217
    :cond_6
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_8

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_7

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_7

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_8

    .line 220
    :cond_7
    return v1

    .line 222
    :cond_8
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_9

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_9

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_a

    .line 225
    :cond_9
    return v1

    .line 227
    :cond_a
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_c

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_b

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_c

    .line 229
    :cond_b
    return v1

    .line 231
    :cond_c
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_e

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_e

    .line 232
    return v1

    .line 235
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 236
    return v1

    .line 238
    :cond_e
    return v0
.end method

.method static isJavaBoxTypesAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .param p0, "lhsType"    # Ljava/lang/Class;
    .param p1, "rhsType"    # Ljava/lang/Class;

    .line 248
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 249
    return v0

    .line 252
    :cond_0
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    .line 253
    return v2

    .line 256
    :cond_1
    const-class v1, Ljava/lang/Number;

    if-ne p0, v1, :cond_2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2

    .line 260
    return v2

    .line 266
    :cond_2
    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 267
    return v2

    .line 269
    :cond_3
    return v0
.end method

.method static isSignatureAssignable([Ljava/lang/Class;[Ljava/lang/Class;I)Z
    .locals 5
    .param p0, "from"    # [Ljava/lang/Class;
    .param p1, "to"    # [Ljava/lang/Class;
    .param p2, "round"    # I

    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 122
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad case"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 118
    aget-object v3, p1, v2

    aget-object v4, p0, v2

    invoke-static {v3, v4}, Lbsh/Types;->isBshAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    return v0

    .line 117
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_2
    return v1

    .line 115
    :pswitch_1
    invoke-static {p0, p1}, Lbsh/Types;->isSignatureVarargsAssignable([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 110
    :pswitch_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 111
    aget-object v3, p1, v2

    aget-object v4, p0, v2

    invoke-static {v3, v4}, Lbsh/Types;->isJavaBoxTypesAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 112
    return v0

    .line 110
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    .end local v2    # "i":I
    :cond_4
    return v1

    .line 105
    :pswitch_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 106
    aget-object v3, p1, v2

    aget-object v4, p0, v2

    invoke-static {v3, v4}, Lbsh/Types;->isJavaBaseAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 107
    return v0

    .line 105
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    .end local v2    # "i":I
    :cond_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isSignatureVarargsAssignable([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 1
    .param p0, "from"    # [Ljava/lang/Class;
    .param p1, "to"    # [Ljava/lang/Class;

    .line 145
    const/4 v0, 0x0

    return v0
.end method
